package com.ssm.mapper;


import com.ssm.po.Cart;
import com.ssm.po.Order;
import com.ssm.po.OrderItem;
import com.ssm.po.Product;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.List;

public interface OrderMapper {
	public int insertOrder(Order order);
	public int insertOrderItem(OrderItem orderItem);
	public Cart selectCart(int cart_id);
	public List<Order> selectOrder(int userId);
	public List<OrderItem> selectOrderItem(Timestamp timestamp);
	public void deleteCart(int id);

	public Product selectProduct(int cart_id);

	public List<Product> findCart(int user_id);


	public Order selectOneOrder(Timestamp timestamp);

	public void updateStatus(Timestamp timestamp);

	public void updataStatusTo7(Timestamp timestamp);

	public void refundMoney(int payment, int user_id);

	public void check(BigDecimal result, int user_id);
	public void updateStatus2(Timestamp timestamp);
}
