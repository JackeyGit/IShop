package com.pojo;

import java.util.Date;

public class Product {
	/*
	商品
	商品编号，
	商品名称，
	商品详情，
	商品主图，
	一级属类id，
	二级属类id，
	级属类id，
	价格，
	规格，
	库存，
	状态，
	时间
	*/

	 private int	 pid;
	 private String pname;
	 private String prodes;
	 private String	 photo;
	 private int	 categoryid1;
	 private int	 categoryid2;
	 private int	 categoryid3;
	 public int getCategoryid1() {
		return categoryid1;
	}
	public void setCategoryid1(int categoryid1) {
		this.categoryid1 = categoryid1;
	}
	public int getCategoryid2() {
		return categoryid2;
	}
	public void setCategoryid2(int categoryid2) {
		this.categoryid2 = categoryid2;
	}
	public int getCategoryid3() {
		return categoryid3;
	}
	public void setCategoryid3(int categoryid3) {
		this.categoryid3 = categoryid3;
	}
	private double	 price;
	 private int	property;
	 private int  	stock ;
	 private int   status;
	 private Date ptinme;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getProdes() {
		return prodes;
	}
	public void setProdes(String prodes) {
		this.prodes = prodes;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getProperty() {
		return property;
	}
	public void setProperty(int property) {
		this.property = property;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Date getPtinme() {
		return ptinme;
	}
	public void setPtinme(Date ptinme) {
		this.ptinme = ptinme;
	}
}
