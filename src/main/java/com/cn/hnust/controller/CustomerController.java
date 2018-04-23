package com.cn.hnust.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.cn.hnust.pojo.Customer;
import com.cn.hnust.service.ICustomerService;

@Controller
@RequestMapping("/customerData")
public class CustomerController {
	@Resource
	private ICustomerService customerService;
	
	@RequestMapping("/allCustomer")
	public @ResponseBody List<Map<String, Customer>> allCustomer(HttpServletRequest httpReqest){
		List<Map<String, Customer>> response = this.customerService.getAllCustomer();
		
		return response;
	}
	
	@RequestMapping("/addCustomer")
	public @ResponseBody JSONObject addCustomer(@RequestBody Customer customer){
		JSONObject result = new JSONObject();
		int row = this.customerService.addCustomer(customer);
		result.put("result", row);
		return result;
	}
}
