<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>mimile女装 | ShopCart </title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- start slider -->
    <link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" type="text/css" href="layui-master/src/css/layui.css"/>
    <script src="layui-master/dist/layui.js" charset="utf-8"></script>

    <link href="css/public.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/base.css"/>
    <link rel="stylesheet" type="text/css" href="css/checkOut.css" />

</head>
<body>
<div class="header_bg">
    <div class="wrap">
        <div class="header">
            <div class="logo">
                <a href="/mimile_index.html"><img src="images/logo.png" alt=""/> </a>
            </div>
            <div class="h_icon">
                <ul class="icon1 sub-icon1">
                    <li><a class="active-icon c1" href="goToShopCart.html"><i>$300</i></a>
                    </li>
                </ul>
            </div>
            <div class="h_search">
                <form action="Search.html" method="get" id="search-form" autocomplete="off">
                    <input id="keyWord" name="keyWord" type="text" value="">
                    <input type="submit" value="">
                </form>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<!-- start slider -->
<div class="container">
    <div class="checkout-box">
            <div class="checkout-box-ft">
                <!-- 商品清单 -->
                <div id="checkoutGoodsList" class="checkout-goods-box">
                    <div class="xm-box">
                        <div class="box-bd">
                            <dl class="checkout-goods-list">
                                <dt class="clearfix">
                                    <span class="col col-1">商品名称</span>
                                    <span class="col col-2">购买价格</span>
                                    <span class="col col-3">购买数量</span>
                                    <span class="col col-4">小计（元）</span>
                                </dt>
                                <c:forEach items="${cartlists}" var="cart">
                                    <dd class="item clearfix">
                                        <div class="item-row">
                                            <div class="col col-1">
                                                <div class="g-pic">
                                                    <input type="checkbox" name="CartCheckBox" class="women" value="${cart.cart_id}"/>
                                                </div>
                                                <div class="g-pic">
                                                    <img src="${cart.product_main_image}" srcset="http://i1.mifile.cn/a1/T11lLgB5YT1RXrhCrK!80x80.jpg 2x" width="40" height="40" />
                                                </div>
                                                <div class="g-info">
                                                    <a href="productDetail.html?product_id=${cart.product_id}" target="_blank">
                                                        ${cart.product_name}</a>
                                                </div>
                                            </div>
                                            <div class="col col-2">${cart.product_price}元</div>
                                            <div class="col col-3">${cart.quantity}</div>
                                            <div class="col col-4"><script>document.write(${cart.product_price} *
                                            ${cart.quantity})</script>元</div>
                                        </div>
                                    </dd>
                                </c:forEach>
                            </dl>
                        </div>
                    </div>

                </div>
                <!-- 商品清单 END -->
                <input type="hidden"  id="couponType" name="Checkout[couponsType]">
                <input type="hidden" id="couponValue" name="Checkout[couponsValue]">
                <div class="checkout-confirm">

                    <a href="mimile_index.html" class="btn btn-lineDakeLight btn-back-cart">继续购物</a>
                    <button class="btn btn-lineDakeLight btn-back-cart" onclick="deleteCartItem()">删除选中物品</button>
                    <button class="btn btn-lineDakeLight btn-back-cart" onclick="ToShopCart2()">立即下单</button>
                </div>
            </div>
    </div>
</div>

<div class="footer_bg">
    <div class="wrap">
        <div class="footer">
            <!-- start grids_of_4 -->
            <div class="grids_of_4">
                <div class="grid1_of_4">
                    <h4>featured sale</h4>
                    <ul class="f_nav">
                        <li><a href="">alexis Hudson</a></li>
                        <li><a href="">american apparel</a></li>
                        <li><a href="">ben sherman</a></li>
                        <li><a href="">big buddha</a></li>
                        <li><a href="">channel</a></li>
                        <li><a href="">christian audigier</a></li>
                        <li><a href="">coach</a></li>
                        <li><a href="">cole haan</a></li>
                    </ul>
                </div>
                <div class="grid1_of_4">
                    <h4>mens store</h4>
                    <ul class="f_nav">
                        <li><a href="">alexis Hudson</a></li>
                        <li><a href="">american apparel</a></li>
                        <li><a href="">ben sherman</a></li>
                        <li><a href="">big buddha</a></li>
                        <li><a href="">channel</a></li>
                        <li><a href="">christian audigier</a></li>
                        <li><a href="">coach</a></li>
                        <li><a href="">cole haan</a></li>
                    </ul>
                </div>
                <div class="grid1_of_4">
                    <h4>women store</h4>
                    <ul class="f_nav">
                        <li><a href="">alexis Hudson</a></li>
                        <li><a href="">american apparel</a></li>
                        <li><a href="">ben sherman</a></li>
                        <li><a href="">big buddha</a></li>
                        <li><a href="">channel</a></li>
                        <li><a href="">christian audigier</a></li>
                        <li><a href="">coach</a></li>
                        <li><a href="">cole haan</a></li>
                    </ul>
                </div>
                <div class="grid1_of_4">
                    <h4>quick links</h4>
                    <ul class="f_nav">
                        <li><a href="">alexis Hudson</a></li>
                        <li><a href="">american apparel</a></li>
                        <li><a href="">ben sherman</a></li>
                        <li><a href="">big buddha</a></li>
                        <li><a href="">channel</a></li>
                        <li><a href="">christian audigier</a></li>
                        <li><a href="">coach</a></li>
                        <li><a href="">cole haan</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>
<div class="footer_bg1">
    <div class="wrap">
        <div class="footer">
            <!-- scroll_top_btn -->

            <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
            <!--end scroll_top_btn -->
            <div class="copy">
                <p class="link">Copyright &copy; 2014.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a> -  More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a></p>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<script>
    function deleteCartItem() {
        var checkBox = document.getElementsByName("CartCheckBox");
        var tempString = "";
        for (var i = 0; i < checkBox.length; i++){
            if (checkBox[i].checked)
                tempString = tempString + "," + checkBox[i].value;
        }
        window.location.href="deleteCart.html?cartListArr=" + tempString;
    }
</script>
<script>
    function ToShopCart2() {
        var checkBox = document.getElementsByName("CartCheckBox");
        var tempString = "";
        for (var i = 0; i < checkBox.length; i++){
            if (checkBox[i].checked)
                tempString = tempString + "," + checkBox[i].value;
        }
        window.location.href="shopCart2.html?cartListArr=" + tempString;
    }
</script>
</body>
</html>

