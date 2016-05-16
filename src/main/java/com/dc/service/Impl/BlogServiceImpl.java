package com.dc.service.Impl;


import java.util.Date;

import com.dc.entity.Blog;
import com.dc.dao.BlogMapper;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.dc.service.*;

@Component
public class BlogServiceImpl implements BlogService {
	@Resource
	private BlogMapper blogMapper;
	
	public Blog getByBlogId(Integer id) {
		return this.blogMapper.getByBlogId(id);
	}
	
	public Boolean updateByBlogId(Integer blog_id, String name, String content) {
        Date updated_time = new Date();
        Blog blog = new Blog();
        blog.setContent(content);
        blog.setName(name);
        blog.setBlog_id(blog_id);
        blog.setUpdated_time(updated_time);
        return this.blogMapper.updateByBlogId(blog);
	}
}
