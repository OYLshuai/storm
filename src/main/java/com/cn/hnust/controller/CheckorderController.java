package com.cn.hnust.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.cn.hnust.pojo.Checkorder;
import com.cn.hnust.service.ICheckorderService;
import com.cn.hnust.service.IRoomService;

@Controller
@RequestMapping("/checkorderData")
public class CheckorderController {
	@Resource
	private ICheckorderService checkorderService;
	
	@Resource
	private IRoomService roomService;
	
	@RequestMapping("/allCheckorder")
	public @ResponseBody List<Map<String, Checkorder>> allCheckorder(HttpServletRequest httpReqest){
		List<Map<String, Checkorder>> response = this.checkorderService.getAllCheckorder();
		
		return response;
	}
	
	/**
	 * Mybatis 多参数实例 roomService
	 * @param checkorder
	 * @param request
	 * @return
	 */
	@RequestMapping("/addCheckorder")
	public @ResponseBody JSONObject addCheckorder(@RequestBody Checkorder checkorder,HttpServletRequest request){
		JSONObject result = new JSONObject();
		int roomno = checkorder.getRoomno();
		String roomState = request.getParameter("roomState");
		roomService.invalidRoom(roomno,roomState);
		int row = this.checkorderService.addCheckorder(checkorder);
		result.put("result", row);
		return result;
	}
}
