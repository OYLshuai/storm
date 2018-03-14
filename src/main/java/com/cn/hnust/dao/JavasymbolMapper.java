package com.cn.hnust.dao;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Javasymbol;

public interface JavasymbolMapper {
    int insert(Javasymbol record);

    int insertSelective(Javasymbol record);
    
    List<Map<String,Javasymbol>> selectall();
}