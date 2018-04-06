package com.dao.impl;

import java.util.List;

import com.pojo.User;


public interface IUserDao {
	
	void addUser(User user);

	void  deleteUser(int id);
	void deleteManyUser(Integer[] ids);
	void updateUserById(User user);
	User findUserByID(int id);
	List<User> userExist(String name);
	User login(String username,String password);
	int allRecords();
	List<User> findAllUser(int start,int end);

}
