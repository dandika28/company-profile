package com.mikatama.cp.dao;

import java.util.List;

import com.mikatama.cp.bean.OrderProduct;

public interface OrderProcessDao {

	public void insertOrder(OrderProduct orderProcess);

	public List<OrderProduct> getOrder();

	public String getLatestId();

	public OrderProduct getOrderById(int id);

	public void updateOrderStatusById(int status, int id);

}
