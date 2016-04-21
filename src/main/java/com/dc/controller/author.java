package com.dc.controller;

//import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

//import org.apache.log4j.Logger;
import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.HashMap;  
import java.util.Map;
import net.sf.json.JSONArray;
import java.io.IOException;
import org.springframework.web.bind.annotation.PathVariable;

import com.dc.service.TopnewsService;
import com.dc.service.pressService;
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
public class author {
	
	@RequestMapping("/author")
	public ModelAndView mainPage(HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView view = new ModelAndView("redirect:/author/11");
		return view;
	}
	
	@RequestMapping(value = "/author/{id}")
	public ModelAndView dashboard(@PathVariable String id, HttpServletRequest request,HttpServletResponse response) throws IOException{  
         
        ModelAndView view = new ModelAndView("author");
        view.addObject("author", id);     
        return view;  
    }  
	
	@RequestMapping(value = "/author/{id}/blog")
	public ModelAndView blogList(@PathVariable String id, HttpServletRequest request,HttpServletResponse response) throws IOException{  
         
        ModelAndView view = new ModelAndView("blog");
        view.addObject("author", id);     
        return view;  
    } 
	
	@RequestMapping(value = "/author/{id}/blog/{blogid}")
	public ModelAndView blogEdit(@PathVariable String id, @PathVariable String blogid, HttpServletRequest request,HttpServletResponse response) throws IOException{  
         
        ModelAndView view = new ModelAndView("blogedit");
        view.addObject("author", id);
        view.addObject("blog", id); 
        return view;  
    } 
}

