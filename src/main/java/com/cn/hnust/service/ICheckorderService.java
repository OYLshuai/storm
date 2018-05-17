package com.cn.hnust.service;

import java.util.List;
import java.util.Map;

import com.cn.hnust.pojo.Checkorder;

public interface ICheckorderService {
	public List<Map<String,Checkorder>> getAllCheckorder();
	
	public Checkorder getCheckorderByNo(String idno,Integer roomno);
	
	public List<Map<String,Checkorder>> getCheckorderByTerm(Checkorder order);
	
	public List<Map<String,Checkorder>> getOneCheckorder(String idno,Integer roomno);
	
	public List<Map<String,Checkorder>> getOrderCustomer();
	
	public int invalidCheckorder(String idno,Integer roomno,String orderState,String remark);
	
	public int addCheckorder(Checkorder order);

	public int delCheckorder(String idno,Integer roomno);
	
	public int changeCheckOrder(Integer orderno);
}
