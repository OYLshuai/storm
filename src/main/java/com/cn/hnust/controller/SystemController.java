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
	
	@RequestMapping("/openRoom")
	public String openRoom(HttpServletRequest request, Model model) {
		String jump = request.getParameter("jump");
		Boolean jumpIdx = Boolean.parseBoolean(jump);  
		if(jumpIdx){
			model.addAttribute("jump", jump);
			String roomno = request.getParameter("roomno");
			model.addAttribute("roomno", roomno);
			String idno = request.getParameter("idno");
			model.addAttribute("idno", idno);
			String destine = request.getParameter("destine");
			model.addAttribute("destine", destine);
		}else{
			model.addAttribute("jump", false);
		}
		model.addAttribute("row", "1");
		return "system/openRoom";
	}
	
	@RequestMapping("/RoomMain")
	public String RoomMain(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "system/RoomMain";
	}
	
	@RequestMapping("/CustomerMain")
	public String CustomerMain(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "system/CustomerMain";
	}

	@RequestMapping("/CheckorderMain")
	public String CheckorderMain(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "system/CheckorderMain";
	}
	
	@RequestMapping("/SystemDict")
	public String SystemDict(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "system/SystemDict";
	}
}
