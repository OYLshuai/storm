package com.cn.hnust.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.CustomerMapper;
import com.cn.hnust.pojo.Customer;
import com.cn.hnust.service.ICustomerService;

@Service("CustomerService")
public class CustomerService implements ICustomerService{

	@Resource
	private CustomerMapper customer;
	@Override
	public List<Map<String, Customer>> getAllCustomer() {
		// TODO Auto-generated method stub
		return customer.selectAllCustomer();
	}

	@Override
	public List<Map<String, Customer>> getCustomerByIdNo(String idno) {
		// TODO Auto-generated method stub
		return customer.selectCustomerByIdNo(idno);
	}

	@Override
	public List<Map<String, Customer>> getCustomerByCname(String cname) {
		// TODO Auto-generated method stub
		return customer.selectCustomerByCname(cname);
	}

	@Override
	public int modCustomer(Customer customers) {
		// TODO Auto-generated method stub
		return customer.modCustomer(customers);
	}

	@Override
	public int addCustomer(Customer customers) {
		// TODO Auto-generated method stub
		return customer.insert(customers);
	}

	@Override
	public int delCustomer(String idno) {
		// TODO Auto-generated method stub
		return customer.delCustomer(idno);
	}

}
