package com.service.impl;

import java.util.List;

import com.pojo.Order;
import com.util.Page;

public interface IOrderService {
	void addOrder(Order order);
	void deleteOrder(int id);
	void updateOrder(int id);
	
	int findAllRecords();
	
	int findRecordsById(int id);
	
   List<Order> findOrder(int sid ,int eid);
   Page findAllOrders(int sid,int eid);
   Order findOrderById(int id);
	
}
