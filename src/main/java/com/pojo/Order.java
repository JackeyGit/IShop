package com.pojo;

import java.util.Date;

public class Order {
	private Integer id; // 编号
	private String oid; // 订单号
	private Integer pid; // 产品id
	private String pname; // 产品名
	private Integer user_id; // 用户id
	private Integer rcount; // 数量
	private String paystyle; // 支付方式
	private Integer isvalid; // 有效性
	private Date createtime; // 创建时间
	private Double exprice; // 快递费
	private Double totalprice; // 总价
	private Integer status; // 订单状态1、确认订单；2、未确认；3、取消订单
	private String sendstyle; // 发货方式
	private String remark; // 订单备注
	private String batchcode; // 订单号
	private String pay_batchcode; // 合并支付订单号
	private Integer prvalues; // 商品属性id字符串
	private String prvalues_name; // 商品属性字符串
	private Date sendtime; // 送货时间
	private String expressname; // 快递名称
	private String expressnum; // 快递单号
	private Integer paystatus; // 付款状态
	private Integer express_id; // 用户择的快递ID
	private Integer address_id; // 收货地址编号
	private Integer sendstatus; // 未发货；1：已发货;2:已收货;3.申请退货；4.已退货;5申请退款；6：已经退款
	private Date confirm_sendtime; // 发货时间
	private Integer return_status; // 退货状态。0.
									// 未退货；1：退货成功；-1：退货失败；2：同意退货；3：驳回请求；4：确认退货；5：
									// 用户已退货；6：商家确认收货；7：商家已发货；8：同意退款；9：驳回退款
	private Date receivetime;// 确认收货时间
	private String backgoods_reason; // 退货原因
	private Integer is_discuss; // 是否已经评论:0:未评论 1:已经评论 2:追加评论
	private Date paytime; // 支付时间
	private String send_remarks; // 发货备注
	private Integer aftersale_type; // 申请售后类型：0：默认；1：退款；2：退货；3：换货
	private Integer aftersale_state; // 申请售后状态：0:默认；1：已申请；2：同意；3：驳回；4：已处理
	private String aftersale_reason; // 售后驳回原因
	private Integer isreducesupply; // 是否完成维权退款，0：否，1是
	private Date aftersale_time;// 售后申请时间
	private Integer is_pay_on_delivery;// 是否是货到付款订单（0-不是 1-是）
	private Integer is_sign; // 待签收 1-已签收 2-拒签收
	private Date confirm_order_time; // 结算订单时间

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getOid() {
		return oid;
	}

	public void setOid(String oid) {
		this.oid = oid;
	}

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public Integer getRcount() {
		return rcount;
	}

	public void setRcount(Integer rcount) {
		this.rcount = rcount;
	}

	public String getPaystyle() {
		return paystyle;
	}

	public void setPaystyle(String paystyle) {
		this.paystyle = paystyle;
	}

	public Integer getIsvalid() {
		return isvalid;
	}

	public void setIsvalid(Integer isvalid) {
		this.isvalid = isvalid;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Double getExprice() {
		return exprice;
	}

	public void setExprice(Double exprice) {
		this.exprice = exprice;
	}

	public Double getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(Double totalprice) {
		this.totalprice = totalprice;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getSendstyle() {
		return sendstyle;
	}

	public void setSendstyle(String sendstyle) {
		this.sendstyle = sendstyle;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getBatchcode() {
		return batchcode;
	}

	public void setBatchcode(String batchcode) {
		this.batchcode = batchcode;
	}

	public String getPay_batchcode() {
		return pay_batchcode;
	}

	public void setPay_batchcode(String pay_batchcode) {
		this.pay_batchcode = pay_batchcode;
	}

	public Integer getPrvalues() {
		return prvalues;
	}

	public void setPrvalues(Integer prvalues) {
		this.prvalues = prvalues;
	}

	public String getPrvalues_name() {
		return prvalues_name;
	}

	public void setPrvalues_name(String prvalues_name) {
		this.prvalues_name = prvalues_name;
	}

	public Date getSendtime() {
		return sendtime;
	}

	public void setSendtime(Date sendtime) {
		this.sendtime = sendtime;
	}

	public String getExpressname() {
		return expressname;
	}

	public void setExpressname(String expressname) {
		this.expressname = expressname;
	}

	public String getExpressnum() {
		return expressnum;
	}

	public void setExpressnum(String expressnum) {
		this.expressnum = expressnum;
	}

	public Integer getPaystatus() {
		return paystatus;
	}

	public void setPaystatus(Integer paystatus) {
		this.paystatus = paystatus;
	}

	public Integer getExpress_id() {
		return express_id;
	}

	public void setExpress_id(Integer express_id) {
		this.express_id = express_id;
	}

	public Integer getAddress_id() {
		return address_id;
	}

	public void setAddress_id(Integer address_id) {
		this.address_id = address_id;
	}

	public Integer getSendstatus() {
		return sendstatus;
	}

	public void setSendstatus(Integer sendstatus) {
		this.sendstatus = sendstatus;
	}

	public Date getConfirm_sendtime() {
		return confirm_sendtime;
	}

	public void setConfirm_sendtime(Date confirm_sendtime) {
		this.confirm_sendtime = confirm_sendtime;
	}

	public Integer getReturn_status() {
		return return_status;
	}

	public void setReturn_status(Integer return_status) {
		this.return_status = return_status;
	}

	public Date getReceivetime() {
		return receivetime;
	}

	public void setReceivetime(Date receivetime) {
		this.receivetime = receivetime;
	}

	public String getBackgoods_reason() {
		return backgoods_reason;
	}

	public void setBackgoods_reason(String backgoods_reason) {
		this.backgoods_reason = backgoods_reason;
	}

	public Integer getIs_discuss() {
		return is_discuss;
	}

	public void setIs_discuss(Integer is_discuss) {
		this.is_discuss = is_discuss;
	}

	public Date getPaytime() {
		return paytime;
	}

	public void setPaytime(Date paytime) {
		this.paytime = paytime;
	}

	public String getSend_remarks() {
		return send_remarks;
	}

	public void setSend_remarks(String send_remarks) {
		this.send_remarks = send_remarks;
	}

	public Integer getAftersale_type() {
		return aftersale_type;
	}

	public void setAftersale_type(Integer aftersale_type) {
		this.aftersale_type = aftersale_type;
	}

	public Integer getAftersale_state() {
		return aftersale_state;
	}

	public void setAftersale_state(Integer aftersale_state) {
		this.aftersale_state = aftersale_state;
	}

	public String getAftersale_reason() {
		return aftersale_reason;
	}

	public void setAftersale_reason(String aftersale_reason) {
		this.aftersale_reason = aftersale_reason;
	}

	public Integer getIsreducesupply() {
		return isreducesupply;
	}

	public void setIsreducesupply(Integer isreducesupply) {
		this.isreducesupply = isreducesupply;
	}

	public Date getAftersale_time() {
		return aftersale_time;
	}

	public void setAftersale_time(Date aftersale_time) {
		this.aftersale_time = aftersale_time;
	}

	public Integer getIs_pay_on_delivery() {
		return is_pay_on_delivery;
	}

	public void setIs_pay_on_delivery(Integer is_pay_on_delivery) {
		this.is_pay_on_delivery = is_pay_on_delivery;
	}

	public Integer getIs_sign() {
		return is_sign;
	}

	public void setIs_sign(Integer is_sign) {
		this.is_sign = is_sign;
	}

	public Date getConfirm_order_time() {
		return confirm_order_time;
	}

	public void setConfirm_order_time(Date confirm_order_time) {
		this.confirm_order_time = confirm_order_time;
	}
}
