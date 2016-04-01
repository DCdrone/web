package com.dc.entity;

public class topnews {
     private Integer id;
     private String title;
     private String abstracts;
     private String context;
     private String picture;     
     
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
     
     public void setAbstracts(String abstracts) {
    	 this.abstracts = abstracts;
     }
     
     public String getAbstracts() {
    	 return abstracts;
     }
     
     public void setContext(String context) {
    	 this.context = context;
     }
     
     public String getContext() {
    	 return context;
     }
     
     public void setPicture(String picture) {
    	 this.picture = picture;
     }
     
     public String getPicture() {
    	 return picture;
     }
     
     
}
