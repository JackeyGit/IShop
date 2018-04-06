package com.service;

import java.util.List;

import com.dao.CategoryDao;
import com.pojo.Category;
import com.service.impl.ICategoryService;

public class CategoryService implements ICategoryService{
	private CategoryDao categoryDao;
	public void setCategoryDao(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}

	

	public List<Category> findOneLevel() {
		return categoryDao.findOneLevel();
	}

	public List<Category> find2Level(String name) {
		return categoryDao.find2Level(name);
	}


}
