package com.dc.entity;
import java.util.Date;

public class topnews {
     private Integer id;
     private String title;
     private String summary;
     private String author;
     private String picture;
     private int blog_id;
     private Date updated_time;
     
     public void setId(Integer id) {
    	 this.id = id;
     }
     
     public Integer getId() {
    	 return id;
     }
     
     public void setTitle(String title) {
    	 this.title = title;
     }
     
     public String getTitle() {
    	 return title;
     }
     
     public void setSummary(String summary) {
    	 this.summary = summary;
     }
     
     public String getSummary() {
    	 return summary;
     }
     
     public void setAuthor(String author) {
    	 this.author = author;
     }
     
     public String getAuthor() {
    	 return author;
     }
     
     public void setPicture(String picture) {
    	 this.picture = picture;
     }
     
     public String getPicture() {
    	 return picture;
     }
     
     public void setBlog_id(int blog_id) {
    	 this.blog_id = blog_id;
     }
     
     public int getBlog_id() {
    	 return blog_id;
     }
     
     public void setUpdated_time(Date updated_time) {
    	 this.updated_time = updated_time;
     }
     
     public Date getUpdated_time() {
    	 return updated_time;
     }
     
}
