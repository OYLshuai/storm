package com.cn.hnust.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.hnust.pojo.Dictindex;
import com.cn.hnust.pojo.Sysdictionary;
//import com.cn.hnust.service.IDictIndex;
import com.cn.hnust.service.ISysdictService;

@Controller
@RequestMapping("/dictData")
public class SysDictionrayController {

	@Resource
	private ISysdictService sysDictService;
	
	//@Resource
	//private IDictIndex dictService;
	/**
	 * 获取所有字典项
	 * @param httpReqest
	 * @return
	 */
	@RequestMapping("/allSysDict")
	public @ResponseBody List<Map<String, Sysdictionary>> allSysDict(HttpServletRequest httpReqest){
		List<Map<String, Sysdictionary>> response = this.sysDictService.selectAllDict();
		return response;
	}
	/**
	 * 根据父字典号查询子字典项
	 * @param httpReqest
	 * @return
	 */
	@RequestMapping("/byEntry")
	public @ResponseBody List<Map<String, Sysdictionary>> byEntry(HttpServletRequest httpReqest){
		Integer entry = Integer.valueOf(httpReqest.getParameter("entry"));
		
		List<Map<String, Sysdictionary>> response = this.sysDictService.selectByDictEntryDict(entry);
		return response;
	}
	
	/**
	 * 获取所有父字典项
	 * @param httpReqest
	 * @return
	 */
/*	@RequestMapping("/allDict")
	public @ResponseBody List<Map<String, Dictindex>> allDict(HttpServletRequest httpReqest){
		List<Map<String, Dictindex>> response = this.dictService.selectAllDictEntry();
		return response;
	}*/
}
