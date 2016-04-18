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
import com.dc.service.pressService;
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
	
	@RequestMapping(value="/login" )
	public ModelAndView loginPage(HttpServletRequest request, HttpServletResponse response) {
		String username = (String) request.getSession().getAttribute("username");
		//System.out.println("Is it running?");
		//System.out.println("---------"+username);
		if (username != null ) {
			//System.out.println("Is it running222?");
			ModelAndView view = new ModelAndView("redirect:/author/"+username);
			return view;
		}
		ModelAndView view = new ModelAndView("login");
		return view;
	}
	
	@RequestMapping(value="/login.do")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
		//System.out.println("Is it running?");
		String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    //System.out.print(username);
	    //System.out.print(password);
	    request.getSession().setAttribute("username", username);
		ModelAndView view = new ModelAndView("redirect:/author/"+username);
		return view;
	}
}

