package com.cn.hnust.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.DictindexMapper;
import com.cn.hnust.pojo.Dictindex;
import com.cn.hnust.service.IDictIndex;

@Service("DictIndexService")
public class DictIndexService implements IDictIndex {
	@Resource
	private DictindexMapper dictIndexMapper;
	
	@Override
	public List<Map<String, Dictindex>> selectAllDictEntry() {
		// TODO Auto-generated method stub
		return dictIndexMapper.selectAllDictEntry();
	}

}
