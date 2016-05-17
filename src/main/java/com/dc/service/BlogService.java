package com.dc.service;


import com.dc.entity.Blog;
import com.dc.util.GridBean;
public interface BlogService {
	public Blog getByBlogId(Integer id);
	public Boolean updateByBlogId(Integer id, String name, String summary, String content);
	public GridBean list(int pageNum, int pageSize, Blog blog);
}

