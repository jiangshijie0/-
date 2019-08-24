package com.ssm.po;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class OrderItem {
	private int id;
	private int user_id;
	private Timestamp order_no;
	private int product_id;
	private String product_name;
	private String main_image;
	private BigDecimal current_unit_price;
	private int quantity;
	private BigDecimal total_price;
	private String order_item_comment;
	private Timestamp create_time;
	private Timestamp update_time;
	private int configure_id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public Timestamp getOrder_no() {
		return order_no;
	}

	public void setOrder_no(Timestamp order_no) {
		this.order_no = order_no;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getMain_image() {
		return main_image;
	}

	public void setMain_image(String main_image) {
		this.main_image = main_image;
	}

	public BigDecimal getCurrent_unit_price() {
		return current_unit_price;
	}

	public void setCurrent_unit_price(BigDecimal current_unit_price) {
		this.current_unit_price = current_unit_price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public BigDecimal getTotal_price() {
		return total_price;
	}

	public void setTotal_price(BigDecimal total_price) {
		this.total_price = total_price;
	}

	public String getOrder_item_comment() {
		return order_item_comment;
	}

	public void setOrder_item_comment(String order_item_comment) {
		this.order_item_comment = order_item_comment;
	}

	public Timestamp getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Timestamp create_time) {
		this.create_time = create_time;
	}

	public Timestamp getUpdate_time() {
		return update_time;
	}

	public void setUpdate_time(Timestamp update_time) {
		this.update_time = update_time;
	}

	public int getConfigure_id() {
		return configure_id;
	}

	public void setConfigure_id(int configure_id) {
		this.configure_id = configure_id;
	}
}
