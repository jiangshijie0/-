package com.ssm.service.Impl;


import com.ssm.mapper.OrderMapper;
import com.ssm.po.Cart;
import com.ssm.po.Order;
import com.ssm.po.OrderItem;
import com.ssm.po.Product;
import com.ssm.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	OrderMapper orderMapper;

	@Override
	public int createOrder(Order order) {
		return orderMapper.insertOrder(order);
	}

	@Override
	public int createOrderItem(OrderItem orderItem) {
		return orderMapper.insertOrderItem(orderItem);
	}

    @Override
    public Cart queryCart(int cart_id) {
        return orderMapper.selectCart(cart_id);
    }
	@Override
	public List<Order> queryOrder(int userId) {
		return orderMapper.selectOrder(userId);
	}

	@Override
	public List<OrderItem> queryOrderItem(String id) {
		Timestamp timestamp = Timestamp.valueOf(id);

		return orderMapper.selectOrderItem(timestamp);
	}

	@Override
	public void deleteCart(int id) {
		orderMapper.deleteCart(id);
	}

	@Override
	public Product selectProduct(int cart_id){
		return orderMapper.selectProduct(cart_id);
	}

	@Override
	public List<Product> findCart(int user_id){
		return orderMapper.findCart(user_id);
	}

	@Override
	public Product getProduct(int cart_id) {
		return orderMapper.selectProduct(cart_id);
	}

	@Override
	public Order getOrder(String id) {
		Timestamp timestamp = Timestamp.valueOf(id);
		System.err.println(timestamp);
		return orderMapper.selectOneOrder(timestamp);
	}

	@Override
	public void sure(String id) {
		Timestamp timestamp = Timestamp.valueOf(id);
		orderMapper.updateStatus(timestamp);
	}

	@Override
	public void changeStatusTo7(String id) {
		Timestamp timestamp = Timestamp.valueOf(id);
		orderMapper.updataStatusTo7(timestamp);
	}

	@Override
	public void refundMoney(String order_no, int user_id, int balance) {
		Timestamp timestamp = Timestamp.valueOf(order_no);
		Order order = orderMapper.selectOneOrder(timestamp);
		orderMapper.refundMoney(order.getPayment().intValue() + balance, user_id);
	}
	@Override
	public void check(float result, int user_id) {
		orderMapper.check(BigDecimal.valueOf(result), user_id);
	}

	@Override
	public void changeStatus2(String id) {
		Timestamp timestamp = Timestamp.valueOf(id);
		orderMapper.updateStatus2(timestamp);
	}
}
