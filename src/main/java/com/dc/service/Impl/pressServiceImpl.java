package com.dc.service.Impl;


import com.dc.entity.press;
import com.dc.dao.pressMapper;
import javax.annotation.Resource;
import org.springframework.stereotype.Component;
import com.dc.service.*;

@Component
public class pressServiceImpl implements pressService {
	@Resource
	private pressMapper press;
	
	public press getByTitle(String title) {
		return this.press.getByTitle(title);
	}
}
