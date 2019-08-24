package com.ssm.service;


import com.ssm.po.Cart;
import com.ssm.po.Order;
import com.ssm.po.OrderItem;
import com.ssm.po.Product;

import java.util.List;

public interface OrderService {
	public int createOrder(Order order);
	public int createOrderItem(OrderItem orderItem);
	public Cart queryCart(int cart_id);
	public List<Order> queryOrder(int userId);
	public List<OrderItem> queryOrderItem(String id);
	public void deleteCart(int id);

	public Product selectProduct(int cart_id);

	public List<Product> findCart(int user_id);
	public Product getProduct(int cart_id);

	public Order getOrder(String id);

	public void sure(String id);

	public void changeStatusTo7(String id);

	public void refundMoney(String order_no, int user_id, int balance);
	public void check(float result, int user_id);

	public void changeStatus2(String id);

}
