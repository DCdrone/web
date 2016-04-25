package com.dc.controller;

//import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

//import org.apache.log4j.Logger;
import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;  
import java.util.Map;

import net.sf.json.JSONArray;

import java.io.IOException;

import org.springframework.web.bind.annotation.PathVariable;

import com.dc.service.TopnewsService;
import com.dc.service.authorService;
import com.dc.entity.*;

import java.util.List;

/**
 * @Title: 
 * @Package 
 * @Description: 
 * @author 
 * @date 
 * @version 
 */

@Controller
public class login {
	
	@Resource
	authorService authorService_i;
	
	@RequestMapping(value="/login" )
	public ModelAndView loginPage(HttpServletRequest request, HttpServletResponse response) {
		String userid = (String) request.getSession().getAttribute("userid");
		if (userid != null ) {
			ModelAndView view = new ModelAndView("redirect:/author/"+userid);
			return view;
		}
		ModelAndView view = new ModelAndView("login");
		return view;
	}
	
	@RequestMapping(value="/login.do")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
		String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    Integer userid = authorService_i.getIdentity(username, password);
	    if (userid == 0) {
	    	ModelAndView view = new ModelAndView("redirect:/error/loginerror");
	    	return view;
	    }
	    request.getSession().setAttribute("userid", userid.toString());
		ModelAndView view = new ModelAndView("redirect:/author/"+userid.toString());
		return view;
	}
	
	@RequestMapping(value="/logout" )
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().removeAttribute("userid");
		ModelAndView view = new ModelAndView("redirect:/login");
		return view;
	}
}

