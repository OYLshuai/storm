package com.cn.hnust.dao;

import com.cn.hnust.pojo.Sysdictionary;

public interface SysdictionaryMapper {
    int insert(Sysdictionary record);

    int insertSelective(Sysdictionary record);
}