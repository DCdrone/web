package com.dc.service;


import com.dc.entity.Blog;
public interface BlogService {
	public Blog getByBlogId(Integer id);
	public Boolean updateByBlogId(Integer id, String name, String content);
}

