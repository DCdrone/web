package com.dc.service;


import com.dc.entity.Blog;
import com.dc.util.GridBean;
public interface BlogService {
	public Blog getByBlogId(Integer id);
	public Boolean updateByBlogId(int id, String title, String summary, String content);
	public int createBlog(int user_id, String title, String summary);
	public GridBean list(int pageNum, int pageSize, Blog blog);
	public boolean deleteByBlogId(int blog_id);
}

