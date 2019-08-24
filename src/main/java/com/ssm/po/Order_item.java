package com.ssm.po;

import java.sql.Timestamp;

public class Order_item {
    private Integer id;
    private Integer user_id;
    private Integer order_id;
    private Integer product_id;
    private Integer product_subid;
    private double  current_unit_price;
    private Integer quantity;
    private double  total_price;
    private String  order_item_comment;
    private Timestamp comment_create_time;
    private String  create_time;
    private String  update_time;
    private String  preview_image;
    private String  color;
    private String  product_size;

    public void setComment_create_time(Timestamp comment_create_time) {
        this.comment_create_time = comment_create_time;
    }

    public String getPreview_image() {
        return preview_image;
    }

    public void setPreview_image(String preview_image) {
        this.preview_image = preview_image;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getProduct_size() {
        return product_size;
    }

    public void setProduct_size(String product_size) {
        this.product_size = product_size;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Integer order_id) {
        this.order_id = order_id;
    }

    public Integer getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

    public Integer getProduct_subid() {
        return product_subid;
    }

    public void setProduct_subid(Integer product_subid) {
        this.product_subid = product_subid;
    }

    public double getCurrent_unit_price() {
        return current_unit_price;
    }

    public void setCurrent_unit_price(double current_unit_price) {
        this.current_unit_price = current_unit_price;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public double getTotal_price() {
        return total_price;
    }

    public void setTotal_price(double total_price) {
        this.total_price = total_price;
    }

    public String getOrder_item_comment() {
        return order_item_comment;
    }

    public void setOrder_item_comment(String order_item_comment) {
        this.order_item_comment = order_item_comment;
    }

    public Timestamp getComment_create_time() {
        return comment_create_time;
    }

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    public String getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(String update_time) {
        this.update_time = update_time;
    }
}
