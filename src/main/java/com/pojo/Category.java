package com.pojo;


public class Category {
	/* 类型id
	 类型name
	 父类型id
	 类型等级level*/
// 一对多（单方）
	
	private Integer cid;
	private String cname;
	private Integer cpid;
	private Integer clevel;
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Integer getCpid() {
		return cpid;
	}
	public void setCpid(Integer cpid) {
		this.cpid = cpid;
	}
	public Integer getClevel() {
		return clevel;
	}
	public void setClevel(Integer clevel) {
		this.clevel = clevel;
	}
	

}

	
	
	

