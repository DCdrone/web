package com.dc.controller;

//import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

//import org.apache.log4j.Logger;
import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;  
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import java.io.IOException;

import org.springframework.web.bind.annotation.PathVariable;

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
@RequestMapping("/author")
public class author {
	
	@RequestMapping("/")
	public ModelAndView mainPage(HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView view = new ModelAndView("redirect:/author/11");
		return view;
	}
	
	@RequestMapping(value = "/{id}")
	public ModelAndView dashboard(@PathVariable String id, HttpServletRequest request,HttpServletResponse response) throws IOException{  
         
        ModelAndView view = new ModelAndView("author");
        view.addObject("author", id);     
        return view;  
    }  
	
	@RequestMapping(value = "/{id}/blog")
	public ModelAndView blogList(@PathVariable String id, HttpServletRequest request,HttpServletResponse response) throws IOException{  
         
        ModelAndView view = new ModelAndView("blog");
        view.addObject("author", id);     
        return view;  
    } 
	
	@RequestMapping(value = "/{id}/blog/{blogid}")
	public ModelAndView blogEdit(@PathVariable String id, @PathVariable String blogid, HttpServletRequest request,HttpServletResponse response) throws IOException{  
         
        ModelAndView view = new ModelAndView("blogedit");
        view.addObject("author", id);
        view.addObject("blog", id); 
        return view; 
    } 
	
	
	//以下的资源是restful的接口，他们不返回视图，用于ajax调用，进行相应的资源更新。
	//由于处在author目录下，这些访问都受到保护
	@RequestMapping(value = "/{authorid}/resources/blog/{blogid}", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String,Integer> updateBlog(@RequestBody String body) throws IOException{
		Map<String,Integer> map = new HashMap<String,Integer>(1);
		//String content = request.getParameter("content");;
		System.out.println(body.toString());
		System.out.println("------------------------------------------");
		//System.out.println(request.getParameter("content"));
		System.out.println(body);
        //press press = this.pressService.getByTitle(request.getParameter("title"));
        map.put("msg", 0);
        //System.out.println("Finished");
        return map;  
	}
	
}

