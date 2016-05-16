package com.dc.controller;

//import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.annotation.Resource;

import java.util.HashMap;  
import java.util.Map;


import java.io.IOException;

import org.springframework.web.bind.annotation.PathVariable;

import com.dc.entity.*;
import com.dc.service.BlogService;


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
	
	@Resource
	BlogService blogService;
	
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
        view.addObject("blog", blogid); 
        return view; 
    } 
	
	
	//以下的资源是restful的接口，他们不返回视图，用于ajax调用，进行相应的资源更新。
	//由于处在author目录下，这些访问都受到保护
	@RequestMapping(value = "/{authorid}/resources/blog/{blogid}", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String,Integer> updateBlog(@PathVariable String authorid, @PathVariable Integer blogid,@Valid @RequestBody Blog blog) throws IOException{
		Map<String,Integer> map = new HashMap<String,Integer>(1);
		//System.out.println("--------------"+blogid);
		//System.out.println(blog.getName());
		//System.out.println(blog.getContent());
		blogService.updateByBlogId(blogid, blog.getName(), blog.getContent());
        map.put("msg", 0);
        return map;  
	}
	
}

