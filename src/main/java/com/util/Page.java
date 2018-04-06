package com.util;
	import java.util.ArrayList;
import java.util.List;



import com.pojo.Order;
import com.pojo.Product;
import com.pojo.User;
/**
	 * ��ҳ��
	 * @author huangyiit@163.com
	 */
	public class Page {	
		private Integer currPageNO;//当前页面
		private Integer pageSize;//页面的大小
		private Integer allRecordNO;//所有记录数
		private Integer allPageNO;//所有页面数
		private List<User> userlistList =new ArrayList<User>();//每页的人数
		private List<Product> productliList = new ArrayList<Product>();
		private List<Order> orderList = new ArrayList<Order>();
		public List<Product> getProductliList() {
			return productliList;
		}
		public void setProductliList(List<Product> productliList) {
			this.productliList = productliList;
		}
		public List<Order> getOrderList() {
			return orderList;
		}
		public void setOrderList(List<Order> orderList) {
			this.orderList = orderList;
		}
		public Page(){}
		public Integer getCurrPageNO() {
			return currPageNO;
		}
		public void setCurrPageNO(Integer currPageNO) {
			this.currPageNO = currPageNO;
		}
		
		public Integer getAllRecordNO() {
			return allRecordNO;
		}
		public void setAllRecordNO(Integer allRecordNO) {
			this.allRecordNO = allRecordNO;
		}
		public Integer getAllPageNO() {
			return allPageNO;
		}
		public void setAllPageNO(Integer allPageNO) {
			this.allPageNO = allPageNO;
		}
		
		public Integer getPageSize() {
			return pageSize;
		}
		public void setPageSize(Integer pageSize) {
			this.pageSize = pageSize;
		}
		public void setUserlistList(List<User> userlistList) {
			this.userlistList = userlistList;
		}
		public List<User> getUserlistList() {
			return userlistList;
		}
	
		
	}

	

