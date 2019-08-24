package com.ssm.mapper;

import com.ssm.po.*;

import java.util.List;

public interface IndexMapper {
    public Product selectOneProduct(int product_id);

    public List<Product> selectIndexProduct();

    public List<Product> searchType(int type);

    public List<Product> searchTypePrice1(int type);

    public List<Product> searchTypePrice2(int type);

    public List<Product> searchTypeBuy1(int type);

    public List<Product> searchTypeBuy2(int type);

    public List<Product> searchTypeView1(int type);

    public List<Product> searchTypeView2(int type);

    public List<Product> search(String keyWord);

    public List<Category> searchGetType(String keyWord);

    public List<Product> searchWithType(String keyWord, int type);

    public List<Product> getProductDetail(int product_id);

    public List<Product> getColor(int product_id);

    public List<Product> getSize(int product_id, String color);

    public List<Order_item> getCommit(int product_id);

    public String selectUser(String userName);

    public User selectPersonalInformation(String userName);

    public Integer insertUser(User user);

    public Integer getStock(int product_id, String color, String size);

    public Product getConfigByC_S(int product_id, String color, String size);

    public List<ShipAddress> getAllAddress(int user_id);

    public List<Product> cartList(int user_id);


    public List<Product> searchType_s(String keyWord, int smallType);

    public List<Product> searchType_B(String keyWord, int BigType);

    public List<Category> searchGetType2(String keyword, int BigType);

    public List<Product> searchTypePrice1_B(String keyWord, int BigType);

    public List<Product> searchTypePrice1_s(String keyWord, int SmallType);

    public List<Product> searchTypePrice2_B(String keyWord, int BigType);

    public List<Product> searchTypePrice2_s(String keyWord, int SmallType);

    public List<Product> searchTypeBuy1_B(String keyWord, int BigType);

    public List<Product> searchTypeBuy1_s(String keyWord, int SmallType);

    public List<Product> searchTypeBuy2_B(String keyWord, int BigType);

    public List<Product> searchTypeBuy2_s(String keyWord, int SmallType);

    public List<Product> searchTypeView1_B(String keyWord, int BigType);

    public List<Product> searchTypeView1_s(String keyWord, int SmallType);

    public List<Product> searchTypeView2_B(String keyWord, int BigType);

    public List<Product> searchTypeView2_s(String keyWord, int SmallType);

    public  List<Product> searchPrice1(String keyWord);

    public  List<Product> searchPrice2(String keyWord);

    public  List<Product> searchBuy1(String keyWord);

    public  List<Product> searchBuy2(String keyWord);

    public  List<Product> searchView1(String keyWord);

    public  List<Product> searchView2(String keyWord);

    public int insertAddress(ShipAddress shipAddress);

    public List<Product> getNew();
}
