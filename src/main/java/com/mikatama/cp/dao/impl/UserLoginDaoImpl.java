package com.mikatama.cp.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import com.mikatama.cp.controller.LoginController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.mikatama.cp.bean.User;
import com.mikatama.cp.dao.UserLoginDao;

@Repository
public class UserLoginDaoImpl implements UserLoginDao {

	Logger logger = LoggerFactory.getLogger(UserLoginDaoImpl.class);

	DataSource dataSource;

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	String sqlGetUserByUsername = "SELECT * FROM user where username=?";
	String sqlUpdatePassword = "UPDATE user SET PASSWORD=?, SALT=? WHERE ID=?";
	String sqlGerUser = "SELECT * FROM user";
	
	public void setDataSource(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<User> getUser(){
		List<User> user = null;

		user = jdbcTemplate.query(sqlGerUser, new UserRowMapper());
		
		return user;
	}
	
	@Override
	public User getUserByUsername(String username){
		System.out.println("Username in Dao: "+ username);
		List<User> userResult = null;
		
		userResult = jdbcTemplate.query(sqlGetUserByUsername, 
				new Object[] {username}, new UserRowMapper());
		
		if (userResult.size() > 0)
			return userResult.get(0);
		else
			return null;
	}
	
	@Override
	public void updatePassword(String password, String salt, int id){
		jdbcTemplate.update(sqlUpdatePassword, new Object[] {password, salt, id});
	}
}

class UserRowMapper implements RowMapper<User>{
	
	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException{
		User user = new User();
		user.setId(rs.getInt("id"));
		user.setUsername(rs.getString("username"));
		user.setPassword(rs.getString("password"));
		user.setSalt(rs.getString("salt"));
		user.setName(rs.getString("name"));
		user.setEmployeeId(rs.getString("employee_id"));
		
		return user;
	}
}
