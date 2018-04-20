package com.cn.hnust.service;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Sysdictionary;

public interface ISysdictService {
	public List<Map<String,Sysdictionary>> selectAllDict();

    public List<Map<String,Sysdictionary>> selectByDictEntryDict(Integer DICTENTRY);
}
