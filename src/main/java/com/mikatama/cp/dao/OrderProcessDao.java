package com.mikatama.cp.dao;

import java.util.List;

import com.mikatama.cp.bean.OrderProcess;

public interface OrderProcessDao {

	public void insertOrder(OrderProcess orderProcess);

	public List<OrderProcess> getOrder();

	public String getLatestId();

}
