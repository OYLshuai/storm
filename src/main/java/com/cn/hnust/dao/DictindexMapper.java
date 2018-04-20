package com.cn.hnust.dao;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Dictindex;

public interface DictindexMapper {
    int insert(Dictindex record);

    int insertSelective(Dictindex record);
    
	List<Map<String, Dictindex>> selectAllDictEntry();
}