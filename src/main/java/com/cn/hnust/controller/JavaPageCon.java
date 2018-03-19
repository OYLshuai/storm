/*****
 * Java 页面跳转
 */
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

	@RequestMapping("/javaConfigure")
	public String javaConfigure(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "java/java_configure";
	}

	@RequestMapping("/javaBase")
	public String javaBase(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "java/java_base";
	}
	
	@RequestMapping("/javaClass")
	public String javaClass(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "java/java_class";
	}
	
	@RequestMapping("/javaBaseData")
	public String javaBaseData(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "java/java_baseData";
	}
	
	@RequestMapping("/javaVariable")
	public String javaVariable(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "java/java_variable";
	}
	
	@RequestMapping("/javaModifier")
	public String javaModifier(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "java/java_modifier";
	}
	
	@RequestMapping("/javaStructure")
	public String javaStructure(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "java/java_structure";
	}
	
	@RequestMapping("/javaArray")
	public String javaArray(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "java/java_array";
	}
	
	@RequestMapping("/javaString")
	public String javaString(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "java/java_string";
	}
	
	@RequestMapping("/javaMethods")
	public String javaMethods(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "java/java_methods";
	}
	
	@RequestMapping("/javaCharacteristics")
	public String javaCharacteristics(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "java/java_characteristics";
	}
	
	@RequestMapping("/javaAbstract")
	public String javaAbstract(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "java/java_abstract";
	}
	
	@RequestMapping("/javaInterface")
	public String javaInterface(HttpServletRequest request, Model model) {
		model.addAttribute("row", "1");
		return "java/java_interface";
	}
}
