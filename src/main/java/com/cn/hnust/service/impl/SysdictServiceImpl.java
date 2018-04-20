package com.cn.hnust.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.SysdictionaryMapper;
import com.cn.hnust.pojo.Sysdictionary;
import com.cn.hnust.service.ISysdictService;

@Service("SysdictService")
public class SysdictServiceImpl implements ISysdictService{
	@Resource
	private	SysdictionaryMapper sysdictMapper;
	
	@Override
	public List<Map<String, Sysdictionary>> selectAllDict() {
		// TODO Auto-generated method stub
		return sysdictMapper.selectAllDict();
	}

	@Override
	public List<Map<String, Sysdictionary>> selectByDictEntryDict(Integer DICTENTRY) {
		// TODO Auto-generated method stub
		return sysdictMapper.selectByDictEntryDict(DICTENTRY);
	}

}
