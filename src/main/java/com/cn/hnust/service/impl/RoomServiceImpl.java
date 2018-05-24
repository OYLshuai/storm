package com.cn.hnust.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.RoomMapper;
import com.cn.hnust.pojo.Room;
import com.cn.hnust.service.IRoomService;

@Service("RoomService")
public class RoomServiceImpl implements IRoomService{
	@Resource
	private RoomMapper room;
	
	@Override
	public List<Map<String, Room>> getAllRoom() {
		// TODO Auto-generated method stub
		return room.selectAllRoom();
	}

	@Override
	public List<Map<String, Room>> getCheckRoom() {
		// TODO Auto-generated method stub
		return room.selectCheckRoom();
	}

	@Override
	public List<Map<String, Room>> getUnCheckRoom() {
		// TODO Auto-generated method stub
		return room.selectUnCheckRoom();
	}

	@Override
	public int DelRoom(Integer roomno) {
		// TODO Auto-generated method stub
		room.delRoom(roomno);
		return 0;
	}

	@Override
	public int addRoom(Room roomData) {
		// TODO Auto-generated method stub
		room.insert(roomData);
		return 0;
	}

	@Override
	public int modRoomMessage(Room roomData) {
		// TODO Auto-generated method stub
		room.modRoom(roomData);
		return 0;
	}

	@Override
	public Room getRoomByNo(Integer roomno) {
		// TODO Auto-generated method stub
		
		return room.selectRoomByNo(roomno);
	}

	@Override
	public int invalidRoom(Integer roomno,String roomState) {
		// TODO Auto-generated method stub
		room.invalidRoom(roomno,roomState);
		return 0;
	}

	@Override
	public List<Map<String, Room>> getOrderRoom() {
		// TODO Auto-generated method stub
		return room.selectOrderRoom();
	}

	@Override
	public int invalidRoom(Integer roomno) {
		// TODO Auto-generated method stub
		room.updateRoomState(roomno);
		return 0;
	}

	@Override
	public List<Map<String, Room>> getCheckingRoom() {
		// TODO Auto-generated method stub
		return room.selectCheckingRoom();
	}

}
