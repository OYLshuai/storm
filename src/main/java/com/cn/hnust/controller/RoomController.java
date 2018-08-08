package com.cn.hnust.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.cn.hnust.pojo.Room;
import com.cn.hnust.service.IRoomService; 

@Controller
@RequestMapping("/roomData")
public class RoomController {

	@Resource
	private IRoomService roomService;
	
	@RequestMapping("/allRoom")
	public @ResponseBody List<Map<String, Room>> allRoom(HttpServletRequest httpReqest){
		List<Map<String, Room>> response = this.roomService.getAllRoom();
		return response;
	}

	@RequestMapping("/getRoomByNo")
	public @ResponseBody JSONObject getRoomByNo(HttpServletRequest httpReqest){
		JSONObject result = new JSONObject();
		String roomno = httpReqest.getParameter("roomno");
		Room room = this.roomService.getRoomByNo(Integer.valueOf(roomno));
		if(room != null){
			result.put("room", room);
			result.put("flag", 1);
		}else{
			result.put("flag", 0);
		}
		
		return result;
	}
	
	@RequestMapping("/checkRoom")
	public @ResponseBody List<Map<String, Room>> checkRoom(HttpServletRequest httpReqest){
		List<Map<String, Room>> response = this.roomService.getCheckRoom();
		return response;
	}
	
	@RequestMapping("/CheckingRoom")
	public @ResponseBody List<Map<String, Room>> CheckingRoom(HttpServletRequest httpReqest){
		List<Map<String, Room>> response = this.roomService.getCheckingRoom();
		return response;
	}

	@RequestMapping("/unCheckRoom")
	public @ResponseBody List<Map<String, Room>> unCheckRoom(HttpServletRequest httpReqest){
		List<Map<String, Room>> response = this.roomService.getUnCheckRoom();
		
		return response;
	}
	
	@RequestMapping("/orderRoom")
	public @ResponseBody List<Map<String, Room>> orderRoom(HttpServletRequest httpReqest){
		List<Map<String, Room>> response = this.roomService.getOrderRoom();
		return response;
	}

	@RequestMapping("/delRoom")
	public @ResponseBody JSONObject delRoom(HttpServletRequest httpReqest){
		JSONObject result = new JSONObject();
		int RoomNo = Integer.valueOf(httpReqest.getParameter("roomno"));
		Room room = this.roomService.getRoomByNo(RoomNo);
		int row;
		if("预定".equals(room.getRstate()) || "已住".equals(room.getRstate())){
			row = -1;
		}else{
			row = this.roomService.DelRoom(RoomNo);
		}
		result.put("result", row);
		return result;
	}

	@RequestMapping("/addRoom")
	public @ResponseBody JSONObject addRoom(@RequestBody Room room){
		JSONObject result = new JSONObject();
		Room checkRoom = this.roomService.getRoomByNo(room.getRoomno());
		if("".equals(checkRoom)){
			int row = this.roomService.addRoom(room);
			result.put("result", row);
		}else{
			result.put("result", -1);
		}
		return result;
	}
	

	@RequestMapping(value = "/modRoom" , method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody 
	public JSONObject modRoom(@RequestBody Room room){
		JSONObject result = new JSONObject();
		Room checkRoom = this.roomService.getRoomByNo(room.getRoomno());
		if("预定".equals(checkRoom.getRstate()) || "已住".equals(checkRoom.getRstate())){
			result.put("falg", -1);
		}else{
			this.roomService.modRoomMessage(room);
			result.put("falg", 1);
		}
		return result;
	}
	
	
}
