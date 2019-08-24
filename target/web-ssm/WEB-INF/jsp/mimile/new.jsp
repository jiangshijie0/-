<%--
  Created by IntelliJ IDEA.
  User: Seven
  Date: 2018/8/3
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>mimile | 新品推荐</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link type="text/css" href="css/mbundle.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <!-- start slider -->
    <link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
    <script type="text/javascript" src="js/jquery.cslider.js"></script>

    <link rel="stylesheet" type="text/css" href="layui-master/src/css/layui.css"/>
    <script src="layui-master/src/layui.js"></script>


    <script type="text/javascript">
        $(function() {
            $('#da-slider').cslider();
        });
    </script>
    <!-- Owl Carousel Assets -->
    <link href="css/owl.carousel.css" rel="stylesheet">
    <!-- Owl Carousel Assets -->
    <!-- Prettify -->
    <script src="js/owl.carousel.js"></script>
    <script>
        $(document).ready(function() {

            $("#owl-demo").owlCarousel({
                items : 4,
                lazyLoad : true,
                autoPlay : true,
                navigation : true,
                navigationText : ["",""],
                rewindNav : false,
                scrollPerPage : false,
                pagination : false,
                paginationNumbers: false,
            });

        });
    </script>
    <!-- //Owl Carousel Assets -->
    <!-- start top_js_button -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
            });
        });
    </script>
    <script>
        //判断用户输入的电子邮箱格式是否正确
        function checkEmail(email){
            var myReg=/^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
            return myReg.test(email);
        }
    </script>
    <script>
        function signup() {
            var ifSuccess = false;
            layui.use("layer", function () {
                var layer = layui.layer;
                layer.open({
                    type: 1,
                    title: "",
                    content: $("#signupDialog"),
                    btn: ["cancel", "signup"],
                    area: '800px',
                    btn1: function (index, layero) {
                        console.info("function cancel");
                        layer.close(index);
                    },
                    btn2: function (index, layero) {
                        var userName = $("#inputUserName").val();
                        var userPassword = $("#inputUserPassword").val();
                        var repeatePassword = $("#repeatePassword").val();
                        var mailAddress = $("#inputMailAddress").val();
                        var phoneNumber = $("#inputPhoneNumber").val();
                        var question = $("#inputQuestion").val();
                        var answer = $("#inputAnswer").val();
                        //尚未排除空格名称
                        if (userName === "") {
                            layui.use("layer", function () {
                                var layer = layui.layer;
                                layer.open({
                                    content: "请输入用户名"
                                });
                            });
                            return false;
                        }else if (userPassword === "") {
                            layui.use("layer", function () {
                                var layer = layui.layer;
                                layer.open({
                                    content: "请输入密码"
                                });
                            });
                            return false;
                        } else if (repeatePassword !== userPassword) {
                            layui.use("layer", function () {
                                var layer = layui.layer;
                                layer.open({
                                    content: "两次密码输入不同"
                                });
                            });
                            return false;
                        } else if (phoneNumber.length !== 11) {
                            layui.use("layer", function () {
                                var layer = layui.layer;
                                layer.open({
                                    content: "请输入正确手机号码"
                                });
                            });
                            return false;
                        } else if (!checkEmail(mailAddress)) {
                            layui.use("layer", function () {
                                var layer = layui.layer;
                                layer.open({
                                    content: "邮箱格式不正确"
                                });
                            });
                            return false;
                        }
                        $.ajax({
                            url: 'signup.html',
                            type: 'post',
                            dataType: 'json',
                            data: {
                                userName: userName,
                                userPassword: userPassword,
                                mailAddress: mailAddress,
                                phoneNumber: phoneNumber,
                                question: question,
                                answer: answer
                            },
                            success: function (data) {
                                console.info("function success");
                                ifSuccess = true;
                                console.info(ifSuccess);
                                layui.use("layer", function () {
                                    var layer = layui.layer;
                                    layer.open({
                                        content:"" + ifSuccess
                                    });
                                });
                            },
                            error: function (data) {
                                console.info("function error");
                                layui.use("layer", function () {
                                    var layer = layui.layer;
                                    layer.open({
                                        content:"" + ifSuccess
                                    });
                                });
                            }
                        });
                    }
                });
            });
            return false;
        }
    </script>
    <script>
        function login() {
            var flag = "fail";
            $.ajax({
                url: 'checkLogin.html',
                async: false,
                success: function (data) {
                    flag = data;
                }
            });
            if (flag === "fail")
                layui.use("layer", function () {
                    var layer = layui.layer;

                    layer.open({
                        type: 1,
                        title: "",
                        content: $("#loginDialog"), //这里content是一个普通的String
                        area: '800px',
                        btn: '提交',
                        btn1: function (index, layero) {
                            var email = $("#email").val();
                            var pw = $("#pw").val();
                            console.info(pw);
                            console.info(email);
                            $.ajax({
                                url: 'login.html',
                                async:false,
                                type: 'post',
                                dataType: 'json',
                                data: {
                                    userName: email,
                                    userPassword: pw
                                },
                                success: function (data) {
                                    if (data.equals("success")) {

                                    } else if (data.equals("fail")) {
                                        alert("fail");
                                    }
                                }
                            });
                            window.location.href='personalInfo.html';
                            layer.close(index);
                            return false;
                        }
                    });
                });
            else window.location.href='personalInfo.html';
        }
    </script>
    <script>
        function logout() {
            window.location.href='../logout.html';
            alert("注销成功");
        }
    </script>

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
                    <li><a class="active-icon c1" href="goToShopCart.html"><i>ShopCart</i></a>
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
<div class="header_btm">
    <div class="wrap">
        <div class="header_sub">
            <div class="h_menu" style="float: right">
                <ul>
                    <li><a onclick="login()">个人信息</a></li>
                </ul>
            </div>
            <div class="h_menu">
                <ul>
                    <li class="active"><a href="mimile_index.html">主页</a></li> |
                    <li><a href="SearchType.html?type=1&order=0">上装</a></li> |
                    <li><a href="SearchType.html?type=2&order=0">下装</a></li> |
                    <li><a href="SearchType.html?type=3&order=0">裙子</a></li> |
                    <li><a href="SearchType.html?type=4&order=0">帽子</a></li> |
                    <li><a href="SearchType.html?type=5&order=0">鞋子</a></li> |
                    <li><a href="SearchType.html?type=6&order=0">贴身</a></li>
                </ul>
                <%--<button onclick="login()" class="layui-btn">个人信息</button>--%>
                <%--<button onclick="logout()" class="layui-btn">logout</button>--%>
                <%--<button onclick="signup()" class="layui-btn">注册</button>--%>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>

<div class="main_bg">
    <div class="wrap">
        <div class="main">
            <!-- start gallery_sale  -->
            <div class="gallery1">
                <div class="container">
                    <div id="portfoliolist">
                        <c:forEach items="${products}" var="p">
                            <div class="portfolio logo1" data-cat="logo">
                                <div class="portfolio-wrapper">
                                    <a  href="productDetail.html?product_id=${p.product_id}">
                                        <img style="height: 250px" src="${p.product_main_image}"/>
                                    </a>
                                    <div class="label">
                                        <div class="label-text">
                                            <a class="text-title">${p.product_name}</a>
                                        </div>
                                        <div class="label-bg"></div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div><!-- container -->
                <script type="text/javascript" src="js/fliplightbox.min.js"></script>
                <script type="text/javascript">$('body').flipLightBox()</script>
                <div class="clear"> </div>
            </div>
            <!---End-gallery----->
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
<!-- start footer -->
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
<div id="loginDialog" style="display: none; margin: auto">
    <table id="login-2015" class="fancy-center">
        <tbody>
        <tr>
            <td>
                <form id="loginform" method="post" action="">
                    <div id="" style="width: 800px" class="login-left">
                        <ul>
                            <li class="title fancy-title gapm40 padt45">会员登录</li>
                            <li class="gapm30">
                                <input id="email" name="email" type="text" value="" placeholder="用户名">
                            </li>
                            <li id="pwd" class="gapm30">
                                <input autocomplete="off" id="pw" name="pw" type="password" value="" placeholder="密码">
                            </li>
                            <li><a href="../login.do">忘记密码</a></li>
                            <li><a onclick="signup()">立即注册</a></li>
                        </ul>
                    </div>
                </form>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div id="signupDialog" style="display:none;" class="login-left">
    <table class="fancy-center">
        <tbody>
        <tr>
            <td>
                <form id="formSignup" method="post" action="">
                    <div id="divSignup" style="width: 800px" class="login-left">
                        <ul>
                            <li class="title fancy-title gapm40 padt45">会员注册</li>
                            <li class="gapm30">
                                <input id="inputUserName" class="layui-input" title="" placeholder="用户名"/>
                            </li>
                            <li class="gapm30">
                                <input id="inputUserPassword" type="password" class="layui-input" title="" placeholder="密码"/>
                            </li>
                            <li class="gapm30">
                                <input id="repeatePassword" type="password" class="layui-input" title="" placeholder="确认密码"/>
                            </li>
                            <li class="gapm30">
                                <input id="inputMailAddress" class="layui-input" title="" placeholder="邮件地址"/>
                            </li>
                            <li class="gapm30">
                                <input id="inputPhoneNumber" class="layui-input" title="" placeholder="电话号码"/>
                            </li>
                            <li class="gapm30">
                                <input id="inputQuestion" class="layui-input" title="" placeholder="密保问题"/>
                            </li>
                            <li class="gapm30">
                                <input id="inputAnswer" class="layui-input" title="" placeholder="答案"/>
                            </li>
                        </ul>
                    </div>
                </form>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<script type="text/javascript">
    $(document).ready(function() {

        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
        };


        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
</body>
</html>
