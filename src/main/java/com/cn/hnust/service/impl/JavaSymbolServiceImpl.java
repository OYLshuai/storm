package com.cn.hnust.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.JavasymbolMapper;
import com.cn.hnust.pojo.Javasymbol;
import com.cn.hnust.service.IJavaSymbol;

@Service("javaSymbol")
public class JavaSymbolServiceImpl implements IJavaSymbol {

	@Resource
	private JavasymbolMapper javasymbol;
	
	@Override
	public List<Map<String, Javasymbol>> getAllJavasymbol() {
		// TODO Auto-generated method stub
		return this.javasymbol.selectall();
	}

}
