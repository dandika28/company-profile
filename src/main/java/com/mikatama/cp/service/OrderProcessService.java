package com.mikatama.cp.service;

import java.util.List;

import com.mikatama.cp.bean.OrderProduct;

public interface OrderProcessService {

	public boolean insertOrder(OrderProduct orderProcess);

	public List<OrderProduct> getOrderProcess();

	public String getLatestId();

	public OrderProduct getOrderById(int id);

	public boolean updateOrderStatusById(int status, int id);

}
