package com.mikatama.cp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mikatama.cp.bean.User;
import com.mikatama.cp.dao.UserLoginDao;
import com.mikatama.cp.service.UserLoginService;

@Service
public class UserLoginServiceImpl implements UserLoginService {

	@Autowired
	UserLoginDao userLoginDao;
	
	@Override
	public User getUserByUsername(String username){
		return userLoginDao.getUserByUsername(username);
	}
	
	@Override
	public void updatePassword(String password, String salt, int id){
		userLoginDao.updatePassword(password, salt, id);
	}
	
	@Override
	public List<User> getUser(){
		return userLoginDao.getUser();
	}
}
