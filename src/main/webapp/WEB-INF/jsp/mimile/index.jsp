<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>mimile女装 | Home </title>
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
<!-- start header -->
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
<!-- start slider -->
<div id="da-slider" class="da-slider">
    <div class="da-slide">
        <h2>最新商品</h2>
        <p>这是最新商品推荐广告</p>
        <a href="newIndex.html" class="da-link">买！！！</a>
        <div class="da-img"><img src="images/slider1.png" alt="image01" /></div>
    </div>
    <div class="da-slide">
        <h2>最热商品</h2>
        <p>这是最热商品推荐广告</p>
        <a href="details.html" class="da-link">瞧瞧</a>
        <div class="da-img"><img src="images/slider2.png" alt="image01" /></div>
    </div>
    <div class="da-slide">
        <h2>猜你喜欢</h2>
        <p>我打赌你绝对会喜欢这些的</p>
        <a href="details.html" class="da-link">走着！</a>
        <div class="da-img"><img src="images/slider3.png" alt="image01" /></div>
    </div>
    <div class="da-slide">
        <h2>每日推荐</h2>
        <p>随机推荐一些商品</p>
        <a href="details.html" class="da-link">shop now</a>
        <div class="da-img"><img src="images/slider4.png" alt="image01" /></div>
    </div>
    <nav class="da-arrows">
        <span class="da-arrows-prev"></span>
        <span class="da-arrows-next"></span>
    </nav>
</div>
</div>


<!-- start main -->
<div class="main_bg">
    <div class="wrap">
        <div class="main">
            <!-- start grids_of_3 -->
            <c:if test="${products.size() >= 9}">
            <c:forEach begin="0" end="8" varStatus="i" step="3">
                <div class="grids_of_3">
                    <c:forEach begin="0" end="2" varStatus="j">

                        <div class="grid1_of_3">
                            <a href="/productDetail.html?product_id=${products.get(i.index + j.index).product_id}">
                                <img style="height: 250px" src="${products.get(i.index + j.index).product_main_image}"/><br>
                                <p style="font-size: 20px">${products.get(i.index + j.index).product_name}</p><br>
                                <div class="price">
                                    <h4 style="font-size: 20px">￥${products.get(i.index + j.index).product_price}<span>查看详情</span></h4>
                                </div>
                                <span class="b_btm"></span>
                            </a>
                        </div>

                    </c:forEach>
                    <div class="clear"></div>
                </div>
            </c:forEach>
            </c:if>

            <!-- end grids_of_3 -->
        </div>
    </div>
</div>
<!-- start footer -->
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

</body>
</html>
