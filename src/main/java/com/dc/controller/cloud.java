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
public class cloud {
	
	@Resource
	pressService pressService;

	@RequestMapping("/cloud")
	public ModelAndView mainPage(HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView view = new ModelAndView("cloud_index");
		return view;

	}
	
	@RequestMapping(value = "/cloud/getPress", method = { RequestMethod.GET },produces="application/json;charset=UTF-8")
	@ResponseBody
	public Map<String,Object> getPress(HttpServletRequest request,HttpServletResponse response) throws IOException{  
        //System.out.println(request.getParameter("title"));  
        Map<String,Object> map = new HashMap<String,Object>(1);  
        press press = this.pressService.getByTitle(request.getParameter("title"));
        //System.out.println(press.getContext());
        map.put("msg", JSONArray.fromObject(press));
        //System.out.println("Finished");
        return map;  
    }  
}

