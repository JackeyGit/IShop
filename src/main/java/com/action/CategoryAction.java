package com.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.Category;
import com.service.impl.ICategoryService;

@Controller
public class CategoryAction {
	private ICategoryService categoryService;
	@Resource(name="categoryServiceID")
	public void setCategoryService(ICategoryService categoryService) {
		this.categoryService = categoryService;
	}

	@RequestMapping(value="/findOneLevel")
	public @ResponseBody List<Category> findOneLevel() {
	
	List<Category> categorylist	=categoryService.findOneLevel();
	
	if (categorylist.size()>0) {
		
		for (int i = 0; i < categorylist.size(); i++) {
			
			System.out.println(categorylist.get(i).getCname());
		}
	}
	return categorylist;
		
	}
	
	
	@RequestMapping(value="/find2Category")
	public @ResponseBody List<Category> find2Category(String name) {
		List<Category> categorylist =categoryService.find2Level(name);
		return categorylist;
		
	}
	
	
}
