package com.dc.dao;

import java.util.List;

import com.dc.entity.Blog;

public interface BlogMapper {

	public Blog getByBlogId(Integer blog_id);
	public Boolean updateByBlogId(Blog blog);
	public List<Blog> selectAll(Blog blog);
}
