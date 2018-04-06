package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dao.impl.ICategoryDao;
import com.pojo.Category;

public class CategoryDao implements ICategoryDao {
	SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	public List<Category> findOneLevel() {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		List<Category> typelist = sqlSession.selectList(Category.class.getName()+".findOneType");
		sqlSession.close();
		return typelist;
	
	}

	public List<Category> find2Level(String name) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		List<Category> typelist= sqlSession.selectList(Category.class.getName()+".find2Type",name);
		sqlSession.close();
		return typelist;
	}
}
