package com.dao.impl;

import java.util.List;

import com.pojo.Category;

public interface ICategoryDao {

	
	
	List<Category>  findOneLevel();
	

	List<Category>  find2Level(String name);
	

}
