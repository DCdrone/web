package com.dc.service.Impl;


import com.dc.entity.author;
import com.dc.dao.authorMapper;
import javax.annotation.Resource;
import org.springframework.stereotype.Component;
import com.dc.service.*;

@Component
public class authorServiceImpl implements authorService {
	@Resource
	private authorMapper authorMapper_i;
	
	public int getIdentity(String name, String password) {
		author author_i = authorMapper_i.getByName(name);
		if (author_i != null && author_i.getPassword().equals(password)) {
			return author_i.getUser_id();
		}
		else {
			return 0;
		}
	}
}
