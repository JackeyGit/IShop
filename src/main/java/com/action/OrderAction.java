package com.action;

import java.io.File;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.pojo.Order;
import com.service.impl.IOrderService;
import com.util.GetDate;
import com.util.Page;
import com.util.Upload;

@Controller
public class OrderAction {

	private IOrderService orderService;

	@Resource(name = "orderServiceID")
	public void setOrderService(IOrderService orderService) {
		this.orderService = orderService;
	}

	@RequestMapping(value = "CreateOrder")
	public String addOrder(
			@RequestParam("vcpic") CommonsMultipartFile files,HttpServletRequest request, HttpSession session) throws IOException{
		//
		Order order = new Order();
		String orderName = request.getParameter("vcname");
		String path = "UploadFile" + File.separator + "Pic" + File.separator
				+ orderName;
		String root = Upload.fileUpload(files, path, request);
		/*order.setVcpic(root);
		order.setVcname(orderName);
		order.setVcdescr(request.getParameter("vcdescr"));
		order.setVctime(GetDate.getTime());
		order.setVcprice(Integer.valueOf(request.getParameter("vcprice")));
		order.setVctid(Integer.valueOf(request.getParameter("vctid")));*/
		/* order.setVcowner("admin");*/
		orderService.addOrder(order);
		session.setAttribute("order", order);
		return "Order";
	}
	
	@RequestMapping(value="AllOrders")
	public  String AllOrders(HttpServletRequest request) {
		final int pagesize =20;
		String strPage = request.getParameter("page");
		if (strPage == null || strPage.trim().length() == 0) {
			strPage = "1";
		}
		Integer nowpage = Integer.parseInt(strPage);
		List<Order> orders = orderService.findOrder(pagesize, nowpage);
		request.setAttribute("orders", orders);
		return "OrderList";
	}
	
	
	
	@RequestMapping(value="getOrders")
	@ResponseBody
	public   Map<String, Object> getOrders(HttpServletRequest request) {
		final int pagesize =15;
		String strPage = request.getParameter("page");
		if (strPage == null || strPage.trim().length() == 0) {
			strPage = "1";
		}
		Integer nowpage = Integer.parseInt(strPage);
	Page page = orderService.findAllOrders(nowpage, pagesize);
		Map<String, Object> map=new LinkedHashMap<String, Object>();
		map.put("total", page.getAllRecordNO());
		map.put("rows", page.getOrderList());
		return map;
	}
	
	@RequestMapping(value="delOrder")
	public String delOrder(int id) {
		orderService.deleteOrder(id);
		return "forward:/getOrders.action";

	}
	
	@RequestMapping(value="getVideoCillById")
	public String getVideoCillById(int id,HttpSession session,HttpServletRequest request){
		Order order=orderService.findOrderById(id);
		session.setAttribute("order", order);
		return "Order";
	}
}