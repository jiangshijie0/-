package com.ssm.controller;

import com.alibaba.fastjson.JSON;
import com.ssm.po.*;
import com.ssm.service.IndexService;
import com.ssm.service.OrderService;
import com.ssm.service.ShipAddressService;
import com.ssm.service.shopCartService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.apache.http.HttpResponse;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {

    @Autowired
    IndexService indexService;

    @Autowired
    shopCartService shopService;

    @Autowired
    ShipAddressService shipAddressService;

    @Autowired
    OrderService orderService;

    @RequestMapping("mimile_index.html")
    public ModelAndView mimile_index(){
        ModelAndView modelAndView = new ModelAndView();
        List<Product> products = indexService.queryIndexProducts();
        modelAndView.addObject("products", products);
        modelAndView.setViewName("mimile/index");
        return modelAndView;
    }

    @RequestMapping("Search.html")
    public ModelAndView Search(@RequestParam("keyWord") String keyWord){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("keyWord", keyWord);
        modelAndView.addObject("order",0);
        modelAndView.addObject("BigType",0);
        modelAndView.addObject("SmallType", 0);

        List<Product> products = indexService.search(keyWord);
        List<Category> categories = indexService.searchGetType(keyWord);
        modelAndView.addObject("products", products);
        modelAndView.addObject("categories", categories);
        modelAndView.setViewName("mimile/Search");
        return modelAndView;
    }

    @RequestMapping("SearchType.html")
    public ModelAndView SearchType(@RequestParam("type") int type, @RequestParam("order") int order){
        ModelAndView modelAndView = new ModelAndView();
        List<Product> products;
        switch (order){
            case 1:
                products = indexService.searchTypePrice1(type);
                break;
            case 2:
                products = indexService.searchTypePrice2(type);
                break;
            case 3:
                products = indexService.searchTypeBuy1(type);
                break;
            case 4:
                products = indexService.searchTypeBuy2(type);
                break;
            case 5:
                products = indexService.searchTypeView1(type);
                break;
            case 6:
                products = indexService.searchTypeView2(type);
                break;
            default:
                products = indexService.searchType(type);
                break;
        }
        modelAndView.addObject("type", type);
        modelAndView.addObject("products", products);
        modelAndView.setViewName("mimile/SearchType");
        return modelAndView;
    }


    @RequestMapping("SearchType3.html")
    public ModelAndView SearchType3(@RequestParam("keyWord") String keyWord,
                                    @RequestParam("order") int order,
                                    @RequestParam("BigType") int BigType,
                                    @RequestParam("SmallType") int SmallType){
        ModelAndView modelAndView = new ModelAndView();
        List<Product> products = new ArrayList<Product>();
        List<Category> categories = new ArrayList<Category>();

        // 搜索大类
        if (SmallType == 0){
            if (BigType == 0){
                categories = indexService.searchGetType(keyWord);
                switch (order){
                    case 1:
                        products = indexService.searchPrice1(keyWord);
                        break;
                    case 2:
                        products = indexService.searchPrice2(keyWord);
                        break;
                    case 3:
                        products = indexService.searchBuy1(keyWord);
                        break;
                    case 4:
                        products = indexService.searchBuy2(keyWord);
                        break;
                    case 5:
                        products = indexService.searchView1(keyWord);
                        break;
                    case 6:
                        products = indexService.searchView1(keyWord);
                        break;
                    default:
                        products = indexService.search(keyWord);
                        break;
                }
            }
            else{
                categories = indexService.searchGetType2(keyWord, BigType);
                switch (order){
                    case 1:
                        products = indexService.searchTypePrice1_B(keyWord, BigType);
                        break;
                    case 2:
                        products = indexService.searchTypePrice2_B(keyWord, BigType);
                        break;
                    case 3:
                        products = indexService.searchTypeBuy1_B(keyWord, BigType);
                        break;
                    case 4:
                        products = indexService.searchTypeBuy2_B(keyWord, BigType);
                        break;
                    case 5:
                        products = indexService.searchTypeView1_B(keyWord, BigType);
                        break;
                    case 6:
                        products = indexService.searchTypeView2_B(keyWord, BigType);
                        break;
                    default:
                        products = indexService.searchType_B(keyWord, BigType);
                        break;
                }
            }
        }
        else{
            if (BigType == 0)
                categories = indexService.searchGetType(keyWord);
            else
                categories = indexService.searchGetType2(keyWord, BigType);
            switch (order){
                case 1:
                    products = indexService.searchTypePrice1_s(keyWord, SmallType);
                    break;
                case 2:
                    products = indexService.searchTypePrice2_s(keyWord, SmallType);
                    break;
                case 3:
                    products = indexService.searchTypeBuy1_s(keyWord, SmallType);
                    break;
                case 4:
                    products = indexService.searchTypeBuy2_s(keyWord, SmallType);
                    break;
                case 5:
                    products = indexService.searchTypeView1_s(keyWord, SmallType);
                    break;
                case 6:
                    products = indexService.searchTypeView2_s(keyWord, SmallType);
                    break;
                default:
                    products = indexService.searchType_s(keyWord, SmallType);
                    break;
            }
        }
        modelAndView.addObject("keyWord", keyWord);
        modelAndView.addObject("order", order);
        modelAndView.addObject("SmallType", SmallType);
        modelAndView.addObject("BigType", BigType);
        modelAndView.addObject("products", products);
        modelAndView.addObject("categories", categories);
        modelAndView.setViewName("mimile/Search");
        return modelAndView;
    }

    @RequestMapping("productDetail.html")
    public ModelAndView productDetail(@RequestParam("product_id") int product_id){
        ModelAndView modelAndView = new ModelAndView();
        Product product = indexService.selectOneProduct(product_id);
        List<Product> colors = indexService.getColor(product_id);

        List<Product> sizes = indexService.getSize(product_id, colors.get(0).getColor());

        JSONObject json = JSONObject.fromObject(product.getProduct_detail());
        String text = json.getString("text");
        JSONArray array = json.getJSONArray("images");
        List<String> imgs = new ArrayList<String>();
        for (int i = 0; i < array.size(); i++){
            imgs.add(array.getJSONObject(i).getString("image"));
        }

        String color = colors.get(0).getColor();
        modelAndView.addObject("detail_text", text);
        modelAndView.addObject("detail_images", imgs);
        modelAndView.addObject("colors", colors);
        modelAndView.addObject("color", color);
        modelAndView.addObject("product", product);
        modelAndView.addObject("product_id", product_id);
        modelAndView.addObject("sizes", sizes);
        modelAndView.setViewName("mimile/ProductDetail");
        return modelAndView;
    }

    @RequestMapping("productDetail2.html")
    public ModelAndView productDetail2(@RequestParam("product_id") int product_id, @RequestParam("color") String color){
        ModelAndView modelAndView = new ModelAndView();
        Product product = indexService.selectOneProduct(product_id);
        List<Product> colors = indexService.getColor(product_id);

        List<Product> sizes = indexService.getSize(product_id, color);

        JSONObject json = JSONObject.fromObject(product.getProduct_detail());
        String text = json.getString("text");
        JSONArray array = json.getJSONArray("images");
        List<String> imgs = new ArrayList<String>();
        for (int i = 0; i < array.size(); i++){
            imgs.add(array.getJSONObject(i).getString("image"));
        }

        modelAndView.addObject("detail_text", text);
        modelAndView.addObject("detail_images", imgs);
        modelAndView.addObject("colors", colors);
        modelAndView.addObject("color", color);
        modelAndView.addObject("product", product);
        modelAndView.addObject("product_id", product_id);
        modelAndView.addObject("sizes", sizes);
        modelAndView.setViewName("mimile/ProductDetail");
        return modelAndView;
    }

    @RequestMapping("commit.html")
    public ModelAndView commit(@RequestParam("product_id") int product_id){
        ModelAndView modelAndView = new ModelAndView();
        List<Order_item> order_items = indexService.getCommit(product_id);
        modelAndView.addObject("order_items", order_items);
        modelAndView.setViewName("mimile/commit");
        return modelAndView;
    }

    @RequestMapping("shopCart.html")
    public ModelAndView shopCart(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("mimile/shopCart");
        return modelAndView;
    }

    @RequestMapping("login.html")
    public
    String login(User user, HttpSession session) {
        System.err.println(user.getUserName() + "==========" + user.getUserPassword());
        String selectedPassword = indexService.queryUser(user.getUserName());

        String result = "fail";
        if (selectedPassword != null)
            if (selectedPassword.equals(user.getUserPassword())) {
                System.err.println("=====success=====");
                session.setAttribute("user",user);
                result = "success";
                return result;
            } else {
                System.err.println("=====fail=====");
                result = "fail";
                return result;
            }
            else return result;
    }

    @RequestMapping("checkLogin.html")
    @ResponseBody
    public String checkLogin(HttpSession session) {
        String result = "fail";
        if (session.getAttribute("user") != null) {
            result = "success";
        }else{
            System.err.println("check_null");
        }
        System.err.println(result);
        return result;
    }



    @RequestMapping("personalInfo.html")
    public ModelAndView personalInfo(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        System.err.println("not null");
        User user = indexService.queryPersonalInformation(((User)session.getAttribute("user")).getUserName());
        session.setAttribute("user", user);

        modelAndView.addObject("person", user);

        modelAndView.setViewName("mimile/personalInfo");
        return modelAndView;
    }

    @RequestMapping("signup.html")
    public @ResponseBody
    void signup(User user) {
        System.err.println(user.getUserName() + user.getUserPassword() + user.getMailAddress() + user.getPhoneNumber() + user.getQuestion() + user.getAnswer());
        indexService.signupUser(user);
    }

    @RequestMapping("logout.html")
    public void logout(HttpSession session, HttpServletResponse response) {
        System.err.println("logout.html");
        session.removeAttribute("user");
        try {
            response.sendRedirect("/");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping("test.html")
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("mimile/tempLogin");
        return modelAndView;
    }

    @RequestMapping("addToCart.html")
    public ModelAndView addToCart(@RequestParam("size") String size,
                                  @RequestParam("quantity") int quantity,
                                  @RequestParam("product_id") int product_id,
                                  @RequestParam("color") String color,
                                  HttpSession httpSession) {
        ModelAndView modelAndView = new ModelAndView();
        Product product = indexService.getConfigByC_S(product_id, color, size);
        User user = (User) httpSession.getAttribute("user");
        //将订单数据插入数据库(购物车)
        shopService.addToCart(user.getId(),product_id,product.getConfigure_id(),quantity,0);
        modelAndView.setViewName("mimile/addToCartSuccess");
        return modelAndView;
    }

    @RequestMapping("buyNow.html")
    public ModelAndView addAddress(@RequestParam("size") String size,
                                   @RequestParam("quantity") int quantity,
                                   @RequestParam("product_id") int product_id,
                                   @RequestParam("color") String color,
                                   HttpSession httpSession) {
        ModelAndView modelAndView = new ModelAndView();
        Product product = indexService.getConfigByC_S(product_id, color, size);
        User user = (User) httpSession.getAttribute("user");
        //将订单数据插入数据库(购物车)
        shopService.addToCart(user.getId(),product_id,product.getConfigure_id(),quantity,0);

        List<Product> products = orderService.findCart(user.getId());
        String[] newProductList = new String[1];
        newProductList[0] = "" + products.get(0).getCart_id();
        String newProductListJSON = JSON.toJSONString(newProductList);
        List<ShipAddress> allAddress = indexService.getAllAddress(user.getId());

        List<Product> cartList = new ArrayList<Product>();
        for (int i = 0; i < newProductList.length; i++){
            cartList.add(orderService.selectProduct(Integer.parseInt(newProductList[i])));
        }

        String cartListArr = "," + products.get(0).getCart_id();

        modelAndView.addObject("address", allAddress);
        modelAndView.addObject("productList", newProductListJSON);
        modelAndView.addObject("cartListArr", cartListArr);
        modelAndView.addObject("cartlists", cartList);
        modelAndView.setViewName("mimile/orderSubmit");
        return modelAndView;
    }

    @RequestMapping("goToShopCart.html")
    public ModelAndView goToShopCart(HttpSession httpSession) {
        ModelAndView modelAndView = new ModelAndView();
        User user = (User) httpSession.getAttribute("user");
        List<Product> cartlists = indexService.cartList(user.getId());
        modelAndView.addObject("cartlists",cartlists);
        modelAndView.setViewName("mimile/shopCart");
        return modelAndView;
    }


    @RequestMapping("getStock.html")
    public @ResponseBody
    String getStock(String json) {
        System.err.println("getStock()");
        ObjectMapper mapper = new ObjectMapper();
        Product product = null;
        try {
            product = mapper.readValue(json, Product.class);
            System.err.println(product.getColor()+product.getProduct_size());
        } catch (IOException e) {
            System.err.println("exception");
            e.printStackTrace();
        }
        int stock = indexService.getStock(product.getProduct_id(), product.getColor(), product.getProduct_size());
        System.err.println(stock);
        return "" + stock;
    }

    @RequestMapping("shopCart2.html")
    public ModelAndView shopCart2(@RequestParam("cartListArr") String cartListArr,
                                  HttpSession httpSession) {
        ModelAndView modelAndView = new ModelAndView();

        String productList[] = cartListArr.split(",");
        //移除第一个元素
        String[] newProductList = new String[productList.length - 1];
        System.arraycopy(productList, 1, newProductList, 0, newProductList.length);
        String newProductListJSON = JSON.toJSONString(newProductList);

        User user = (User) httpSession.getAttribute("user");
        //获取地址列表
        List<ShipAddress> allAddress = indexService.getAllAddress(user.getId());

        List<Product> cartList = new ArrayList<Product>();
        for (int i = 0; i < newProductList.length; i++){
            cartList.add(orderService.selectProduct(Integer.parseInt(newProductList[i])));
        }

        // 放入转发参数
        modelAndView.addObject("address", allAddress);
        modelAndView.addObject("productList", newProductListJSON);
        modelAndView.addObject("cartListArr", cartListArr);
        modelAndView.addObject("cartlists", cartList);
        modelAndView.setViewName("mimile/orderSubmit");
        return modelAndView;
    }

    @RequestMapping("inputAddress.html")
    public ModelAndView inputAddress() {
        ModelAndView modelAndView = new ModelAndView();


        modelAndView.setViewName("mimile/inputAddress");
        return modelAndView;
    }

    @RequestMapping("insert.html")
    public ModelAndView insert() {
        ModelAndView modelAndView = new ModelAndView();


        modelAndView.setViewName("mimile/insert");
        return modelAndView;
    }

    @RequestMapping("delete.html")
    public ModelAndView delete() {
        ModelAndView modelAndView = new ModelAndView();


        modelAndView.setViewName("mimile/delete");
        return modelAndView;
    }

    @RequestMapping("deleteAddress.html")
    public ModelAndView deleteAddress() {
        ModelAndView modelAndView = new ModelAndView();


        modelAndView.setViewName("mimile/deleteAddress");
        return modelAndView;
    }

    @RequestMapping("alterAddress.html")
    public ModelAndView alterAddress() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("mimile/alterAddress");
        return modelAndView;
    }

    @RequestMapping("alter.html")
    public ModelAndView alter() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("mimile/alter");
        return modelAndView;
    }

    @RequestMapping("deleteCart.html")
    public ModelAndView deleteCart(@RequestParam("cartListArr") String cartListArr){
        String temp[] = cartListArr.split(",");
        for (int i = 1; i < temp.length; i++){
            orderService.deleteCart(Integer.parseInt(temp[i]));
        }
        return new ModelAndView("forward:goToShopCart.html", null);
    }

    @RequestMapping("purchase.html")
    public @ResponseBody   String purchase(String jOrderData, String goods, HttpServletResponse response, HttpSession session) {
//        Map<String,Object> map = new HashMap<>();
        System.err.println("purchase mapping");
        System.err.println(jOrderData);
        System.err.println(goods);
        ObjectMapper mapper = new ObjectMapper();
        Order order;

        try {
            order = mapper.readValue(jOrderData, Order.class);
            order.setUser_id(((User)session.getAttribute("user")).getId());
            System.err.println(order.getCreate_time());
            order.setOrder_no(order.getCreate_time());



            JSONArray jsonArray = JSONArray.fromObject(goods);
            List<String> cartId = new ArrayList<String>();
            for (int i = 0; i < jsonArray.size(); i++) {
                cartId.add((String) jsonArray.get(i));
            }

            List<Cart> cartList = new ArrayList<Cart>();
            for (int i = 0; i < cartId.size(); i++) {
                cartList.add(orderService.queryCart(Integer.parseInt(cartId.get(i))));
            }
            List<Product> products = new ArrayList<Product>();
            for (int i = 0; i < cartList.size(); i++) {
                products.add(orderService.getProduct(cartList.get(i).getId()));
            }
            System.err.println(cartList.get(cartList.size() - 1).getConfigure_id());
            List<OrderItem> orderItems = new ArrayList<OrderItem>();
            float total = 0;
            for (int i = 0; i < cartList.size(); i++) {
                OrderItem orderItemTemp = new OrderItem();
                orderItemTemp.setUser_id(((User)session.getAttribute("user")).getId());
                orderItemTemp.setOrder_no(order.getCreate_time());
                orderItemTemp.setProduct_id(cartList.get(i).getProduct_id());
                orderItemTemp.setProduct_name(products.get(i).getProduct_name());
                orderItemTemp.setMain_image(products.get(i).getProduct_main_image());

                orderItemTemp.setQuantity(cartList.get(i).getQuantity());
                orderItemTemp.setCreate_time(order.getCreate_time());
                orderItemTemp.setConfigure_id(cartList.get(i).getConfigure_id());

                orderItemTemp.setTotal_price(BigDecimal.valueOf(products.get(i).getProduct_price() * cartList.get(i).getQuantity()));
                total += products.get(i).getProduct_price() * cartList.get(i).getQuantity();
                orderService.createOrderItem(orderItemTemp);
                orderItems.add(orderItemTemp);
            }
            order.setPayment(BigDecimal.valueOf(total));
            orderService.createOrder(order);
            System.err.println(orderItems.get(0).getProduct_id());
            for (int i = 0; i < cartId.size(); i++) {
                orderService.deleteCart(Integer.parseInt(cartId.get(i)));
            }
            System.err.println("***" + order.getOrder_no());


            // map.put("ABC",order);//data.ABC.order_no
            return "" + order.getOrder_no();
        } catch (IOException e) {
            System.err.println("json parse exception");
            e.printStackTrace();
        }
        return "-1";
    }


    @RequestMapping("orderList.html")
    public ModelAndView orderList(HttpSession session) {
        System.err.println("orderList()");
        ModelAndView modelAndView = new ModelAndView("mimile/orderList");
        if (((User)session.getAttribute("user")).getId() != null) {
            List<Order> orderList = orderService.queryOrder(((User)session.getAttribute("user")).getId());
            System.err.println(orderList.size());
            modelAndView.addObject("orderList", orderList);
        } else {
            System.err.println("尚未登陆");
        }
        return modelAndView;
    }

    @RequestMapping("orderDetail.html")
    public ModelAndView orderDetail(@RequestParam("id") String id,
									HttpSession httpSession) {
        System.err.println("orderDetail***" + id);
        ModelAndView modelAndView = new ModelAndView("mimile/orderdetails");
        List<OrderItem> orderItems = orderService.queryOrderItem(id);
        System.err.println(orderItems.get(0).getMain_image());
        String  orderItemsJSON = JSON.toJSONString(orderItems);
        modelAndView.addObject("orderItems", orderItems);
        modelAndView.addObject("orderItemsJSON", orderItemsJSON);
        User user = (User)httpSession.getAttribute("user");
        Order order1 = orderService.queryOrder(user.getId()).get(0);
        Order order = orderService.getOrder(id);

        if (order == null)
        	order = order1;
        //System.err.println("***" + order.getStatus());
        modelAndView.addObject("order1", order1);
        modelAndView.addObject("order", order);
        return	modelAndView;
    }

    @RequestMapping("addAddress.html")
    public ModelAndView addAddress(@RequestParam("name") String name,
                                   @RequestParam("tel") String tel,
                                   @RequestParam("province") String province,
                                   @RequestParam("city") String city,
                                   @RequestParam("country") String country,
                                   @RequestParam("street") String street,
                                   @RequestParam("zip") String zip,
                                   @RequestParam("cartListArr") String cartListArr,
                                   HttpSession httpSession){
        ShipAddress shipAddress = new ShipAddress();
        shipAddress.setReceiver_name(name);
        shipAddress.setReceiver_mobile(tel);
        shipAddress.setReceiver_province(province);
        shipAddress.setReceiver_city(city);
        shipAddress.setReceiver_district(country);
        shipAddress.setReceiver_address(street);
        shipAddress.setReceiver_zip(zip);

        User user = (User) httpSession.getAttribute("user");
        shipAddress.setUser_id(user.getId());
        indexService.insertAddress(shipAddress);
        return new ModelAndView("forward:shopCart2.html", null);
    }

    @RequestMapping("editAddress.html")
    public ModelAndView editAddress(@RequestParam("name") String name,
                                   @RequestParam("tel") String tel,
                                   @RequestParam("province") String province,
                                   @RequestParam("city") String city,
                                   @RequestParam("country") String country,
                                   @RequestParam("street") String street,
                                   @RequestParam("zip") String zip,
                                   @RequestParam("cartListArr") String cartListArr,
                                    @RequestParam("id") int id,
                                   HttpSession httpSession){

//        ShipAddress shipAddress = new ShipAddress();
//        shipAddress.setReceiver_name(name);
//        shipAddress.setReceiver_mobile(tel);
//        shipAddress.setReceiver_province(province);
//        shipAddress.setReceiver_city(city);
//        shipAddress.setReceiver_district(country);
//        shipAddress.setReceiver_address(street);
//        shipAddress.setReceiver_zip(zip);
        shipAddressService.updataAddr(name, tel, province, city, country, street, zip, id);
        return new ModelAndView("forward:shopCart2.html", null);
    }

    @RequestMapping("sureReceive")
    public void sureReceive(@RequestParam("id")String id, HttpServletResponse response){
        orderService.sure(id);
//		return new ModelAndView("test");
        try {
            response.sendRedirect("/orderDetail.html?id="+id);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping("refund")
    public void refund(@RequestParam("id") String id, HttpServletResponse response, HttpSession session) {
        orderService.changeStatusTo7(id);
        orderService.refundMoney(id, ((User)session.getAttribute("user")).getId(), ((User) session.getAttribute("user")).getBalance().intValue());
        try {
            response.sendRedirect("/orderDetail.html?id="+id);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping("newIndex.html")
    public ModelAndView newIndex() {
        ModelAndView modelAndView = new ModelAndView();
        List<Product> products = indexService.getNew();
        System.err.println(products.size());
        modelAndView.addObject("products", products);
        modelAndView.setViewName("mimile/new");
        return modelAndView;
    }

    @RequestMapping("pay.html")
    public ModelAndView pay(@RequestParam("id") String id,
                            @RequestParam("total_price") String total_price) {
        ModelAndView modelAndView = new ModelAndView();
        System.err.println("in pay:   " + id);
        modelAndView.addObject("id", id);
        modelAndView.addObject("total_price", total_price);
        modelAndView.setViewName("mimile/pay");
        return modelAndView;
    }
    @RequestMapping("check")
    public void check(@RequestParam("order_no")String order_no,HttpServletResponse response, HttpSession session){
        ;
        Order order = orderService.getOrder(order_no);
        orderService.changeStatus2(order_no);
        float result = ((User)session.getAttribute("user")).getBalance().floatValue() - order.getPayment().floatValue();

        orderService.check(result, ((User) session.getAttribute("user")).getId());
        try {
            response.sendRedirect("mimile_index.html");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}