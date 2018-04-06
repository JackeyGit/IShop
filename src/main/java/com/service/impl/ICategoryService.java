package com.service.impl;

import java.util.List;

import com.pojo.Category;

public interface ICategoryService {
	

	
	List<Category>  findOneLevel();
	

	List<Category>  find2Level(String name);
	
	
	
}
