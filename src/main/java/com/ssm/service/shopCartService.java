package com.ssm.service;

import com.ssm.po.shopCart;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public interface shopCartService {
    public List<shopCart> cartList();

    public void addToCart(int user_id,int product_id,int config_id,int quantity,int checked);
}
