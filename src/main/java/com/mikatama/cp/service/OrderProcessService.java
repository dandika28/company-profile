package com.mikatama.cp.service;

import java.util.List;

import com.mikatama.cp.bean.OrderProcess;

public interface OrderProcessService {

	public boolean insertOrder(OrderProcess orderProcess);

	public List<OrderProcess> getOrderProcess();

	public String getLatestId();

	public OrderProcess getOrderById(int id);

	public boolean updateOrderStatusById(int status, int id);

}
