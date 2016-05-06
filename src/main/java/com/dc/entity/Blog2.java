package com.dc.entity;


public class Blog2 {

    private String content;   
     
    public Blog2() {
    	this.content = "Nothing";
    	//System.out.println("I am in 1");
    }
    
    public Blog2(String content) {
    	this.content = content;
    	//System.out.println("I am in 2");
    }
    
    public void setContext(String content) {
   	 	this.content = content;
   	 	//System.out.println("I am in 3");
    }
    
    public String getContent() {
   	 	return content;
    }
   
    @Override
	public String toString() {
		return "Blog2" + this.content + "-----";
	}
    
}