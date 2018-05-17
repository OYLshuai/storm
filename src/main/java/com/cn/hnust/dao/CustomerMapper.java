package com.cn.hnust.dao;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Customer;

public interface CustomerMapper {
    int insert(Customer record);

    int insertSelective(Customer record);
    
    List<Map<String,Customer>> selectAllCustomer();
    
    List<Map<String,Customer>> selectCustomerByIdNo(String idno);
    
    List<Map<String,Customer>> selectCustomerByCname(String cname);
    
    int modCustomer(Customer customer);
    
    int delCustomer(String idno);
    
    int addFrequency(String idno);
}