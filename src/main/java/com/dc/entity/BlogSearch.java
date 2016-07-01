package com.dc.entity;

import com.dc.entity.Blog;
public class BlogSearch {
	private Blog blog;
	private Integer pageNum;
	public BlogSearch() {}
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
	
	//private Integer author;
	/*private Integer pageNum;
	public BlogSearch() {}*/
	/*public Integer getAuthor () {
		return this.author;
	}
	public void setAuthor (Integer author) {
		this.author = author;
	}*/
	/*public Integer getPageNum() {
		return this.pageNum;
	}
	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}*/
}
