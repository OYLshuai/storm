package com.cn.hnust.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/system")
public class SystemController {
	@RequestMapping("/SystemMain")
	public String SystemMain(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "system/SystemMain";
	}
	
	@RequestMapping("/CustomerMain")
	public String CustomerMain(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "system/CustomerMain";
	}

	@RequestMapping("/SystemDict")
	public String SystemDict(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "system/SystemDict";
	}
}
