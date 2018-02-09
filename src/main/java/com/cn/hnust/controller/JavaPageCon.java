package com.cn.hnust.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/javaPage")
public class JavaPageCon {
	@RequestMapping("/javaIntPage")
	public String text(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "java/java_Introduce";
	}
}
