package com.mikatama.cp.dao;

import java.util.List;

import com.mikatama.cp.bean.OrderProcess;

public interface OrderProcessDao {

	public void insertOrder(OrderProcess orderProcess);

	public List<OrderProcess> getOrder();

	public String getLatestId();

	public OrderProcess getOrderById(int id);

	public void updateOrderStatusById(int status, int id);

}
