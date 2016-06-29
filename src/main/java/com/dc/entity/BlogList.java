package com.dc.entity;

import com.dc.entity.*;
public class BlogList {
	private Blog blog;
	private Integer pageNum;
	public BlogList() {}
	public Blog getBlog () {
		return this.blog;
	}
	public void setBlog (Blog blog) {
		this.blog = blog;
	}
	public Integer getPageNum() {
		return this.pageNum;
	}
	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}
	
}
