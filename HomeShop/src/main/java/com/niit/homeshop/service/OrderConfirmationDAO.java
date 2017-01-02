package com.niit.homeshop.service;

import java.util.List;

import com.niit.homeshop.model.OrderConfirmation;

public interface OrderConfirmationDAO {
	
	public List<OrderConfirmation> getAllOrderConfirmation();
	 public OrderConfirmation getOrderConfirmation(int order_id);
	 public void insertOrderConfirmation(OrderConfirmation orderconfirmation);
	 public void updateOrderConfirmation(OrderConfirmation orderconfirmation);
	 public void deleteOrderConfirmation(int id);
	 public void deleteAllOrderConfirmation(OrderConfirmation orderconfirmation);

}
