package com.cn.hnust.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.cn.hnust.pojo.Room;

public interface RoomMapper {
    int insert(Room record);

    int insertSelective(Room record);
    
    List<Map<String,Room>> selectAllRoom();

    List<Map<String,Room>> selectCheckRoom();

    List<Map<String,Room>> selectUnCheckRoom();
    
    List<Map<String,Room>> selectOrderRoom();
    
    Room selectRoomByNo(Integer roomno);
    
    int invalidRoom(@Param("roomno")Integer roomno,@Param("roomState")String roomState);

    int updateRoomState(Integer roomno);
    
    int delRoom(Integer roomno);
    
    int modRoom(Room record);
}