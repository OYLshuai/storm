/***
 * 顶上导航栏跳转控制
 */
package com.cn.hnust.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/page")
public class PageController {
	@RequestMapping("/mainLogPage")
	public String text(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "mainLog";
	}
	
	@RequestMapping("/javaPage")
	public String java(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "java";
	}
	
	@RequestMapping("/javaSpringPage")
	public String javaSpring(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "javaspring";
	}
}