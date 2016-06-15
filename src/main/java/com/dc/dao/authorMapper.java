package com.dc.dao;

import com.dc.entity.author;

public interface authorMapper {

	public author getByName(String name);
	public author getByUser_id(Integer user_id);
}
