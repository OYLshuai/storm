package com.cn.hnust.dao;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Room;

public interface RoomMapper {
    int insert(Room record);

    int insertSelective(Room record);
    
    List<Map<String,Room>> selectAllRoom();

    List<Map<String,Room>> selectCheckRoom();

    List<Map<String,Room>> selectUnCheckRoom();
    
    int delRoom(Integer roomno);
}