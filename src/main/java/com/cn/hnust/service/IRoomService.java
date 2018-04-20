package com.cn.hnust.service;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Room;

public interface IRoomService {
	public List<Map<String, Room>> getAllRoom();

	public List<Map<String, Room>> getCheckRoom();

	public List<Map<String, Room>> getUnCheckRoom();

	public int modRoomMessage(Integer roomno);

	public int addRoom(Room room);

	public int DelRoom(Integer roomno);
}