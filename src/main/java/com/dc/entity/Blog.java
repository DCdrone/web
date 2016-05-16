package com.dc.entity;

import java.util.Date;
public class Blog {

    private Integer id;
    private Integer deleted;
	private String name;
	private Integer user_id;
	private Integer blog_id;
	private String tag;
    private Date created_time;
    private Date updated_time;
    private String content;   
    private String summary;
    
    public Blog() {
    	
    }   
    
    public void setId(Integer id) {
    	this.id = id;
    }
    
    public Integer getId() {
    	return id;
    }
    
    public void setDeleted(Integer deleted) {
    	this.deleted = deleted;
    }
    
    public Integer getDeleted() {
    	return deleted;
    }
    
    public void setName(String name) {
   	 this.name = name;
    }
    
    public String getName() {
   	 return name;
    }
    
    public void setSummary(String summary) {
      	 this.summary = summary;
       }
       
    public String getSummary() {
      	 return summary;
       }
    
    public void setUser_id(Integer user_id) {
    	this.user_id = user_id;
    }
    
    public Integer getUser_id() {
    	return user_id;
    }
    
    public void setTag(String tag) {
    	this.tag = tag;
    }
    
    public String getTag() {
    	return tag;
    }
    
    public void setBlog_id(Integer blog_id) {
    	this.blog_id = blog_id;
    }
    
    public Integer getBlog_id() {
    	return blog_id;
    }
    
    public void setCreated_time(Date created_time) {
    	this.created_time = created_time;
    }
    
    public Date getCreated_time() {
    	return created_time;
    }
    
    public void setUpdated_time(Date updated_time) {
   	 this.updated_time = updated_time;
    }
    
    public Date getUpdated_time() {
   	 return updated_time;
    }
    
    public void setContent(String content) {
   	 this.content = content;
    }
    
    public String getContent() {
   	 return content;
    }
   
    
}