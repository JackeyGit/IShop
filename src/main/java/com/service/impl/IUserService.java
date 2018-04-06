package com.service.impl;

import java.util.List;

import com.pojo.User;
import com.util.Page;
public interface IUserService {
	/**
	 * �û�����
	 * 
	 */
	void userRegister(User user);
	void  deleteUser(int id);
	void deleteManyUser(Integer[] ids);
	void updateUserById(User user);
	User findUserByID(int id);
	Page findAllUser(int nowpage,int pageszie);
	List<User> getAllUser(int nowpage,int pageszie);
	List<User> userExist(String name);
	User login(String username,String password);

}
