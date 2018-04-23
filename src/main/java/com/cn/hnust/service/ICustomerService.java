package com.cn.hnust.service;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Customer;

public interface ICustomerService {
	public List<Map<String,Customer>> getAllCustomer();
	
	public List<Map<String,Customer>> getCustomerByIdNo(String idno);
	
	public List<Map<String,Customer>> getCustomerByCname(String cname);
	
	public int modCustomer(Customer customer);
	
	public int addCustomer(Customer customer);
	
	public int delCustomer(String idno);
}
