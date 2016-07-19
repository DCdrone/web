package com.dc.controller;

//import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

//import org.apache.log4j.Logger;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import net.sf.json.JSONArray;
import com.dc.service.TopnewsService;
import com.dc.entity.*;
import java.util.List;

/**
 * @Title: 
 * @Package 
 * @Description: 
 * @author 
 * @date 
 * @version 
 */

@Controller
public class index {
	
	@Resource
	TopnewsService topnewsService;

	@RequestMapping("/")
	public ModelAndView mainPage(HttpServletRequest request,
			HttpServletResponse response) {

		ModelAndView view = new ModelAndView("index");
		List<topnews> news = this.topnewsService.getAllTopnews();
		List<Blog> blogs = this.topnewsService.getLatestBlogs();
		view.addObject("topNews", JSONArray.fromObject(news));
		view.addObject("latestBlogs", JSONArray.fromObject(blogs));
		return view;
	}
}

