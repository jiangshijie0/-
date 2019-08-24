package com.ssm.po;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class Order {
	private int id;
	private Timestamp order_no;
	private int user_id;
	private int shipping_id;
	private BigDecimal payment;
	private int payment_type;
	private int postage;
	private String shipping_type;
	private String shipping_type_detail;
	private String method_detail;
	private String shipping_status;
	private int status;
	private Timestamp payment_time;
	private Timestamp send_time;
	private Timestamp end_time;
	private Timestamp close_time;
	private java.sql.Timestamp create_time;
	private Timestamp update_time;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

    public Timestamp getOrder_no() {
        return order_no;
    }

    public void setOrder_no(Timestamp order_no) {
        this.order_no = order_no;
    }

    public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getShipping_id() {
		return shipping_id;
	}

	public void setShipping_id(int shipping_id) {
		this.shipping_id = shipping_id;
	}

	public BigDecimal getPayment() {
		return payment;
	}

	public void setPayment(BigDecimal payment) {
		this.payment = payment;
	}

	public int getPayment_type() {
		return payment_type;
	}

	public void setPayment_type(int payment_type) {
		this.payment_type = payment_type;
	}

	public int getPostage() {
		return postage;
	}

	public void setPostage(int postage) {
		this.postage = postage;
	}

	public String getShipping_type() {
		return shipping_type;
	}

	public void setShipping_type(String shipping_type) {
		this.shipping_type = shipping_type;
	}

	public String getShipping_type_detail() {
		return shipping_type_detail;
	}

	public void setShipping_type_detail(String shipping_type_detail) {
		this.shipping_type_detail = shipping_type_detail;
	}

	public String getMethod_detail() {
		return method_detail;
	}

	public void setMethod_detail(String method_detail) {
		this.method_detail = method_detail;
	}

	public String getShipping_status() {
		return shipping_status;
	}

	public void setShipping_status(String shipping_status) {
		this.shipping_status = shipping_status;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}


	public Timestamp getPayment_time() {
		return payment_time;
	}

	public void setPayment_time(Timestamp payment_time) {
		this.payment_time = payment_time;
	}

	public Timestamp getSend_time() {
		return send_time;
	}

	public void setSend_time(Timestamp send_time) {
		this.send_time = send_time;
	}

	public Timestamp getEnd_time() {
		return end_time;
	}

	public void setEnd_time(Timestamp end_time) {
		this.end_time = end_time;
	}

	public Timestamp getClose_time() {
		return close_time;
	}

	public void setClose_time(Timestamp close_time) {
		this.close_time = close_time;
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
}
