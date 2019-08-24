package com.ssm.mapper;

import com.ssm.po.shopCart;

import java.util.List;

public interface shopCartMapper {
    public List<shopCart> cartList();

    public void addToCart(int user_id,int product_id,int config_id,int quantity,int checked);
}
