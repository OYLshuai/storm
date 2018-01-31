
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
}