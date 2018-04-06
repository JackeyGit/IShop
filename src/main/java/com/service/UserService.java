package com.service;

import java.util.List;

import com.dao.impl.IUserDao;
import com.pojo.User;
import com.service.impl.IUserService;
import com.util.Page;

public class UserService implements IUserService {
	private IUserDao userDao;
	public void setUserDao(IUserDao userDao) {
	this.userDao = userDao;
}
	
	
	public void userRegister(User user) {
		userDao.addUser(user);
		
	}
	
	public void deleteUser(int id) {
		userDao.deleteUser(id);
	}

	
	public void updateUserById(User user ) {
		userDao.updateUserById(user);
		
	}
	
	public User findUserByID(int id) {
		User user =	userDao.findUserByID(id);
		return user;
	}
	

	
	public void deleteManyUser(Integer[] ids) {
		userDao.deleteManyUser(ids);
	}
	
	public Page findAllUser(int nowpage,int pageszie) {
		Page page =new Page();
		
		//设置当前页面
		page.setCurrPageNO(nowpage);
		
		//所有记录数
		page.setAllRecordNO(userDao.allRecords());
		Integer records=page.getAllRecordNO();
		
		//10
		//final int PAGESIZE=15;
		page.setPageSize(pageszie);
		Integer size=page.getPageSize();
		
		/*//��װ��ҳ��
		Integer pageNO = null;
		if(records % size == 0){
			pageNO = records / size;
		}else{
			pageNO = records / size + 1;
		}
		page.setAllPageNO(pageNO);*/
		
		//��װÿҳ��ʾ������
		//0-9,9-11,11-
		/**
		 * MySQL��ҳ
		 * 1 1-10,2 11-20
		 *1 0,10
		 *2 10,10
		 *3 20,10
		 * 
		 */
		
		/*Integer start= (size * (page.getCurrPageNO()-1));*/
		/*Integer start=
		
		Integer end =size;*/
		
		
		
		
	/* Oracle��ҳ
	 * 	Integer start= (size * (page.getCurrPageNO()-1));
		Integer end=(page.getCurrPageNO()*size+1);*/
		
		//ÿҳ��ʾ������
		List<User> userlList=userDao.findAllUser(nowpage, pageszie);
		page.setUserlistList(userlList);
		return page;
	}



	
	
	public List<User> userExist(String name) {
		List<User> user = userDao.userExist(name);
		return user;
	}

	
	public User login(String username, String password) {
		System.out.println("����"+username+password);
		User user=userDao.login(username, password);
		return user;
	}

	
	public List<User> getAllUser(int nowpage, int pageszie) {
		Page page =new Page();
		//��װ��ǰҳ��1
		page.setCurrPageNO(nowpage);
		//��װ�ܼ�¼��
		page.setAllRecordNO(userDao.allRecords());
		Integer records=page.getAllRecordNO();
		//��װÿҳ��ʾ�����10
		page.setPageSize(pageszie);
		Integer size=page.getPageSize();
		//��װ��ҳ��
		Integer pageNO = null;
		if(records % size == 0){
			pageNO = records / size;
		}else{
			pageNO = records / size + 1;
		}
		page.setAllPageNO(pageNO);
		Integer start= (size * (page.getCurrPageNO()-1));
		Integer end =size;
		//ÿҳ��ʾ������
		List<User> userlList=userDao.findAllUser(start, end);
		return userlList;
	}
		
}



	


	





