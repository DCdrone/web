package com.dc.service.Impl;

import java.util.List;
import com.dc.entity.topnews;
import com.dc.dao.topnewsMapper;
import javax.annotation.Resource;
import org.springframework.stereotype.Component;
import com.dc.service.*;

@Component
public class TopnewsServiceImpl implements TopnewsService {
	@Resource
	private topnewsMapper topnews;
	
	public List<topnews> getAllTopnews() {
		return this.topnews.getAll();
	}
}
