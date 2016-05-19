package com.dc.service.Impl;


import java.util.Date;
import java.util.List;

import com.dc.util.GridBean;
import com.dc.entity.Blog;
import com.dc.dao.BlogMapper;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.dc.service.*;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

@Component
public class BlogServiceImpl implements BlogService {
	@Resource
	private BlogMapper blogMapper;
	
	public Blog getByBlogId(Integer id) {
		return this.blogMapper.getByBlogId(id);
	}
	
	public Boolean updateByBlogId(Integer blog_id, String title, String summary, String content) {
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
}
