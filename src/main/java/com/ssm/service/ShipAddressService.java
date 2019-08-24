package com.ssm.service;

import com.ssm.po.ShipAddress;
import com.ssm.po.ShipAddress;

import java.util.List;

public interface ShipAddressService {
    List<ShipAddress> allAddress(int user_id);

    public List<ShipAddress> getAllAddress(int user_id);

    void deleteAddress(int id);

    public int insertAddress(ShipAddress shipAddress);

    public int updataAddr(String receiver_name, String receiver_mobile, String receiver_province, String receiver_city, String receiver_district, String receiver_address, String receiver_zip, int id);

}
