package com.mikatama.cp.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mikatama.cp.bean.OrderProcess;
import com.mikatama.cp.bean.Product;
import com.mikatama.cp.dao.OrderProcessDao;

@Repository
public class OrderProcessDaoImpl implements OrderProcessDao {

	Logger logger = LoggerFactory.getLogger(OrderProcessDaoImpl.class);
	
	DataSource dataSource;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	String sqlInsertOrderProcess = "INSERT INTO order_product(product_id, name, address, email, phone, total, imageName, updateBy, status)"
			+ " VALUES (?,?,?,?,?,?,?,?,?)";
	String sqlGetAllOrderProduct = "SELECT * FROM order_product order by id";
	String sqlGetSequenceId = "SELECT Auto_increment FROM information_schema.tables WHERE table_schema = 'mikatama' and table_name=?";
	String sqlGetOrderById = "SELECT * FROM order_product WHERE id=?";
	String sqlUpdateOrderStatusById = "UPDATE order_product SET status = ? WHERE id=?";
	
	public void setDataSource(DataSource dataSource){
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public void updateOrderStatusById(int status, int id){
		jdbcTemplate.update(sqlUpdateOrderStatusById, new Object[] {status, id});
	}
	
	@Override
	public OrderProcess getOrderById(int id){
		List<OrderProcess> orders = null;
		orders = jdbcTemplate.query(sqlGetOrderById, new Object[]{id}, new OrderProcessRowMapper());
		if(orders.size() > 0){
			logger.info("Order name: " + orders.get(0).getFullname());
			return orders.get(0);
		}else
			return null;
	}
	
	@Override
	public void insertOrder(OrderProcess orderProcess){
		jdbcTemplate.update(sqlInsertOrderProcess, new Object[] {orderProcess.getProductId(),
				orderProcess.getFullname(), orderProcess.getAddress(), orderProcess.getEmail(), orderProcess.getPhone(), 
				orderProcess.getTotal(), orderProcess.getImageName(), null, 0});
	}
	
	@Override
	public List<OrderProcess> getOrder(){
		List<OrderProcess> list = null;
		list = jdbcTemplate.query(sqlGetAllOrderProduct, new OrderProcessRowMapper());
		return list;
	}
	
	@Override
	public String getLatestId(){
		String id = jdbcTemplate.queryForObject(sqlGetSequenceId, new Object[] {"order_product"}, String.class);
		return id;
	}
}

class OrderProcessRowMapper implements RowMapper<OrderProcess>{
	
	@Override
	public OrderProcess mapRow(ResultSet rs, int rowNum) throws SQLException{
		OrderProcess orderProcess = new OrderProcess();
		orderProcess.setOrderId(rs.getString("id"));
		orderProcess.setProductId(rs.getString("product_id"));
		orderProcess.setFullname(rs.getString("name"));
		orderProcess.setAddress(rs.getString("address"));
		orderProcess.setEmail(rs.getString("email"));
		orderProcess.setPhone(rs.getString("phone"));
		orderProcess.setTotal(rs.getInt("total"));
		orderProcess.setImageName(rs.getString("imageName"));
		orderProcess.setUpdateBy(rs.getString("updateBy"));
		orderProcess.setStatus(rs.getInt("status"));
		orderProcess.setCreatedDate(rs.getDate("created_date"));
		return orderProcess;
	}
}
