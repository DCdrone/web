package com.dc.dao;

import com.dc.entity.topnews;
import java.util.List;

public interface topnewsMapper {

	public List<topnews> getAll();
	public boolean deleteByBlogId(int blod_id);
}
