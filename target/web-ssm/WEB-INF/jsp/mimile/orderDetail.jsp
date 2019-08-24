<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<%@ page language="java" pageEncoding="UTF-8" %>
<html>
<head>
	<title>The Aditii Website Template | Sale </title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<link href="../../../css/style.css" rel="stylesheet" type="text/css" media="all"/>

	<link href="../../../css/mbundle.css" rel="stylesheet" type="text/css" media="all"/>
	<script src="../../../js/jquery.min.js"></script>
	<!-- start gallery_sale -->
	<script type="text/javascript" src="../../../js/jquery.easing.min.js"></script>
	<script type="text/javascript" src="../../../js/jquery.mixitup.min.js"></script>
	<%--<script type="text/javascript">--%>
        <%--$(function () {--%>

            <%--var filterList = {--%>

                <%--init: function () {--%>

                    <%--// MixItUp plugin--%>
                    <%--// http://mixitup.io--%>
                    <%--$('#portfoliolist').mixitup({--%>
                        <%--targetSelector: '.portfolio',--%>
                        <%--filterSelector: '.filter',--%>
                        <%--effects: ['fade'],--%>
                        <%--easing: 'snap',--%>
                        <%--// call the hover effect--%>
                        <%--onMixEnd: filterList.hoverEffect()--%>
                    <%--});--%>

                <%--},--%>

                <%--hoverEffect: function () {--%>

                    <%--// Simple parallax effect--%>
                    <%--$('#portfoliolist .portfolio').hover(--%>
                        <%--function () {--%>
                            <%--$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');--%>
                            <%--$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');--%>
                        <%--},--%>
                        <%--function () {--%>
                            <%--$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');--%>
                            <%--$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');--%>
                        <%--}--%>
                    <%--);--%>

                <%--}--%>

            <%--};--%>

            <%--// Run the show!--%>
            <%--filterList.init();--%>


        <%--});--%>
	<%--</script>--%>
	<!-- start top_js_button -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
        // jQuery(document).ready(function ($) {
        //     $(".scroll").click(function (event) {
        //         event.preventDefault();
        //         $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1200);
        //     });
        // });
	</script>
	<script>
        $(document).ready(function () {
            console.log("***");
            console.log(${order.status});
            if (('${order.status}' === '1'))
            {
                document.getElementById("check").setAttribute("style", "display: block;");
            }
            if (('${order.status}' === '2' || '${order.status}' === '4'))
            {
                document.getElementById("receive").setAttribute("style", "display: block;");
            }
            if (('${order.status}' === '5'))
            {
                document.getElementById("back").setAttribute("style", "display: block;");
            }
            var dataStr = '${orderItemsJSON}';
            console.log("***" + '${orderItemsJSON}');
            var obj = JSON.parse(dataStr);
            var total = 0;
            for (var index in obj) {
                var temp = Number(obj[index].total_price);
                if ((temp + "") === "NaN") continue;
                // console.log(typeof(temp));
                // console.log((temp));
                total += temp.valueOf();
                // console.log(temp);
            }
            var td = document.getElementById("totalprice");
            // console.log("total***" + total);
            td.innerHTML = " 商品小计：￥ " + total + "<br>\n" + "----<br>\n" + "<b>此订单总额： ￥ " + total + "</b><br>";
        });

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
</head>
<body>
<!-- start header -->
<div class="header_bg">
	<div class="wrap">
		<div class="header">
			<div class="logo">
				<a href="index.html"><img src="images/logo.png" alt=""/> </a>
			</div>
			<div class="h_icon">
				<ul class="icon1 sub-icon1">
					<li><a class="active-icon c1" href="#"><i>$300</i></a>
						<ul class="sub-icon1 list">
							<li><h3>shopping cart empty</h3><a href=""></a></li>
							<li><p>if items in your wishlit are missing, <a href="contact.html">contact us</a> to view
								them</p></li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="h_search">
				<form>
					<input type="text" value="">
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
			<div class="h_menu">
				<ul>
					<li><a href="index.html">Home</a></li>
					|
					<li class="active"><a href="sale.html">sale</a></li>
					|
					<li><a href="handbags.html">handbags</a></li>
					|
					<li><a href="accessories.html">accessories</a></li>
					|
					<li><a href="wallets.html">wallets</a></li>
					|
					<li><a href="sale.html">sale</a></li>
					|
					<li><a href="index.html">mens store</a></li>
					|
					<li><a href="shoes.html">shoes</a></li>
					|
					<li><a href="sale.html">vintage</a></li>
					|
					<li><a href="service.html">services</a></li>
					|
					<li><a href="contact.html">Contact us</a></li>
				</ul>
			</div>
			<div class="top-nav">
				<nav class="nav">
					<a href="#" id="w3-menu-trigger"> </a>
					<ul class="nav-list" style="">
						<li class="nav-item"><a class="active" href="index.html">Home</a></li>
						<li class="nav-item"><a href="sale.html">Sale</a></li>
						<li class="nav-item"><a href="handbags.html">Handbags</a></li>
						<li class="nav-item"><a href="accessories.html">Accessories</a></li>
						<li class="nav-item"><a href="shoes.html">Shoes</a></li>
						<li class="nav-item"><a href="service.html">Services</a></li>
						<li class="nav-item"><a href="contact.html">Contact</a></li>
					</ul>
				</nav>
				<div class="search_box">
					<form>
						<input type="text" value="Search" onfocus="this.value = '';"
							   onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
					</form>
				</div>
				<div class="clear"></div>
				<script src="../../../js/responsive.menu.js"></script>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>
<!-- start main -->
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
				<nobr><a href="https://www.amazon.cn/gp/css/homepage">我的帐户</a></nobr> &gt;
				<nobr><a href="https://www.amazon.cn/gp/your-account/order-history/ref=docs_ya_oh_ev">订单信息</a></nobr>
				&gt;
				订单概览 ${order.order_no} </b> <br>
			<br>
			<br>
			<table class="narrowed" width="90%" cellspacing="0" cellpadding="0" border="0" bgcolor="#ffffff"
				   align="center">
				<tbody>
				<tr>
					<td valign="bottom">
						<ul class="nomarker">
							<li><b>米米了 订单编号： </b>${order.order_no} </li>
						</ul>
					</td>
					<td colspan="2" align="right">
						<%--<div style="border: 1px solid #CCCC98; width: 315px">--%>
						<%--<div style="text-align: left; padding: 5px 5px 5px 10px">--%>
						<%--<div><b> 管理您的数字商品 </b></div>--%>
						<%--<div><b><a href="">管理我的Kindle</a>--%>
						<%--<a href="">应用程序与设备</a></b>--%>
						<%--</div>--%>
						<%--</div>--%>
						<%--</div>--%>
					</td>
				</tr>
				<tr>
					<td><br></td>
					<td align="right"></td>
				</tr>
				</tbody>
			</table>
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
									<div style="padding:10px;"><b>收件人:</b><br>
										${order.user_id}<br>
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

						<button class="layui-btn" id="receive" style="display: none;" onclick="sure()">确认收货</button>
						<button class="layui-btn" id="back" onclick="refund()" style="display:none;">退款</button>
						<button class="layui-btn" id="check" onclick="check()" style="display:none;">付款</button>

					</td>
				</tr>
				</tbody>
			</table>
			<br>
		</div>
	</div>
	<br>
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
			<script type="text/javascript">
                $(document).ready(function () {

                    var defaults = {
                        containerID: 'toTop', // fading element id
                        containerHoverID: 'toTopHover', // fading element hover id
                        scrollSpeed: 1200,
                        easingType: 'linear'
                    };


                    $().UItoTop({easingType: 'easeOutQuart'});

                });
			</script>
			<a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
			<!--end scroll_top_btn -->
			<div class="copy">
				<p class="link">Copyright &copy; 2014.Company name All rights reserved.<a target="_blank"
																						  href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
					- More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a></p>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>

</body>
</html>