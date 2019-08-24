<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Seven
  Date: 2018/8/3
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>mimile | order Detail</title>

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
    <script>
    function check() {
    console.log("check()");
    var order_id = '${order.order_no}';
    window.location.href='check.html?order_no='+order_id;
    }
    </script>
    <!-- Owl Carousel Assets -->
    <link href="../../../css/owl.carousel.css" rel="stylesheet">
    <!-- Owl Carousel Assets -->
    <!-- Prettify -->
    <script src="../../../js/owl.carousel.js"></script>
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
    <script type="text/javascript" src="../../../js/move-top.js"></script>
    <script type="text/javascript" src="../../../js/easing.js"></script>
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
        function sure() {
            console.log("sure()");
            var id = '${order.order_no}';
            window.location.href='sureReceive.html?id='+id;
        }

        function refund() {
            console.log("refund()");
            var id = '${order.order_no}';
            window.location.href='refund.html?id='+id;
        }

        function check() {
            console.log("check()");
            var order_id = '${order.order_no}';
            window.location.href='check.html?order_no='+order_id;
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

<div id="a-page">
    <link href="../../../css/71wCLq4pRQL.css" rel="stylesheet">
    <img src="../../../images/global-sprite-32-v1.png" style="display:none" alt="">
    <style type="text/css">
        div.navFooterLine {
            white-space: normal;
        }

        .nav-locale-cn .nav-sprite-v1 #nav-logo {
            padding: 6px 40px 0 32px;
        }

        .nav-locale-cn .nav-sprite-v1 #nav-logo .nav-logo-base {
            background-position: -10px -120px;
            width: 86px;
            height: 37px;
        }

        .nav-locale-cn .nav-sprite-v1 #nav-logo .nav-logo-tagline {
            top: 40px;
            left: 79px;
        }
    </style>
    <div id="digitalOrderSummaryContainer">
        <style type="text/css">

            .orderSummary .currencyINR {
                display: inline-block;
                background: url("https://images-na.ssl-images-amazon.com/images/G/31/common/sprites/sprite-site-wide-2.png");
                background-repeat: no-repeat;
                background-position: -16px -333px;
                background-size: 320px 455px;
                width: 6px;
                height: 10px;
                line-height: 10px;
                margin-right: 1px;
                margin-bottom: 0;
                margin-bottom: -2px;
                vertical-align: middle;
                font-size: 8px;
                text-decoration: inherit;
            }

            #digitalOrderSummaryContainer {
                margin-left: 40px;
                margin-right: 40px;
                min-width: 920px;
            }

        </style>
        <style type="text/css">

            table {
                margin-bottom: 0px;
            }

            td, th {
                padding: 0px;
            }

            table.sample {
                border-width: 3px 3px 3px 3px;
                border-spacing: 0px;
                border-style: solid solid solid solid;
                border-color: rgb(221, 221, 204) rgb(221, 221, 204) rgb(221, 221, 204) rgb(221, 221, 204);
                border-collapse: separate;
            }

            table.narrowed {
                width: 90%
            }

            ul.nomarker {
                color: black;
                margin: 0px 0px 0px 0px;
            }

            ul.nomarker li {
                list-style-type: none;
                padding: 0px;
                margin: 0px;
            }

            span.section-header {
                font-size: 135%;
            }

            .mfa-message-width {
                width: 80%;
                margin: auto;
            }

            .attention-required-message {
                width: 80%;
                margin: auto;
            }

            .attention-required-button {
                min-width: 220px;
            }

            .attention-required-button-row {
                white-space: nowrap;
            }

        </style>
        <div class="orderSummary"><br>
            <b class="h1">
                订单概览 ${order.order_no} </b> <br>
            <br>
            <br>
            <table class="narrowed" width="90%" cellspacing="0" cellpadding="0" border="0" align="center">
                <tbody>
                <tr>
                    <td colspan="1" border="0" cellpadding="0" cellspacing="0" width="27" valign="top" bgcolor="#ddddcc"
                        align="left"><img src="../../../images/checked-icon.gif" width="27" height="22" border="0"></td>
                    <td bgcolor="#ddddcc"><b>数字订单： ${order.create_time}</b></td>
                    <td border="0" cellpadding="0" cellspacing="0" width="0" valign="top" bgcolor="#ddddcc"
                        align="right"><img src="../../../images/tan-top-right-round-corner.gif" width="10" height="28"
                                           border="0"></td>
                </tr>
                <tr>
                    <td colspan="4">
                        <table class="sample" width="100%" cellspacing="0" cellpadding="0" align="center">
                            <tbody>
                            <tr>
                                <td valign="top">
                                    <div style="padding:10px;"><b>用户id:   </b>${order.user_id}<br>${order.status}
                                    </div>
                                </td>
                                <td style="background-image: url(https://images-cn.ssl-images-amazon.com/images/G/28/digital/sitbv3/digital_order_summary/tan-block._CB144093546_.gif)"
                                    width="3"><img src="../../../images/tan-block.gif" width="3" height="100%"
                                                   border="0"></td>
                                <td>
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                        <tbody>
                                        <tr>
                                            <td>
                                                <table width="100%" cellspacing="0" cellpadding="0">
                                                    <tbody>
                                                    <tr>
                                                        <td style="padding:10px" align="left"><b></b><br></td>
                                                        <td style="padding:10px" align="left"><b>订购商品</b><br></td>
                                                        <td style="padding:10px" align="right"><b>价格</b></td>
                                                    </tr>
                                                    <c:forEach items="${orderItems}" var="orderItem">
                                                        <tr>
                                                            <script>console.log(${orderItem.main_image});</script>
                                                            <td style="padding:10px" valign="top" align="left">
                                                                <img src="${orderItem.main_image}" style="width: 100px; height: 100px;"/></td>
                                                            <td style="padding:10px" valign="top" align="left"><b>
                                                                <a href="">${orderItem.product_name}</a></b>
                                                                * ${orderItem.quantity}<br><br><br></td>
                                                            <td style="padding:10px" valign="top" align="right">
                                                                ￥ ${orderItem.total_price} <!--%perl--></td>
                                                        </tr>
                                                    </c:forEach>
                                                    <tr>
                                                        <td colspan="3"><img src="../../../images/tan-block.gif"
                                                                             width="100%" height="3" border="0"></td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <table width="100%" cellspacing="0" cellpadding="0">
                                                    <tbody>
                                                    <tr>
                                                        <td style="padding:10px; width:60%;" valign="top"
                                                            align="left"></td>

                                                        <td id="totalprice" style="padding:10px; white-space: nowrap;"
                                                            align="right"></td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <c:if test="${order.status == 1}">
                            <button class="layui-btn" id="receive" style="display: none;" onclick="sure()">确认收货</button>
                            <button class="layui-btn" id="back" onclick="refund()" style="display:none;">退款</button>
                            <button class="layui-btn" id="check" onclick="check()" style="display: block;">付款</button>
                        </c:if>

                        <c:if test="${order.status == 2}">
                            <button class="layui-btn" id="receive" style="display: block;" onclick="sure()">确认收货</button>
                            <button class="layui-btn" id="back" onclick="refund()" style="display:none;">退款</button>
                            <button class="layui-btn" id="check" onclick="check()" style="display: none;">付款</button>
                        </c:if>

                        <c:if test="${order.status == 5}">
                            <button class="layui-btn" id="receive" style="display: none;" onclick="sure()">确认收货</button>
                            <button class="layui-btn" id="back" onclick="refund()" style="display: block;">退款</button>
                            <button class="layui-btn" id="check" onclick="check()" style="display: none;">付款</button>
                        </c:if>


                    </td>
                </tr>
                </tbody>
            </table>
            <br>
        </div>
    </div>
    <br>
</div>





</body>
</html>
