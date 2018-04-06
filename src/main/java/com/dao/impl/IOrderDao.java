package com.dao.impl;

import java.util.List;

import com.pojo.Order;


public interface IOrderDao {

	void addOrder(Order order);
	
	
	Order findOrderById(int id);
	
	int findAllRecords();
	
	int findRecordsById(int id);
	
	List<Order> findOrder(int sid ,int eid);
	
	void deleteOrder(int id);
	void updateOrder(int id);
	
	
}
