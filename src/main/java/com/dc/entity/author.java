package com.dc.entity;

import java.util.Date;

public class author {

    private String name;
    private String password;
    private Integer id;
    private Integer deleted;
    private Date created_time;
    private Integer user_id;
    
    public void setName(String name) {
   	 this.name = name;
    }
    
    public String getName() {
   	 return name;
    }
    
    public void setPassword(String password) {
   	 this.password = password;
    }
    
    public String getPassword() {
   	 return password;
    }
    
    public void setId(Integer id) {
    	this.id = id;
    }
    
    public Integer getId() {
    	return id;
    }
    
    public void setUser_id(Integer user_id) {
    	this.user_id = user_id;
    }
    
    public Integer getUser_id() {
    	return user_id;
    }
    
    public void setDeleted(Integer deleted) {
    	this.deleted = deleted;
    }
    
    public Integer getDeleted() {
    	return deleted;
    }
    
    public void setCreated_time(Date created_time) {
    	this.created_time = created_time;
    }
    
    public Date getCreated_time() {
    	return created_time;
    }
}