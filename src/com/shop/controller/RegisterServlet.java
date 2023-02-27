package com.shop.controller;

import java.io.IOException;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.pojo.User;
import com.shop.service.UserService;
import com.shop.utils.DateStrUtils;

public class RegisterServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService service = new UserService();
		request.setCharacterEncoding("utf-8");
		//获取注册页面传来的参数
		String username = request.getParameter("username");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String birthdayStr = request.getParameter("birthday");
		//日期转换
		Date birthday = DateStrUtils.stringToDate("yyyy-MM-dd", birthdayStr);
		String sex = request.getParameter("sex");
		String telephone = request.getParameter("telephone");
		String email = request.getParameter("email");
		User user = new User();//封装user对象
		user.setUsername(username);
		user.setName(name); 
		user.setPassword(password);
		user.setBirthday(birthday);
		user.setSex(sex);
		user.setTelephone(telephone);
		user.setEmail(email);
		user.setState(1);
		user.setUid(UUID.randomUUID().toString());
		user.setCode(UUID.randomUUID().toString());//激活码
		boolean success = service.register(user,request);
		if(success) {  
			response.setContentType("text/html;charset=utf-8"); 
			response.getWriter().println("<script>alert('注册成功')</script>");
			response.sendRedirect("login.jsp"); 
		}else {
			response.getWriter().println("<script>alert('注册失败！！')</script>");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
