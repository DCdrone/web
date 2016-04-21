package com.dc.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class Security implements HandlerInterceptor {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
	    // intercept
	    String username = (String) request.getSession().getAttribute("username");
    	String requestUri = request.getRequestURI();
    	String[] urls = requestUri.split("/");
    	String urluser = (String) urls[urls.length-1];
    	//System.out.println("---------------------------");
    	//System.out.println(username);
    	//System.out.println(urluser);
	    if (username == null || username.equals(urluser)==false) {    
	    	//System.out.println("Are we exceptions?");
	        throw new AuthorizationException();
	    } else {
	    	//System.out.println(requestUri);
	        return true;
	    }
	}

	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub
		
	}
}
