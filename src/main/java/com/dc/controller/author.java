package com.dc.controller;

//import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

import com.dc.util.*;

import java.util.HashMap;  
import java.util.List;
import java.util.Map;


import java.io.IOException;

import org.springframework.web.bind.annotation.PathVariable;

import com.dc.entity.Blog;
import com.dc.entity.BlogSearch;
import com.dc.service.BlogService;
import com.dc.service.TopnewsService;
import com.dc.entity.topnews;


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
	
	@Resource
	TopnewsService topnewsService;
	
	@RequestMapping("/")
	public ModelAndView mainPage(HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView view = new ModelAndView("redirect:/author/11");
		return view;
	}
	
	@RequestMapping(value = "/{authorid}")
	public ModelAndView dashboard(@PathVariable String authorid, HttpServletRequest request,HttpServletResponse response) throws IOException{  
        ModelAndView view = new ModelAndView("author");
        view.addObject("author", authorid);     
        return view;  
    }  
	
	@RequestMapping(value = "/{authorid}/blog")
	public ModelAndView blogList(@PathVariable String authorid, HttpServletRequest request,HttpServletResponse response) throws IOException{  
		//System.out.println("------TTT------\n");
        //Blog blog = new Blog();
        //blog.setUser_id(Integer.parseInt(id));
       
		//GridBean gridBean = blogService.list(1, 10, blog);
		//System.out.println("---------------");
		//System.out.println(gridBean.getRows());
		ModelAndView view = new ModelAndView("blog");
        view.addObject("author", authorid);   
        //view.addObject("blogList", JSONArray.fromObject(gridBean)); 
        return view;  
    } 
	
	@RequestMapping(value = "/{authorid}/resources/bloglist", method = { RequestMethod.POST }, produces="application/json;charset=UTF-8")
	@ResponseBody
	public Map<String,Object> listBlog(@PathVariable String authorid,@Valid @RequestBody BlogSearch blogSearch) throws IOException{
		Map<String,Object> map = new HashMap<String,Object>(1);
		Blog blog = new Blog(Integer.parseInt(authorid));
		blogSearch.getBlog().setUser_id(Integer.parseInt(authorid));
		GridBean gridBean = blogService.list(blogSearch.getPageNum(), 5, blog);
		map.put("msg", gridBean);
        return map;  
	}

	@RequestMapping(value = "/{id}/blog/{blogid}")
	public ModelAndView blogEdit(@PathVariable String id, @PathVariable String blogid, HttpServletRequest request,HttpServletResponse response) throws IOException{  
         
        ModelAndView view = new ModelAndView("blogedit");
        view.addObject("author", id);
        view.addObject("blog", blogid); 
        return view; 
    } 
	
	@RequestMapping(value = "/{id}/resources/blog/{blogid}/delete")
	public ModelAndView blogDelete(@PathVariable String id, @PathVariable String blogid, HttpServletRequest request,HttpServletResponse response) throws IOException{  
		blogService.deleteByBlogId(Integer.parseInt(blogid));
        ModelAndView view = new ModelAndView("blog");
        view.addObject("author", id); 
        return view; 
    } 
	
	
	@RequestMapping(value = "/{authorid}/resources/blog", method = { RequestMethod.POST })
	public ModelAndView blogCreate(@PathVariable String authorid, HttpServletRequest request, HttpServletResponse response) {
		String title = request.getParameter("title");
	    String summary = request.getParameter("summary");
	    
	    /*System.out.println("-----------------------");
	    System.out.println(title);
	    System.out.println(summary);*/
	    int blog_id = this.blogService.createBlog(Integer.parseInt(authorid), title, summary);
	    if ( blog_id != 0) {
		    ModelAndView view = new ModelAndView("redirect:/author/"+authorid+"/blog/"+blog_id);
		    return view;
	    }
	    else {
	    	ModelAndView view = new ModelAndView("redirect:/author/"+authorid+"/blog");
	    	return view;
	    }	
	}
	
	
	@RequestMapping(value = "/{authorid}/resources/blog/{blogid}", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String,Integer> updateBlog(@PathVariable String authorid, @PathVariable Integer blogid,@Valid @RequestBody Blog blog) throws IOException{
		Map<String,Integer> map = new HashMap<String,Integer>(1);
		//System.out.println("--------------"+blogid);
		//System.out.println(blog.getName());
		//System.out.println(blog.getContent());
		blogService.updateByBlogId(blogid, blog.getTitle(), blog.getSummary(), blog.getContent());
        map.put("msg", 0);
        return map;  
	}
	
	@RequestMapping(value = "/{authorid}/resources/recommendedlist", method = { RequestMethod.POST }, produces="application/json;charset=UTF-8")
	@ResponseBody
	public Map<String,List<topnews>> listRecommended(@PathVariable String authorid) throws IOException{
		Map<String,List<topnews>> map = new HashMap<String,List<topnews>>(1);
		List<topnews> blogs = topnewsService.getAllTopnews();
		map.put("msg", blogs);
        return map;  
	}
	
	@RequestMapping(value = "/{authorid}/resources/topnews/{blogid}/delete", method = { RequestMethod.POST }, produces="application/json;charset=UTF-8")
	@ResponseBody
	public Map<String,List<topnews>> deleteTopnews(@PathVariable String authorid, @PathVariable Integer blogid) throws IOException{
		System.out.println("XXXXXXXXXXXXXXXXXXXX");
		Map<String,List<topnews>> map = new HashMap<String,List<topnews>>(1);
		topnewsService.deleteByBlogId(blogid);
		List<topnews> blogs = topnewsService.getAllTopnews();
		map.put("msg", blogs);
        return map;  
	}	
}

