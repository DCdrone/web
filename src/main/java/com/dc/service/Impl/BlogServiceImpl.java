package com.dc.service.Impl;


import java.util.Date;
import java.util.List;

import com.dc.util.GridBean;
import com.dc.entity.Blog;
import com.dc.entity.author;
import com.dc.dao.BlogMapper;
import com.dc.dao.authorMapper;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.dc.service.*;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import java.util.Random;

@Component
public class BlogServiceImpl implements BlogService {
	@Resource
	private BlogMapper blogMapper;
	@Resource
	private authorMapper authorMapper;
	
	public Blog getByBlogId(Integer id) {
		return this.blogMapper.getByBlogId(id);
	}
	
	public Boolean updateByBlogId(int blog_id, String title, String summary, String content) {
        Date updated_time = new Date();
        Blog blog = new Blog();
        blog.setContent(content);
        blog.setTitle(title);
        blog.setBlog_id(blog_id);
        blog.setUpdated_time(updated_time);
        blog.setSummary(summary);
        return this.blogMapper.updateByBlogId(blog);
	}
	
	public GridBean list(int pageNum, int pageSize, Blog blog) {		
		PageHelper.startPage(pageNum, pageSize);

		List<Blog> blogs = null;
		GridBean gridbean = null;
		try {
			blogs = blogMapper.selectAll(blog);
			int total = ((Page<?>) blogs).getPages();
			int records = (int) ((Page<?>) blogs).getTotal();
			gridbean = new GridBean(pageNum, total, records, blogs);
		} catch (Exception e) {
			System.out.println("Error while get gridBean:"+e);
		}

		return gridbean;
	}
	
	 public int createBlog(int user_id, String title, String summary) {
		 //author author = this.authorMapper.getByUser_id(user_id);
		 Date updated_time = new Date();
		 Date created_time = new Date();
		 Blog blog = new Blog();
		 blog.setTitle(title);
		 blog.setSummary(summary);
		 blog.setUpdated_time(updated_time);
		 blog.setCreated_time(created_time);
		 blog.setDeleted(0);
		 blog.setUser_id(user_id);
		 //blog.setUser_name(author.getName());
		 	
		 int blog_id = getRandom(1,2147483647);
		 blog.setBlog_id(blog_id);
		 if (this.blogMapper.createBlog(blog)==true) {
		     return blog_id;
		 }
		 else {
			 return 0;
		 }
	 }
	 
	 public static int getRandom(int max) {
	     return new Random().nextInt(max);
	 }

	 public static int getRandom(int min, int max) {
	 int r = getRandom(max - min);
	 return r + min;
	 }
	 
	 
}
