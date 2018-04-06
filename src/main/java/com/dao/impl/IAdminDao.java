package com.dao.impl;

import com.pojo.Admin;

public interface IAdminDao {
	Admin login(String name,String password);

}
