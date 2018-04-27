package com.cn.hnust.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.cn.hnust.pojo.Checkorder;

public interface CheckorderMapper {
    int insert(Checkorder record);

    int insertSelective(Checkorder record);
    
    List<Map<String,Checkorder>> selectAllOrder();
    
    List<Map<String,Checkorder>> selectOrderByTerm(Checkorder record);
    
    Checkorder selectOrderByNo(@Param("idno")String idno,@Param("roomno")Integer roomno);
    
    int modCheckorder(Checkorder record);
    
    int delCheckorder(@Param("idno")String idno,@Param("roomno")Integer roomno);
    
    int invalidCheckorder(@Param("idno")String idno,@Param("roomno")Integer roomno,@Param("orderstate")String orderstate,@Param("remark")String remark);
}