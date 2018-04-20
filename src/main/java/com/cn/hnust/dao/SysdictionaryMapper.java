package com.cn.hnust.dao;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Sysdictionary;

public interface SysdictionaryMapper {
    int insert(Sysdictionary record);

    int insertSelective(Sysdictionary record);
    
    List<Map<String,Sysdictionary>> selectAllDict();

    List<Map<String,Sysdictionary>> selectByDictEntryDict(Integer DICTENTRY);
}