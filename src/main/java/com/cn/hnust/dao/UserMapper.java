package com.cn.hnust.dao;

import org.apache.ibatis.annotations.Param;

import com.cn.hnust.pojo.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);
    
    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    User selectByPassword(@Param("id")Integer id,@Param("Password")String Password);
    
    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}