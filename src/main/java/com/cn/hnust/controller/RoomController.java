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
	
	@RequestMapping("/checkRoom")
	public @ResponseBody List<Map<String, Room>> checkRoom(HttpServletRequest httpReqest){
		List<Map<String, Room>> response = this.roomService.getCheckRoom();
		return response;
	}

	@RequestMapping("/unCheckRoom")
	public @ResponseBody List<Map<String, Room>> unCheckRoom(HttpServletRequest httpReqest){
		List<Map<String, Room>> response = this.roomService.getUnCheckRoom();
		
		return response;
	}

	@RequestMapping("/delRoom")
	public @ResponseBody void delRoom(HttpServletRequest httpReqest){
		this.roomService.DelRoom(Integer.valueOf(httpReqest.getParameter("roomno")));
	}

	@RequestMapping("/addRoom")
	public @ResponseBody String addRoom(HttpServletRequest httpReqest){
		Room room = new Room();
		
		room.setRoomno(Integer.valueOf(httpReqest.getParameter("roomNo")));
		room.setPrice(Integer.valueOf(httpReqest.getParameter("price")));
		room.setRoomtype(httpReqest.getParameter("roomType"));
		room.setRstate(httpReqest.getParameter("rstate"));
		room.setRemak(httpReqest.getParameter("remak"));
		
		int row = this.roomService.addRoom(room);
		
		return "system/SystemMain";
	}
	

	@RequestMapping(value = "/modRoom" , method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody 
	public JSONObject modRoom(@RequestBody Room room){
		JSONObject result = new JSONObject();
		this.roomService.modRoomMessage(room);
		result.put("falg", 1);
		return result;
	}
	
	
}
