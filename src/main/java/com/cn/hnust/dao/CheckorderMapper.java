package com.cn.hnust.dao;

import com.cn.hnust.pojo.Checkorder;

public interface CheckorderMapper {
    int insert(Checkorder record);

    int insertSelective(Checkorder record);
}