package com.cn.hnust.controller;



import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.hnust.pojo.Elemt;
import com.cn.hnust.pojo.Javasymbol;
import com.cn.hnust.service.IJavaSymbol;
@Controller
@RequestMapping("/javaPage")
public class AllText {

	@Resource
	private IJavaSymbol javaSymbol;
	
	@RequestMapping("/tableText.json")
	public @ResponseBody List<Map<String, Javasymbol>> tableText(HttpServletRequest httpReqest) {
		List<Map<String, Javasymbol>> response = this.javaSymbol.getAllJavasymbol();
		
		return response;
	}
	
	public Elemt initElemt(int i){
		Elemt ele = new Elemt();
		ele.setId(i);
		ele.setName(i+"j");
		ele.setPrice("$"+i);

		return ele;
		
	}
}
