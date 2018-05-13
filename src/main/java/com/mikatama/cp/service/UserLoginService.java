package com.mikatama.cp.service;

import java.util.List;

import com.mikatama.cp.bean.User;

public interface UserLoginService {

	public User getUserByUsername(String username);

	public void updatePassword(String password, String salt, int id);

	public List<User> getUser();

}
