package com.dc.service.Impl;


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
}
