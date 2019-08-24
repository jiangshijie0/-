package com.ssm.service.Impl;

import com.ssm.mapper.ShipAddressMapper;
import com.ssm.po.ShipAddress;
import com.ssm.service.ShipAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShipAddressServiceImpl implements ShipAddressService {

    @Autowired
    ShipAddressMapper shipAddressMapper;

    @Override
    public List<ShipAddress> allAddress(int user_id) {
        return shipAddressMapper.allAddress(user_id);
    }

    @Override
    public List<ShipAddress> getAllAddress(int user_id){
        return shipAddressMapper.getAllAddress(user_id);
    }

    @Override
    public void deleteAddress(int id) {
        shipAddressMapper.deleteAddress(id);
    }

    @Override
    public int insertAddress(ShipAddress shipAddress){
        return shipAddressMapper.insertAddress(shipAddress);
    }

    @Override
    public int updataAddr(String receiver_name, String receiver_mobile, String receiver_province, String receiver_city, String receiver_district, String receiver_address, String receiver_zip, int id){
        return shipAddressMapper.updataAddr(receiver_name, receiver_mobile, receiver_province, receiver_city, receiver_district, receiver_address, receiver_zip, id);
    }

}
