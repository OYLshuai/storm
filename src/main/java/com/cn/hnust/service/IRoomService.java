package com.cn.hnust.service;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Room;

public interface IRoomService {
	public List<Map<String, Room>> getAllRoom();

	public List<Map<String, Room>> getCheckRoom();

	public List<Map<String, Room>> getUnCheckRoom();
	
	public List<Map<String, Room>> getOrderRoom();
	
	public Room getRoomByNo(Integer roomno);

	public int modRoomMessage(Room room);

	public int addRoom(Room room);

	public int DelRoom(Integer roomno);

	public int invalidRoom(Integer roomno,String roomState);

	public int invalidRoom(Integer roomno);
}
