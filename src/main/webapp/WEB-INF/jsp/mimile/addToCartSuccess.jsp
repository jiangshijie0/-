<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>mimile女装 | Home </title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- start slider -->
    <link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" type="text/css" href="layui-master/src/css/layui.css"/>

</head>
<body>
<!-- start header -->
<div class="header_bg">
    <div class="wrap">
        <div class="header">
            <div class="logo">
                <a href="/mimile_index.html"><img src="images/logo.png" alt=""/> </a>
            </div>
            <div class="h_icon">
                <ul class="icon1 sub-icon1">
                    <li><a class="active-icon c1" href=""><i>ShopCart</i></a>
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
<h1 style="font-size: 50px;" align="center">商品添加成功</h1><br><br><br><br><br>
<div align="center">
    <button style="font-size: 30px" class="layui-btn" onclick="window.location.href='mimile_index.html'">继续购物&nbsp;&nbsp;</button>
    <button style="font-size: 30px" class="layui-btn" onclick="window.location.href='goToShopCart.html'">查看购物车</button>
</div>

<br><br><br><br><br>

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
</body>
</html>

