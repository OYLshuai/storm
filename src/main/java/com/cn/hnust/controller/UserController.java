
package com.cn.hnust.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.cn.hnust.pojo.User;
import com.cn.hnust.service.IUserService;

@Controller
@RequestMapping("/main")
public class UserController {
	@Resource
	private IUserService userService;

	@RequestMapping(value = "/showMain", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public JSONObject toIndex(@RequestBody User user) {
		JSONObject result = new JSONObject();

		if (user.getId() == null || user.getPassword() == null) {
			result.put("message", "用户名或者密码错误!");
			result.put("falg", 0);
		} else {
			int userId = user.getId();
			String Password = user.getPassword();
			user = this.userService.getUserByPassword(userId, Password);
			if (user != null) {
				result.put("message", "登陆成功");
				result.put("row", user);
				result.put("falg", 2);
			} else {
				result.put("message", "登录失败");
				result.put("falg", 1);
			}
		}
		return result;
	}
	
	@RequestMapping("/newUser")
	public String insertUser(HttpServletRequest request, Model model) {
		User user = new User();
		
		String name = request.getParameter("username");
		user.setUsername(name);
		String id = request.getParameter("id");
		Integer i = null;
		if(id!=null){
		     i = Integer.valueOf(id);
		}
		user.setId(i);
		String password = request.getParameter("password");
		user.setPassword(password);
		String mail = request.getParameter("mail");
		user.setMail(mail);
		String age = request.getParameter("age");
		Integer a = null;
		if(age!=null){
		     a = Integer.valueOf(age);
		}
		user.setAge(a);
		int row = this.userService.insertUser(user);
		model.addAttribute("row", row);
		model.addAttribute("name", name);
		return "mainLog";
	}
	
	@RequestMapping(value = "/checkId", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public JSONObject check(@RequestBody User user){
		JSONObject result = new JSONObject();
		int userId = user.getId();
		user = this.userService.getUserById(userId);
		if (user != null) {
			result.put("falg", 1);
		} else {
			result.put("falg", 0);
		}
		return result;
		
	}
	
	@RequestMapping("/text")
	public String text(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "mainLog";
	}
}