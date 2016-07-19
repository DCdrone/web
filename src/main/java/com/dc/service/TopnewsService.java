package com.dc.service;

import java.util.List;
import com.dc.entity.topnews;
import com.dc.entity.Blog;
public interface TopnewsService {
	public List<topnews> getAllTopnews();
	public List<Blog> getLatestBlogs();
}

