<%@ page import="com.ssm.po.Product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>米米了女装 | Details</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- start details -->
	<link rel="stylesheet" type="text/css" href="css/productviewgallery.css" media="all" />
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/cloud-zoom.1.0.3.min.js"></script>
	<script type="text/javascript" src="js/jquery.fancybox.pack.js"></script>
	<script type="text/javascript" src="js/jquery.fancybox-buttons.js"></script>
	<script type="text/javascript" src="js/jquery.fancybox-thumbs.js"></script>
	<script type="text/javascript" src="js/productviewgallery.js"></script>
	<!-- start top_js_button -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
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

    <style type="text/css">
        .commit div {
            opacity: 1;
            position: relative;
        }
    </style>
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
					<li><a class="active-icon c1" href="#"><i>$300</i></a>
						<ul class="sub-icon1 list">
							<li><h3>shopping cart empty</h3><a href=""></a></li>
							<li><p>if items in your wishlit are missing, <a href="contact.html">contact us</a> to view them</p></li>
						</ul>
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
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>
<!-- start main -->
<div class="main_bg">
	<div class="wrap">
		<div class="main">
			<!-- start content -->
			<div class="single">
				<!-- start span1_of_1 -->
				<div class="left_content">
					<div class="span1_of_1">
						<!-- start product_slider -->
						<div class="product-view">
							<div class="product-essential">
								<div class="product-img-box">
									<div class="more-views" style="float:left;">
										<div class="more-views-container">
											<ul>
                                            <li>
                                                <a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:85px;" href=""  title="" alt="">
                                                    <img src="" src_main=""  title="" alt="" />
                                                </a>
                                            </li>
                                            <li>
                                                <a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:85px;" href=""  title="" alt="">
                                                    <img src="" src_main=""  title="" alt="" />
                                                </a>
                                            </li>
                                            <li>
                                                <a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:85px;" href=""  title="" alt="">
                                                    <img src="" src_main=""  title="" alt="" />
                                                </a>
                                            </li>
                                            <li>
                                                <a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:85px;" href=""  title="" alt="">
                                                    <img src="" src_main="" title="" alt="" />
                                                </a>
                                            </li>
                                            <li>
                                                <a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:85px;" href=""  title="" alt="">
                                                    <img src="" src_main="" title="" alt="" />
                                                </a>
                                            </li>
                                        </ul>
										</div>
									</div>
									<div class="product-image"> <a class="cs-fancybox-thumbs" rel="adjustX:30,adjustY:0,position:'right',tint:'#202020',tintOpacity:0.5,smoothMove:2,showTitle:true,titleOpacity:0.5" data-fancybox-group="thumb" href="images/0001-2.jpg" title="Women Shorts" alt="Women Shorts">
                                        <img src="images/0001-2.jpg" alt="Women Shorts" title="Women Shorts" />
                                    </a>
                                    </div>
									<script type="text/javascript">
                                        var prodGallery = jQblvg.parseJSON('{"prod_1":{"main":{"orig":"https://s2.lativ.com/i/35115/35115011/3511501_360.jpg","main":"https://s2.lativ.com/i/35115/35115011/3511501_360.jpg","thumb":"https://s2.lativ.com/i/35115/35115011/3511501_360.jpg","label":""},"gallery":{"item_0":{"orig":"https://s3.lativ.com/i/35115/35115_D_81.jpg","main":"https://s3.lativ.com/i/35115/35115_D_81.jpg","thumb":"https://s3.lativ.com/i/35115/35115_D_81.jpg","label":""},"item_1":{"orig":"https://s4.lativ.com/i/35115/35115_D_62.jpg","main":"https://s4.lativ.com/i/35115/35115_D_62.jpg","thumb":"https://s4.lativ.com/i/35115/35115_D_62.jpg","label":""},"item_2":{"orig":"https://s1.lativ.com/i/35115/35115_D_63.jpg","main":"https://s1.lativ.com/i/35115/35115_D_63.jpg","thumb":"https://s1.lativ.com/i/35115/35115_D_63.jpg","label":""},"item_3":{"orig":"https://s2.lativ.com/i/35115/35115_D_64.jpg","main":"https://s2.lativ.com/i/35115/35115_D_64.jpg","thumb":"https://s2.lativ.com/i/35115/35115_D_64.jpg","label":""},"item_4":{"orig":"https://s3.lativ.com/i/35115/35115_D_65.jpg","main":"https://s3.lativ.com/i/35115/35115_D_65.jpg","thumb":"https://s3.lativ.com/i/35115/35115_D_65.jpg","label":""}},"type":"simple","video":false}}'),
                                        <%--alert(${product.product_sub_image})--%>
										<%--var prodGallery = jQblvg.parseJSON(${product.product_sub_image}),--%>
                                            gallery_elmnt = jQblvg('.product-img-box'),
                                            galleryObj = new Object(),
                                            gallery_conf = new Object();
                                        gallery_conf.moreviewitem = '<a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:85px;" href=""  title="" alt=""><img src="" src_main="" width="64" height="85" title="" alt="" /></a>';
                                        gallery_conf.animspeed = 200;
                                        jQblvg(document).ready(function() {
                                            galleryObj[1] = new prodViewGalleryForm(prodGallery, 'prod_1', gallery_elmnt, gallery_conf, '.product-image', '.more-views', 'http:');
                                            jQblvg('.product-image .cs-fancybox-thumbs').absoluteClick();
                                            jQblvg('.cs-fancybox-thumbs').fancybox({ prevEffect : 'none',
                                                nextEffect : 'none',
                                                closeBtn : true,
                                                arrows : true,
                                                nextClick : true,
                                                helpers: {
                                                    thumbs : {
                                                        width: 64,
                                                        height: 85,
                                                        position: 'bottom'
                                                    }
                                                }
                                            });
                                            jQblvg('#wrap').css('z-index', '100');
                                            jQblvg('.more-views-container').elScroll({type: 'vertical', elqty: 4, btn_pos: 'border', scroll_speed: 400 });

                                        });

                                        function initGallery(a,b,element) {
                                            galleryObj[a] = new prodViewGalleryForm(prods, b, gallery_elmnt, gallery_conf, '.product-image', '.more-views', '');
                                        };
									</script>
								</div>
							</div>
						</div>
						<!-- end product_slider -->
					</div>
					<!-- start span1_of_1 -->
					<div class="span1_of_1_des">
						<div class="desc1">
							<h3>${product.product_name} </h3>
							<p>${product.product_subtitle}</p>
							<h5>￥${product.product_price} <a href="#"></a></h5>
							<div class="available">
								<h4>选择 :</h4>
								<ul>
                                    <script type="text/javascript">
                                        function check(){
                                            var result = false;
                                            var radio = document.getElementsByName("size")
                                            for (var i = 0; i < radio.length; i++) {
                                                if (radio[i].checked)
                                                    result = true;
                                            }
                                            if (!result){
                                                alert("必须选择一个尺码");
                                                return result;
                                            }
                                            return result;
                                        }
                                    </script>

									<form action="addToCart.html?" onsubmit="return check()">
										<li>
											<div> <span class="varSpan">颜色:</span>
												<div class="lanrentuku">
													<c:forEach items="${colors}" var="c">
														<c:choose>
															<c:when test="${c.color == color}">    <!--如果 -->
																<input type="radio" value= "${c.color}" id= "color_input_${c.color}" name="color" style="display:none">
																<img id="${c.color}" class="colorChoose1" alt="${c.color}" title="${c.color}" src="${c.product_color_icon}" onclick="colorChoose(this.id)" style="width: 40px">
															</c:when>
															<c:otherwise>  <!--否则 -->
																<input type="radio" value= "${c.color}" id= "color_input_${c.color}" name="color" style="display:none">
																<img id="${c.color}" class="colorChoose" alt="${c.color}" title="${c.color}" src="${c.product_color_icon}" onclick="colorChoose(this.id)" style="width: 40px">
															</c:otherwise>
														</c:choose>
													</c:forEach>
												</div>
											</div>
										</li>
										<li>
											<div> <span class="varSpan">尺码:</span>
												<c:forEach items="${sizes}" var="s">
													<input type="radio" value= "${s.product_size}" id= "${s.product_size}" name="size" style="display: none">
													<button id="${s.product_size}" class="sizeChoose" title="${s.product_size}" onclick="sizeChoose(this.id);return false;">${s.product_size}</button>
												</c:forEach>
												</div>
										</li>
										<li>
											<div class="gcIpt"> <span class="varSpan">数量</span>
												<input id="min" name="" type="button" value="-" style="margin-left: 20px;margin-top: 10px;" />
												<input id="text_box" name="quantity" type="text" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" maxlength="3" size="14" value="1"style="width:30px; text-align: center; color: #0F0F0F;"/>
												<input id="add" name="" type="button" value="+" />
                                            </div>
										</li>
                                        <input type="hidden" name="product_id" value="${product_id}"/>
                                        <input type="hidden" name="color" value="${color}"/>
										<div class="btn_submit">
											<input type="submit" value="加入购物车" title=""  />
										</div>
									</form>
										<div class="btn_submit">
											<input type="submit" value="立即购买" title="" onclick="buyNow()"/>
										</div>
								</ul>
								<div class="clear"></div>
							</div>
						</div>
					</div>
					<div class="clear"></div>
					<!-- start tabs -->
					<section class="tabs">
						<input id="tab-1" type="radio" name="radio-set" class="tab-selector-1" checked="checked" onclick="h1()">
						<label for="tab-1" class="tab-label-1">商品详情</label>
						<input id="tab-2" type="radio" name="radio-set" class="tab-selector-2" onclick="h2()">
						<label for="tab-2" class="tab-label-2">评价</label>
						<input id="tab-3" type="radio" name="radio-set" class="tab-selector-3" onclick="h3()">
						<label for="tab-3" class="tab-label-3">晒单</label>
						<div class="clear-shadow"></div>
						<div id="detail" class="content">
							<div id="detail1" class="content-1">
								<ul id="product_detail">
                                    <li>${detail_text}</li>
                                    <li><br></li>
									<c:forEach items="${detail_images}" var="d">
										<li><img width="100%" src="${d}"/></li>
									</c:forEach>
								</ul>
							</div>
                            <div style="clear: both"></div>
							<div id="detail2" class="content-2" style="height: 100%">
                            </div>
                            <div style="clear: both"></div>
							<div id="detail3" class="content-3">
								<p class="para top"><span>LOREM IPSUM</span> There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined </p>
								<ul>
									<li>Research</li>
									<li>Design and Development</li>
									<li>Porting and Optimization</li>
									<li>System integration</li>
									<li>Verification, Validation and Testing</li>
									<li>Maintenance and Support</li>
								</ul>
								<div class="clear"></div>
							</div>
                            <div style="clear: both"></div>
						</div>
                        <div style="clear: both"></div>
                        <script>
                            var height = document.getElementById("detail1").offsetHeight;
                            document.getElementById("detail").style.height=height+"px";

                            function h1() {
                                var height = document.getElementById("detail1").offsetHeight;
                                document.getElementById("detail").style.height=height+"px";
                            }

                            function h2() {
                                document.getElementById("detail2").innerHTML = '<object type="text/html" data="commit.html?product_id=${product_id}" width="100%" height="100%"></object>';

                            }

                            function h3() {
                                var height = document.getElementById("detail3").offsetHeight;
                                document.getElementById("detail").style.height=height+"px";
                            }
                        </script>
					</section>

					<!-- end tabs -->
				</div>
				<!-- start sidebar -->
				<div class="left_sidebar">
					<div class="sellers">
						<h4>购买过此商品的人还买过</h4>
						<div class="single-nav">
							<ul>
								<li><a href="#">
									<div class="recommendpic"><img src="images/large/0001-1.jpg"></div>
									<div class="recommendtext">
										<p>fasdfasdf</p>
										<p>fasdfasdf</p>
									</div>
								</a> </li>
								<li><a href="#">
									<div class="recommendpic"><img src="images/large/0001-1.jpg"></div>
									<div class="recommendtext">
										<p>fasdfasdf</p>
										<p>fasdfasdf</p>
									</div>
								</a> </li>
								<li><a href="#">
									<div class="recommendpic"><img src="images/large/0001-1.jpg"></div>
									<div class="recommendtext">
										<p>fasdfasdf</p>
										<p>fasdfasdf</p>
									</div>
								</a> </li>
								<li><a href="#">
									<div class="recommendpic"><img src="images/large/0001-1.jpg"></div>
									<div class="recommendtext">
										<p>fasdfasdf</p>
										<p>fasdfasdf</p>
									</div>
								</a> </li>
								<li><a href="#">
									<div class="recommendpic"><img src="images/large/0001-1.jpg"></div>
									<div class="recommendtext">
										<p>fasdfasdf</p>
										<p>fasdfasdf</p>
									</div>
								</a> </li>
							</ul>
						</div>
					</div>
				</div>
				<!-- end sidebar -->
				<div class="clear"></div>
			</div>
			<!-- end content -->
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
						<li><a href="#">alexis Hudson</a></li>
						<li><a href="#">american apparel</a></li>
						<li><a href="#">ben sherman</a></li>
						<li><a href="#">big buddha</a></li>
						<li><a href="#">channel</a></li>
						<li><a href="#">christian audigier</a></li>
						<li><a href="#">coach</a></li>
						<li><a href="#">cole haan</a></li>
					</ul>
				</div>
				<div class="grid1_of_4">
					<h4>mens store</h4>
					<ul class="f_nav">
						<li><a href="#">alexis Hudson</a></li>
						<li><a href="#">american apparel</a></li>
						<li><a href="#">ben sherman</a></li>
						<li><a href="#">big buddha</a></li>
						<li><a href="#">channel</a></li>
						<li><a href="#">christian audigier</a></li>
						<li><a href="#">coach</a></li>
						<li><a href="#">cole haan</a></li>
					</ul>
				</div>
				<div class="grid1_of_4">
					<h4>women store</h4>
					<ul class="f_nav">
						<li><a href="#">alexis Hudson</a></li>
						<li><a href="#">american apparel</a></li>
						<li><a href="#">ben sherman</a></li>
						<li><a href="#">big buddha</a></li>
						<li><a href="#">channel</a></li>
						<li><a href="#">christian audigier</a></li>
						<li><a href="#">coach</a></li>
						<li><a href="#">cole haan</a></li>
					</ul>
				</div>
				<div class="grid1_of_4">
					<h4>quick links</h4>
					<ul class="f_nav">
						<li><a href="#">alexis Hudson</a></li>
						<li><a href="#">american apparel</a></li>
						<li><a href="#">ben sherman</a></li>
						<li><a href="#">big buddha</a></li>
						<li><a href="#">channel</a></li>
						<li><a href="#">christian audigier</a></li>
						<li><a href="#">coach</a></li>
						<li><a href="#">cole haan</a></li>
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
			<a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
			<!--end scroll_top_btn -->
			<div class="clear"></div>
		</div>
	</div>
</div>
<script>
    $(document).ready(function(){
        var t = $("#text_box");
        $('#min').attr('disabled',true);
        $("#add").click(function(){
            t.val(parseInt(t.val())+1)
            if (parseInt(t.val())!=1){
                $('#min').attr('disabled',false);
            }

        })
        $("#min").click(function(){
            t.val(parseInt(t.val())-1);
            if (parseInt(t.val())==1){
                $('#min').attr('disabled',true);
            }
        })
    });
</script>

<script>
    function colorChoose(sId) {
        window.location.href="productDetail2.html?product_id=${product_id}&color="+sId;
    }
</script>
<script>
	function buyNow() {

        var result = false;
        var radio = document.getElementsByName("size")
        for (var i = 0; i < radio.length; i++) {
            if (radio[i].checked)
                result = true;
        }
        if (!result){
            alert("必须选择一个尺码");
            return result;
        }

	    var size_radio = document.getElementsByName("size");
	    var size = "";
		var quantity = document.getElementById("text_box");
		var product_id = '${product_id}';
		var color = '${color}';

		for (var i = 0; i < size_radio.length; i++){
		    if (size_radio[i].checked)
		        size = size_radio[i].value;
        }

        window.location.href="buyNow.html?size=" + size + "&quantity=" + quantity.value +
			"&product_id=" + product_id + "&color=" + color;
    }
</script>

<%--<script>--%>
	<%--window.onload = function() {--%>
        <%--&lt;%&ndash;var oImg = document.getElementsByClassName('colorChoose');&ndash;%&gt;--%>
        <%--&lt;%&ndash;for (var i = 0; i < oImg.length; i++) {&ndash;%&gt;--%>
            <%--&lt;%&ndash;if (oImg[i].id == ${color}) {&ndash;%&gt;--%>
                <%--&lt;%&ndash;oImg[i].previousSibling.previousSibling.checked = true;&ndash;%&gt;--%>
                <%--&lt;%&ndash;oImg[i].style.border = '3px solid #FF0004';&ndash;%&gt;--%>
            <%--&lt;%&ndash;} else {&ndash;%&gt;--%>
                <%--&lt;%&ndash;oImg[i].previousSibling.previousSibling.checked = false;&ndash;%&gt;--%>
                <%--&lt;%&ndash;oImg[i].style.border = '3px solid #969696';&ndash;%&gt;--%>
            <%--&lt;%&ndash;}&ndash;%&gt;--%>
        <%--&lt;%&ndash;}&ndash;%&gt;--%>
    <%--}--%>
<%--</script>--%>

<script>
    function sizeChoose(sId) {
        var oBtn = document.getElementsByClassName('sizeChoose');
        for (var i = 0; i < oBtn.length; i++) {
            if (oBtn[i].id == sId) {
                oBtn[i].previousSibling.previousSibling.checked = true;
                oBtn[i].style.border = '#5EAFA5 solid 2px';
                oBtn[i].style.color = '#5EAFA5';
            } else {
                oBtn[i].previousSibling.previousSibling.checked = false;
                oBtn[i].style.border = '2px solid #969696';
                oBtn[i].style.color = '#111111';
            }
        }
    }
</script>
</body>
</html>