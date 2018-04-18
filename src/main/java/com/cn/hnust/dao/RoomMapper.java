package com.cn.hnust.dao;

import com.cn.hnust.pojo.Room;

public interface RoomMapper {
    int insert(Room record);

    int insertSelective(Room record);
}