package com.cn.hnust.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.UserMapper;
import com.cn.hnust.pojo.User;
import com.cn.hnust.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
	@Resource
	private UserMapper userDao;

	@Override
	public User getUserById(int userId) {
		return this.userDao.selectByPrimaryKey(userId);
	}

	@Override
	public User getUserByPassword(int userId, String Password) {
		// TODO Auto-generated method stub
		return this.userDao.selectByPassword(userId,Password);
	}

	@Override
	public int insertUser(User user) {
		// TODO Auto-generated method stub
		return (this.userDao.insert(user));
	}

}