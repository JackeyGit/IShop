package com.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.Admin;
import com.service.impl.IAdminService;

@Controller
public class AdminAction {
	private IAdminService adminService;
	@Resource(name="adminServiceID")
	public void setAdminService(IAdminService adminService) {
		this.adminService = adminService;
	}
	
	

	
	//管理员登录
	@RequestMapping(value="/adminLogin")
	public String adminLogin(String name, String password, HttpSession session) {
		
		System.out.println(name+password);
		Admin admin =adminService.login(name, password);
		if (admin==null) {
			return "404";
		}else {
			session.setAttribute("admin", admin);
			return "WEB-INF/Admin";
		}
		
	}


	/**
	 *
	 */
	@RequestMapping(value = "/alogout")
	public String logout(HttpSession session) {
		session.removeAttribute("admin");
		session.invalidate();
		return "redirect:/Adlog.jsp";
	}
	
	
	
}
