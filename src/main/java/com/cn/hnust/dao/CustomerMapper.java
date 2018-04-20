package com.cn.hnust.dao;

import com.cn.hnust.pojo.Customer;

public interface CustomerMapper {
    int insert(Customer record);

    int insertSelective(Customer record);
}