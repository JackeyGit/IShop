package com.action;

import java.util.ArrayList;
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

import com.pojo.User;
import com.service.impl.IUserService;
import com.util.Page;

/**
 * 
 * 
 * @author huangyiit@163.com
 * 
 */
@Controller
/* @RequestMapping(value = "/user") */
public class UserAction {

	private IUserService userService;

	@Resource(name = "userServiceID")
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	/**
	 * 用户注册
	 */
	@RequestMapping(value = "/register")
	public String register(User user, HttpSession session) throws Exception {
		//
		userService.userRegister(user);
		session.setAttribute("user", user);
		return "forward:/index.jsp";
	}

	@RequestMapping(value = "/addUser")
	public String addUser(User user) throws Exception {
		// 用户 列表
		userService.userRegister(user);
		return "/admin/UserListPage";
	}

	/**
	 * 用户登录
	 * 
	 * @param 用户名
	 * @param 密码
	 * @param 验证码
	 * @return 用户对象
	 */
	@RequestMapping(value = "/login")
	public String login(String userName, String loginPwd, HttpSession session,
			HttpServletRequest request) throws Exception {
		/*String checkString = (String) session.getAttribute("CHECKNUM");
		checkString = checkString.toUpperCase();
		String checknum = request.getParameter("checknum");

		checknum = checknum.toUpperCase();*/
		String flag;
		User user = userService.login(userName, loginPwd);
		if (user == null) {
			flag = "<span style='color:red'>用户名或密码不正确</span>";
			request.setAttribute("flag", flag);
			return "redirect:/login.jsp";
		}else {
			session.setAttribute("user", user);
			return "forward:/index.jsp";
		}
		
	}

	/*
	 * 验证码
	 * */
	@RequestMapping(value="/checknum")
	public @ResponseBody String checkNum(HttpServletRequest request ,HttpSession session) {
		
		String checknum=request.getParameter("checknum").toLowerCase();
		String ChECKNUM=((String) session.getAttribute("CHECKNUM")).toLowerCase();
		System.out.print(checknum+"+"+ChECKNUM+"|||||||||||||");
		
		if (checknum.equals(ChECKNUM)) {
			return "yes";
		}else{
			return "no";
		}
	}
	
	
	
	/**
	 * 退出
	 */
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		session.invalidate();
		return "redirect:/index.jsp";
	}

	/**
	 * 个人中心
	 */
	@RequestMapping(value = "/UserCenter")
	public String userCenter() {
		return "forward:/UserCenter.jsp";
	}

	/**
	 * 检验用户是否存在
	 * 
	 * @param 用户名
	 */
	@RequestMapping(value = "/userExist")
	public @ResponseBody
	String userExist(String userName) {
		String flag = "no";
		System.out.print("---------------" + userName);
		List<User> list = new ArrayList<User>();
		list = userService.userExist(userName);
		if (list.size() > 0) {
			flag = "yes";
		}

		System.out.println("-----++++++++++++++" + flag);
		return flag;
	}
	
	//根据id查询用户
	@RequestMapping(value="/findIDUser")
	public String findIDUser(HttpSession session ,Integer userId){
		User user=userService.findUserByID(userId);
		session.setAttribute("user", user);
		return "forward:/editUser.jsp";
	}
	
	
	

	/**
	 * 查询所有用户
	 * 
	 * @ResponseBody 返回json数据
	 */

	@RequestMapping(value = "/findAllUser")
	public @ResponseBody
	Map<String, Object> map2json(HttpServletRequest request) {
		Integer nowpage =Integer.parseInt( request.getParameter("pageNumber"));// rows
		Integer pageszie =Integer.parseInt(request.getParameter("pageSize"));
		if (nowpage == null || nowpage == 0 ) {
			nowpage = 1;
		}
		if (pageszie == null || pageszie == 0 ) {
			pageszie = 15;
		}
		System.out.println(nowpage+"++++++++"+pageszie);
		
		Page page = userService.findAllUser(nowpage, pageszie);
		Map<String, Object> map = new LinkedHashMap<String, Object>();
		map.put("total", page.getAllRecordNO());
		map.put("rows", page.getUserlistList());
		return map;

	}

	/*
	 * 更新用户数据
	 * 
	 * @
	 */



	@RequestMapping(value = "/userUpdateById")
	public String userUpdateById( User user) {
		userService.updateUserById(user);
		return "success";
	

	}

	// 删除用户
	@RequestMapping(value = "/userDelete")
	public void userDelete(int id) {
		userService.deleteUser(id);
		

	}
	
	
	@RequestMapping(value = "/deleteManyUser")
	public String deleteManyUser(@RequestParam(value="ids[]") Integer[] ids) {
		userService.deleteManyUser(ids);
		return "success";
	}

}
