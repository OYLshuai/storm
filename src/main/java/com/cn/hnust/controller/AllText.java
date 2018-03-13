package com.cn.hnust.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/javaPage")
public class AllText {
	
	@RequestMapping("/tableText.json")
	public Map<String, Object> tableText(HttpServletRequest httpReqest) {
		Map<String, Object> response = new HashMap<>();
		Map<String, Object> rows =  new HashMap<>();
		for(int i=0;i<10;i++){
			int id = i;
			String name = i+"j";
			String price = "$"+i;
			rows.put("id", id+"");
			rows.put("name", name);
			rows.put("price", price);
			
			response.put("rows", rows);
		}
		
		return rows;
	}
}
