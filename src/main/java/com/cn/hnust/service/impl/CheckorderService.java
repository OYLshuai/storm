package com.cn.hnust.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.CheckorderMapper;
import com.cn.hnust.pojo.Checkorder;
import com.cn.hnust.service.ICheckorderService;

@Service("CheckorderService")
public class CheckorderService implements ICheckorderService{

	@Resource
	private CheckorderMapper checkorderMapper;
	
	@Override
	public List<Map<String, Checkorder>> getAllCheckorder() {
		// TODO Auto-generated method stub
		return checkorderMapper.selectAllOrder();
	}

	@Override
	public Checkorder getCheckorderByNo(String idno, Integer roomno) {
		// TODO Auto-generated method stub
		return checkorderMapper.selectOrderByNo(idno, roomno);
	}

	@Override
	public List<Map<String, Checkorder>> getCheckorderByTerm(Checkorder order) {
		// TODO Auto-generated method stub
		return checkorderMapper.selectOrderByTerm(order);
	}

	@Override
	public int invalidCheckorder(String idno, Integer roomno, String orderState, String remark) {
		// TODO Auto-generated method stub
		checkorderMapper.invalidCheckorder(idno, roomno, orderState, remark);
		return 0;
	}

	@Override
	public int addCheckorder(Checkorder order) {
		// TODO Auto-generated method stub
		checkorderMapper.insert(order);
		return 0;
	}

	@Override
	public int delCheckorder(String idno, Integer roomno) {
		// TODO Auto-generated method stub
		checkorderMapper.delCheckorder(idno, roomno);
		return 0;
	}

	@Override
	public List<Map<String, Checkorder>> getOrderCustomer() {
		// TODO Auto-generated method stub
		return checkorderMapper.selectOrderCustomer();
	}

	@Override
	public List<Map<String, Checkorder>> getOneCheckorder(String idno, Integer roomno) {
		// TODO Auto-generated method stub
		return checkorderMapper.selectOneOrder(idno, roomno);
	}

}
