package com.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dao.impl.IAdminDao;
import com.pojo.Admin;

public class AdminDao implements IAdminDao {
	SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	public Admin login(String name, String password) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("name", name);
		map.put("password", password);
		Admin admin=sqlSession.selectOne(Admin.class.getName()+".login" , map);
		
		return admin;
	}

}
