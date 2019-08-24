package com.ssm.service.Impl;

import com.ssm.mapper.IndexMapper;
import com.ssm.po.*;
import com.ssm.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IndexServiceImpl implements IndexService {

    @Autowired
    IndexMapper indexMapper;

    @Override
    public Product selectOneProduct(int product_id) {
        return indexMapper.selectOneProduct(product_id);
    }

    @Override
    public List<Product> queryIndexProducts() {
        return indexMapper.selectIndexProduct();
    }

    @Override
    public List<Product> searchType(int type) {
        return indexMapper.searchType(type);
    }

    @Override
    public List<Product> searchTypePrice1(int type) {
        return indexMapper.searchTypePrice1(type);
    }

    @Override
    public List<Product> searchTypePrice2(int type) {
        return indexMapper.searchTypePrice2(type);
    }

    @Override
    public List<Product> searchTypeBuy1(int type) {
        return indexMapper.searchTypeBuy1(type);
    }

    @Override
    public List<Product> searchTypeBuy2(int type) {
        return indexMapper.searchTypeBuy2(type);
    }

    @Override
    public List<Product> searchTypeView1(int type) {
        return indexMapper.searchTypeView1(type);
    }

    @Override
    public List<Product> searchTypeView2(int type) {
        return indexMapper.searchTypeView2(type);
    }

    @Override
    public List<Product> search(String keyWord) {
        return indexMapper.search(keyWord);
    }

    @Override
    public List<Category> searchGetType(String keyWord){
        return indexMapper.searchGetType(keyWord);
    }

    @Override
    public List<Product> searchWithType(String keyWord, int type){
        return indexMapper.searchWithType(keyWord, type);
    }

    @Override
    public List<Product> getProductDetail(int product_id) {return indexMapper.getProductDetail(product_id); }

    @Override
    public List<Product> getColor(int product_id){
        return indexMapper.getColor(product_id);
    }

    @Override
    public List<Product> getSize(int product_id, String color){return indexMapper.getSize(product_id, color);}

    @Override
    public List<Order_item> getCommit(int product_id){
        return indexMapper.getCommit(product_id);
    }

    @Override
    public String queryUser(String userName) {
        return indexMapper.selectUser(userName);
    }

    @Override
    public User queryPersonalInformation(String userName) {
        return indexMapper.selectPersonalInformation(userName);
    }

    @Override
    public Integer signupUser(User user) {
        return indexMapper.insertUser(user);
    }

    @Override
    public Integer getStock(int product_id, String color, String size){
        return indexMapper.getStock(product_id, color, size);
    }

    @Override
    public Product getConfigByC_S(int product_id, String color, String size){
        return indexMapper.getConfigByC_S(product_id, color, size);
    }

    @Override
    public List<ShipAddress> getAllAddress(int user_id){
        return indexMapper.getAllAddress(user_id);
    }

    @Override
    public List<Product> cartList(int user_id){
        return indexMapper.cartList(user_id);
    }

    @Override
    public List<Product> searchType_s(String keyWord, int smallType){
        return indexMapper.searchType_s(keyWord, smallType);
    }

    @Override
    public List<Product> searchType_B(String keyWord, int BigType){
        return indexMapper.searchType_B(keyWord, BigType);
    }

    @Override
    public List<Category> searchGetType2(String keyword, int BigType){
        return indexMapper.searchGetType2(keyword, BigType);
    }

    @Override
    public List<Product> searchTypePrice1_B(String keyWord, int BigType) {
        return indexMapper.searchTypePrice1_B(keyWord, BigType);
    }

    @Override
    public List<Product> searchTypePrice1_s(String keyWord, int SmallType) {
        return indexMapper.searchTypePrice1_s(keyWord, SmallType);
    }

    @Override
    public List<Product> searchTypePrice2_B(String keyWord, int BigType) {
        return indexMapper.searchTypePrice2_B(keyWord, BigType);
    }

    @Override
    public List<Product> searchTypePrice2_s(String keyWord, int SmallType) {
        return indexMapper.searchTypePrice2_s(keyWord, SmallType);
    }

    @Override
    public List<Product> searchTypeBuy1_B(String keyWord, int BigType) {
        return indexMapper.searchTypeBuy1_B(keyWord, BigType);
    }

    @Override
    public List<Product> searchTypeBuy1_s(String keyWord, int SmallType) {
        return indexMapper.searchTypeBuy1_s(keyWord, SmallType);
    }

    @Override
    public List<Product> searchTypeBuy2_B(String keyWord, int BigType) {
        return indexMapper.searchTypeBuy2_B(keyWord, BigType);
    }

    @Override
    public List<Product> searchTypeBuy2_s(String keyWord, int SmallType) {
        return indexMapper.searchTypeBuy2_s(keyWord, SmallType);
    }

    @Override
    public List<Product> searchTypeView1_B(String keyWord, int BigType) {
        return indexMapper.searchTypeView1_B(keyWord, BigType);
    }

    @Override
    public List<Product> searchTypeView1_s(String keyWord, int SmallType) {
        return indexMapper.searchTypeView1_s(keyWord, SmallType);
    }

    @Override
    public List<Product> searchTypeView2_B(String keyWord, int BigType) {
        return indexMapper.searchTypeView2_B(keyWord, BigType);
    }

    @Override
    public List<Product> searchTypeView2_s(String keyWord, int SmallType) {
        return indexMapper.searchTypeView2_s(keyWord, SmallType);
    }

    @Override
    public List<Product> searchPrice1(String keyWord) {
        return indexMapper.searchPrice1(keyWord);
    }

    @Override
    public List<Product> searchPrice2(String keyWord) {
        return indexMapper.searchPrice2(keyWord);
    }

    @Override
    public List<Product> searchBuy1(String keyWord) {
        return indexMapper.searchBuy1(keyWord);
    }

    @Override
    public List<Product> searchBuy2(String keyWord) {
        return indexMapper.searchBuy2(keyWord);
    }

    @Override
    public List<Product> searchView1(String keyWord) {
        return indexMapper.searchView1(keyWord);
    }

    @Override
    public List<Product> searchView2(String keyWord) {
        return indexMapper.searchView2(keyWord);
    }

    @Override
    public int insertAddress(ShipAddress shipAddress){
        return indexMapper.insertAddress(shipAddress);
    }

    @Override
    public List<Product> getNew(){
        return indexMapper.getNew();
    }
}