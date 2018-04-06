package com.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dao.impl.IOrderDao;
import com.pojo.Order;

public class OrderDao implements IOrderDao {
	
	SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	public void addOrder(Order order) {
	SqlSession sqlSession =sqlSessionFactory.openSession();
	sqlSession.insert(Order.class.getName()+".addOrder", order);
	sqlSession.close();
	}

	public void deleteOrder(int id) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		sqlSession.delete(Order.class.getName()+".deleteOrder", id);
		sqlSession.close();
		
	}
	
	public int findAllRecords() {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		int records=sqlSession.selectOne(Order.class.getName()+".allVCRecords");
		sqlSession.close();
		return records;
	}
	
	
	public int findRecordsById(int id) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		int records=sqlSession.selectOne(Order.class.getName()+".allRecordsById",id);
		sqlSession.close();
		return records;
			
	}
	
	
	public List<Order> findOrder(int sid, int eid) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		Map<String, Object> map =new HashMap<String,Object>();
		map.put("stid", sid);
		map.put("enid", eid);
		List<Order> Orders =sqlSession.selectList(Order.class.getName()+".findAllVC", map);
		sqlSession.close();
		return Orders;
	}

	
	public void updateOrder(int id) {
		
	}

	
	public Order findOrderById(int id) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		Order vColl=sqlSession.selectOne(Order.class.getName()+".findOrderById",id);
		sqlSession.close();
		return vColl;
	}



	

}
