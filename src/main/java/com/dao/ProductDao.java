package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dao.impl.IProductDao;
import com.pojo.Product;

public class ProductDao implements IProductDao{
	SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	

	
	public void addProduct(Product product) {
	SqlSession sqlSession =sqlSessionFactory.openSession();
	sqlSession.insert(Product.class.getName()+".addProduct", product);
	sqlSession.close();
	}

	
	
	public List<Product> findProductByID(int id) {
		
		SqlSession sqlSession =sqlSessionFactory.openSession();
		List<Product> Products	=sqlSession.selectList(Product.class.getName()+".findProductById", id);
		sqlSession.close();
		return Products;
		
	}


	
	public void deleteProduct(int id) {
		// TODO Auto-generated method stub
		
	}


	
	public void deleteManyProduct(int[] ids) {
		// TODO Auto-generated method stub
		
	}


	
	public void updateProductById(int id) {
		// TODO Auto-generated method stub
		
	}


	
	public List<Product> findAllProduct(int start, int end) {
		// TODO Auto-generated method stub
		return null;
	}


	
	public int allRecords() {
		// TODO Auto-generated method stub
		return 0;
	}


	
	public List<Product> findProductByTypeId(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	




}
