package com.service;

import java.util.List;

import com.dao.impl.IOrderDao;
import com.pojo.Order;
import com.service.impl.IOrderService;
import com.util.Page;

public class OrderService implements IOrderService {
	private IOrderDao orderDao;
	public void setOrderDao(IOrderDao orderDao) {
		this.orderDao = orderDao;
	}
	
	
	public int findAllRecords() {
		
	return	orderDao.findAllRecords();
	}



	
	public int findRecordsById(int id) {
		return orderDao.findRecordsById(id);
	}
	
	
	public List<Order> findOrder(int pageszie,int nowpage) {
		Page page =new Page();
		//��װ��ǰҳ��1
		page.setCurrPageNO(nowpage);
		
		//��װ�ܼ�¼��
		page.setAllRecordNO(orderDao.findAllRecords());
		Integer records=page.getAllRecordNO();
		
		//��װÿҳ��ʾ�����20
		page.setPageSize(pageszie);
		Integer size=page.getPageSize();
		System.out.println(size);
		
		//��װ��ҳ��
		Integer pageNO = null;
		if(records % size == 0){
			pageNO = records / size;
		}else{
			pageNO = records / size + 1;
		}
		page.setAllPageNO(pageNO);
		
		//��װÿҳ��ʾ������
		//0-9,9-11,11-
		/**
		 * MySQL��ҳ
		 
		 *1ҳ 0,10
		 *2 10,10
		 *3 20,10
		 * 
		 */
		
		Integer sid= (size * (page.getCurrPageNO()-1));
		Integer eid =size;
		
		
		
		
/*	 Oracle��ҳ
	 * 	Integer start= (size * (page.getCurrPageNO()-1));
		Integer end=(page.getCurrPageNO()*size+1);*/
		
		//ÿҳ��ʾ������
		List<Order> orders=orderDao.findOrder(sid, eid);
	
		return orders;
	}
	
	
	

	
	
	
	
	public void addOrder(Order order) {
		orderDao.addOrder(order);
		System.out.println("---------------------------");
	}

	
	public void deleteOrder(int id) {
		orderDao.deleteOrder(id);

	}

	
	public void updateOrder(int id) {
		// TODO Auto-generated method stub

	}


	
	public Order findOrderById(int id) {
		return  orderDao.findOrderById(id);
	}


	
	public Page findAllOrders(int nowpage, int pageszie) {
		Page page =new Page();
		//��װ��ǰҳ��1
		page.setCurrPageNO(nowpage);
		
		//��װ�ܼ�¼��
		page.setAllRecordNO(orderDao.findAllRecords());
		Integer records=page.getAllRecordNO();
		
		//��װÿҳ��ʾ�����20
		page.setPageSize(pageszie);
		Integer size=page.getPageSize();
		System.out.println(size);
		
		//��װ��ҳ��
		Integer pageNO = null;
		if(records % size == 0){
			pageNO = records / size;
		}else{
			pageNO = records / size + 1;
		}
		page.setAllPageNO(pageNO);
		Integer sid= (size * (page.getCurrPageNO()-1));
		Integer eid =size;
		List<Order> orders=orderDao.findOrder(sid, eid);
		page.setOrderList(orders);
		return page;
	}


	






}
