package com.ssm.mapper;

import com.ssm.po.ShipAddress;

import java.util.List;

public interface ShipAddressMapper {
    //返回所有用户id为user_id的客户收货地址
    public List<ShipAddress> allAddress(int user_id);

    public List<ShipAddress> getAllAddress(int user_id);

    //删除地址数据
    public void deleteAddress(int id);

    public int insertAddress(ShipAddress shipAddress);

    public int updataAddr(String receiver_name, String receiver_mobile, String receiver_province, String receiver_city, String receiver_district, String receiver_address, String receiver_zip, int id);

}
