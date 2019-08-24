package com.ssm.service.Impl;

import com.ssm.mapper.shopCartMapper;
import com.ssm.po.shopCart;
import com.ssm.service.shopCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class shopCartServiceImpl implements shopCartService {

    @Autowired
    shopCartMapper shopCartMapper;

    @Override
    public List<shopCart> cartList() {
        return shopCartMapper.cartList();
    }

    @Override
    public void addToCart(int user_id, int product_id, int config_id, int quantity, int checked) {
        shopCartMapper.addToCart(user_id,product_id,config_id,quantity,checked);
    }


}
