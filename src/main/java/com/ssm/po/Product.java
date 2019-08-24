package com.ssm.po;

public class Product {
    private Integer product_id;
    private Integer category_id;
    private String  product_name;
    private String  product_subtitle;
    private String  product_style;
    private String  product_main_image;
    private String  product_sub_image;
    private String  product_detail;
    private double  product_price;
    private String  product_create_time;
    private String  product_page_view;
    private Integer configure_id;
    private String  color;
    private String  product_color_icon;
    private String  preview_image;
    private String  product_size;
    private Integer stock;
    private Integer product_buy;
    private int Cart_id;
    private String username;
    private int quantity;
    private int checked;

    public int getCart_id() {
        return Cart_id;
    }

    public void setCart_id(int cart_id) {
        Cart_id = cart_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getChecked() {
        return checked;
    }

    public void setChecked(int checked) {
        this.checked = checked;
    }

    public Integer getProduct_buy() {
        return product_buy;
    }

    public void setProduct_buy(Integer product_buy) {
        this.product_buy = product_buy;
    }

    public Integer getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

    public Integer getCategory_id() {
        return category_id;
    }

    public void setCategory_id(Integer category_id) {
        this.category_id = category_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getProduct_subtitle() {
        return product_subtitle;
    }

    public void setProduct_subtitle(String product_subtitle) {
        this.product_subtitle = product_subtitle;
    }

    public String getProduct_style() {
        return product_style;
    }

    public void setProduct_style(String product_style) {
        this.product_style = product_style;
    }

    public String getProduct_main_image() {
        return product_main_image;
    }

    public void setProduct_main_image(String product_main_image) {
        this.product_main_image = product_main_image;
    }

    public String getProduct_sub_image() {
        return product_sub_image;
    }

    public void setProduct_sub_image(String product_sub_image) {
        this.product_sub_image = product_sub_image;
    }

    public String getProduct_detail() {
        return product_detail;
    }

    public void setProduct_detail(String product_detail) {
        this.product_detail = product_detail;
    }

    public double getProduct_price() {
        return product_price;
    }

    public void setProduct_price(double product_price) {
        this.product_price = product_price;
    }

    public String getProduct_create_time() {
        return product_create_time;
    }

    public void setProduct_create_time(String product_create_time) {
        this.product_create_time = product_create_time;
    }

    public String getProduct_page_view() {
        return product_page_view;
    }

    public void setProduct_page_view(String product_page_view) {
        this.product_page_view = product_page_view;
    }

    public Integer getConfigure_id() {
        return configure_id;
    }

    public void setConfigure_id(Integer configure_id) {
        this.configure_id = configure_id;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getProduct_color_icon() {
        return product_color_icon;
    }

    public void setProduct_color_icon(String product_color_icon) {
        this.product_color_icon = product_color_icon;
    }

    public String getPreview_image() {
        return preview_image;
    }

    public void setPreview_image(String preview_image) {
        this.preview_image = preview_image;
    }

    public String getProduct_size() {
        return product_size;
    }

    public void setProduct_size(String product_size) {
        this.product_size = product_size;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }
}
