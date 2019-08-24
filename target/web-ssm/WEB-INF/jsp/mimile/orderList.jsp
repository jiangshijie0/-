<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@page language="java" pageEncoding="UTF-8" %>
<html class="a-ws a-js a-audio a-video a-canvas a-svg a-drag-drop a-geolocation a-history a-webworker a-autofocus a-input-placeholder a-textarea-placeholder a-local-storage a-gradients a-transform3d a-touch-scrolling a-text-shadow a-text-stroke a-box-shadow a-border-radius a-border-image a-opacity a-transform a-transition a-ember"
	  data-19ax5a9jf="dingo" data-aui-build-date="3.18.11-2018-07-10">
<head>
		<title>我的订单</title>

		<link rel="stylesheet" href="../../../css/61jfAPjyQVL.css">
		<link rel="stylesheet" href="../../../css/41eCJ5t0wpL.css">
		<link rel="stylesheet" href="../../../css/01r438jwuL.css">
		<link rel="stylesheet" href="../../../layui-master/src/layui.js">
		<script type="text/javascript" src="../../../js/jquery-3.2.1.js"></script>
		<link rel="stylesheet" type="text/css" href="../../../layui-master/src/css/layui.css"/>
		<script>
			//订单状态:0-已取消-1-未付款，2-已付款，4-已发货，5-交易成功，6-交易关闭
            function statusAll() {
                console.log("statusALL");
                var element0 = document.getElementsByName("0");
                for (var index in element0) {
                    element0.item(index).setAttribute("style", "display: block;");
                }
                var element1 = document.getElementsByName("1");
                for (var index in element1) {
                    element1.item(index).setAttribute("style", "display: block;");
                }
                var element2 = document.getElementsByName("2");
                for (var index in element2) {
                    element2.item(index).setAttribute("style", "display: block;");
                }
                var element3 = document.getElementsByName("3");
                for (var index in element3) {
                    element3.item(index).setAttribute("style", "display: block;");
                }
                var element4 = document.getElementsByName("4");
                for (var index in element4) {
                    element4.item(index).setAttribute("style", "display: block;");
                }
                var element5 = document.getElementsByName("5");
                for (var index in element5) {
                    element5.item(index).setAttribute("style", "display: block;");
                }
            }

			function status1() {
                console.log("status1");
				var element0 = document.getElementsByName("0");
				for (var index in element0) {
				    element0.item(index).setAttribute("style", "display: none;");
				}
                var element1 = document.getElementsByName("1");
                for (var index in element1) {
                    element1.item(index).setAttribute("style", "display: block;");
                }
                var element2 = document.getElementsByName("2");
                for (var index in element2) {
                    element2.item(index).setAttribute("style", "display: none;");
                }
                var element3 = document.getElementsByName("3");
                for (var index in element3) {
                    element3.item(index).setAttribute("style", "display: none;");
                }
                var element4 = document.getElementsByName("4");
                for (var index in element4) {
                    element4.item(index).setAttribute("style", "display: none;");
                }
				var element5 = document.getElementsByName("5");
				for (var index in element5) {
				    element5.item(index).setAttribute("style", "display: none;");
				}
            }

            function status0() {
                var element0 = document.getElementsByName("0");
                for (var index in element0) {
                    element0.item(index).setAttribute("style", "display: block;");
                }
                var element1 = document.getElementsByName("1");
                for (var index in element1) {
                    element1.item(index).setAttribute("style", "display: none;");
                }
                var element2 = document.getElementsByName("2");
                for (var index in element2) {
                    element2.item(index).setAttribute("style", "display: none;");
                }
                var element3 = document.getElementsByName("3");
                for (var index in element3) {
                    element3.item(index).setAttribute("style", "display: none;");
                }
                var element4 = document.getElementsByName("4");
                for (var index in element4) {
                    element4.item(index).setAttribute("style", "display: none;");
                }
                var element5 = document.getElementsByName("5");
                for (var index in element5) {
                    element5.item(index).setAttribute("style", "display: none;");
                }
            }

            function status5() {
                var element0 = document.getElementsByName("0");
                if (element0 == null) alert("test");
                for (var index in element0) {
                    element0.item(index).setAttribute("style", "display: none;");
                }
                var element1 = document.getElementsByName("1");
                for (var index in element1) {
                    element1.item(index).setAttribute("style", "display: none;");
                }
                var element2 = document.getElementsByName("2");
                for (var index in element2) {
                    element2.item(index).setAttribute("style", "display: none;");
                }
                var element3 = document.getElementsByName("3");
                for (var index in element3) {
                    element3.item(index).setAttribute("style", "display: none;");
                }
                var element4 = document.getElementsByName("4");
                for (var index in element4) {
                    element4.item(index).setAttribute("style", "display: none;");
                }
                var element5 = document.getElementsByName("5");
                for (var index in element5) {
                    element5.item(index).setAttribute("style", "display: block;");
                }
            }
		</script>
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
<body class="a-m-cn a-aui_149818-c a-aui_152852-c a-aui_157141-c a-aui_158613-c a-aui_160684-c a-aui_57326-c a-aui_72554-c a-aui_accessibility_49860-c a-aui_attr_validations_1_51371-c a-aui_bolt_62845-c a-aui_perf_130093-c a-aui_tnr_140932-c a-aui_ux_113788-c a-aui_ux_114039-c a-aui_ux_138741-c a-aui_ux_145937-c a-aui_ux_60000-c a-meter-animate">

<div class="header_bg">
	<div class="wrap">
		<div class="header">
			<div class="logo">
				<a href="/mimile_index.html"><img src="images/logo.png" alt=""/> </a>
			</div>
			<div class="h_icon">
				<ul class="icon1 sub-icon1">
					<li><a class="active-icon c1" href="goToShopCart.html"><i></i></a>
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
					<li>
						<a onclick="window.location.href='orderList.html'">order list</a>
					</li>
					<li>
						<a onclick="window.location.href='logout.html'">logout</a>
					</li>
				</ul>
			</div>
			<div class="h_menu">
				<ul>
					<li><a onclick="statusAll()">全部订单</a></li> |
					<li><a onclick="status1()" >待支付</a></li> |
					<li><a onclick="status0()" >已取消</a></li> |
					<li><a onclick="status5()" >已完成</a></li> |
				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>

<div id="a-page">
	<%--<button value="" class="layui-btn" onclick="statusAll()">全部订单</button>--%>
	<%--<button value="" class="layui-btn" onclick="status1()">待支付</button>--%>
	<%--<button value="" class="layui-btn" onclick="status0()">已取消</button>--%>
	<%--<button value="" class="layui-btn" onclick="status5()">已完成</button>--%>
	<div data-order-age-in-seconds="" class="a-box-group a-spacing-base order">
		<div class="a-box a-color-offset-background order-info">
			<c:forEach items="${orderList}" var="order">
				<div class="a-box-inner" name="${order.status}">
					<div class="a-fixed-right-grid">
						<div class="a-fixed-right-grid-inner" style="padding-right:290px">
							<div class="a-fixed-right-grid-col a-col-left" style="padding-right:0%;float:left;">
								<div class="a-row">
									<div class="a-column a-span3">
										<div class="a-row a-size-mini"><span
												class="a-color-secondary label"> 已下订单: ${order.id} </span></div>
										<div class="a-row a-size-base"><span
												class="a-color-secondary value"> ${order.create_time} </span></div>
									</div>
									<div class="a-column a-span2">
										<div class="a-row a-size-mini"><span class="a-color-secondary label"> 总价 </span>
										</div>
										<div class="a-row a-size-base"><span
												class="a-color-secondary value"> ${order.payment} </span></div>
									</div>
									<div class="a-column a-span7 recipient a-span-last"></div>
								</div>
							</div>
							<div class="a-fixed-right-grid-col actions a-col-right"
								 style="width:290px;margin-right:-290px;float:left;">

								<div class="a-row a-size-base">
									<ul class="a-unordered-list a-nostyle a-vertical">
										<a class="a-link-normal" onclick="window.location.href='/orderDetail.html?id='+'${order.order_no}'">
											查看订单详情(含支付信息) </a>
										<i class="a-icon a-icon-text-separator" role="img"></i>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>
</body>
</html>