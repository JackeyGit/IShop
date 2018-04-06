package com.service;

import com.dao.impl.IAdminDao;
import com.pojo.Admin;
import com.service.impl.IAdminService;

public class AdminService implements IAdminService{

	private IAdminDao adminDao;
	public void setAdminDao(IAdminDao adminDao) {
		this.adminDao = adminDao;
	}
	
	public Admin login(String name, String password) {
		Admin admin =adminDao.login(name, password);
		
		return admin;
	}

}
