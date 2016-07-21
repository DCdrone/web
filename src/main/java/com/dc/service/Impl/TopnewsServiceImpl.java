package com.dc.service.Impl;

import java.util.List;

import com.dc.entity.topnews;
import com.dc.dao.topnewsMapper;
import com.dc.dao.BlogMapper;
import com.dc.entity.Blog;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.dc.service.*;
import com.dc.util.GridBean;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

@Component
public class TopnewsServiceImpl implements TopnewsService {
	@Resource
	private topnewsMapper topnews;
	
	@Resource
	private BlogMapper blogMapper;
	
	public List<topnews> getAllTopnews() {
		return this.topnews.getAll();
	}
	
	public List<Blog> getLatestBlogs() {
		PageHelper.startPage(1, 20);

		List<Blog> blogs = null;
		Blog blog = new Blog();
		try {
			blogs = blogMapper.selectAll(blog);
		} catch (Exception e) {
			System.out.println("Error while get blogs:"+e);
		}
		return blogs;
	}
	
	public boolean deleteByBlogId(int blogid) {
		return this.topnews.deleteByBlogId(blogid);
	}
}
