<%--
  Created by IntelliJ IDEA.
  User: Seven
  Date: 2018/8/2
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>mimile女装 | 订单</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link href="css/public.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/base.css"/>
    <link rel="stylesheet" type="text/css" href="css/checkOut.css" />
    <link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" type="text/css" href="layui-master/src/css/layui.css"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

    <script src="layui-master/dist/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/jquery_cart.js"></script>
    <script type="" src="js/jquery-3.2.1.js"></script>
    <script language="javascript" type="text/javascript">
        if (top.location != location) top.location.href = location.href;
    </script>
    <script>
         function addAddress() {
            var name = document.getElementById("Consignee");
            var tel = document.getElementById("Telephone");
            var province = document.getElementById("Provinces");
            var city = document.getElementById("Citys");
            var country = document.getElementById("Countys");
            var street = document.getElementById("Street");
            var zip = document.getElementById("Zipcode");

            window.location.href="addAddress.html?name=" + name.value +
                "&tel=" + tel.value + "&province=" + province.value +
                "&city=" + city.value + "&country=" + country.value +
                "&street=" + street.value + "&zip=" + zip.value +
                "&cartListArr=" + "${cartListArr}";
        }
    </script>
    <script>
        function editAddress() {
            document.getElementById("J_editAddrBox").style.display="block";

            document.getElementById("save").onclick = function () {
                var name = document.getElementById("Consignee");
                var tel = document.getElementById("Telephone");
                var province = document.getElementById("Provinces");
                var city = document.getElementById("Citys");
                var country = document.getElementById("Countys");
                var street = document.getElementById("Street");
                var zip = document.getElementById("Zipcode");
                var id = 0;
                var radio = document.getElementsByName("Checkout[address]");

                for (var i = 0; i < radio.length; i++)
                    if (radio[i].checked)
                        id = radio[i].value;

                window.location.href="editAddress.html?name=" + name.value +
                "&tel=" + tel.value + "&province=" + province.value +
                "&city=" + city.value + "&country=" + country.value +
                "&street=" + street.value + "&zip=" + zip.value +
                "&cartListArr=" + "${cartListArr}" + "&id=" + id;
            }
        }
    </script>
    <script type="text/javascript">
        var canSubmit = true;
        var submitted = false;

        $(function () {
            initWatermark();
            initAddressSelectEvent('/Shopping/ChangeAddress');

            $('span.field-validation-error').each(function () {
                $(this).html('<strong>' + $(this).text() + '</strong>');
            });

            $('#orderform').validate(
                {
                    rules:
                        {
                            索取電話: {Mobile: true},
                            索取驗證碼: {maxlength: false, minlength: 6, number: true},
                            收件人姓名: {required: true, specialsymbols: true, recipient: true},
                            收件人地區: {required: true},
                            tel: {maxlength: false}
                        },
                    messages:
                        {
                            索取電話: {Mobile: '<strong>请输入正确的手机号码</strong>'},
                            索取驗證碼: {minlength: '<strong>请输入正确的验证码</strong>', number: '<strong>请输入正确的验证码</strong>'},
                            收件人姓名: {required: '<strong>请输入收货人姓名</strong>', recipient: '<strong>请输入正确姓名</strong>'},
                            收件人地區: {required: '<strong>请选择地址信息</strong>'}
                        },
                    submitHandler: function (form) {
                        if (!submitted) {
                            submitted = true;
                            $('.next-btn').off();
                            form.submit();
                        }
                    }
                });

            $('.next-btn').click(function () {
                var validForm = $('#orderform').valid();
                var validColumm = validateWatermarkColumm();

                if (validForm && validColumm) {
                    if (alertStockTip()) {
                        var phone = $.trim($('input.tel').val());

                        $('input[name="收件人電話"]').val(phone);

                        $.common.localStorage('receivingmp', $.trim($('input.tel').attr('pcid')) + '_' + phone.substr(0, 8));
                        $('#orderform').submit();
                    }
                }

                focusInError();
                return false;
            });
        });

        function formsubmit() {
            canSubmit = false;
            $('#orderform').submit();
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
<!--收货地址body部分开始-->
<div class="border_top_cart">
    <script type="text/javascript">
        var checkoutConfig={
            addressMatch:'common',
            addressMatchVarName:'data',
            hasPresales:false,
            hasBigTv:false,
            hasAir:false,
            hasScales:false,
            hasGiftcard:false,
            totalPrice:244.00,
            postage:10,//运费
            postFree:true,//活动是否免邮了
            bcPrice:150,//计算界值
            activityDiscountMoney:0.00,//活动优惠
            showCouponBox:0,
            invoice:{
                NA:"0",
                personal:"1",
                company:"2",
                electronic:"4"
            }
        };
        var miniCartDisable=true;
    </script>
    <div class="container">
        <div class="checkout-box">
                <div class="checkout-box-bd">
                    <!-- 地址状态 0：默认选择；1：新增地址；2：修改地址 -->
                    <input type="hidden" name="Checkout[addressState]" id="addrState"   value="0">
                    <!-- 收货地址 -->
                    <div class="xm-box">
                        <div class="box-hd ">
                            <h2 class="title">收货地址</h2>
                            <!---->
                        </div>
                        <div class="box-bd">
                            <div class="clearfix xm-address-list" id="checkoutAddrList">
                                <c:forEach items="${address}" var="addr">
                                    <dl class="item" >
                                        <dt>
                                            <strong class="itemConsignee">${addr.receiver_name}</strong>
                                        </dt>
                                        <dd>
                                            <p class="tel itemTel">${addr.receiver_mobile}</p>
                                            <p class="itemRegion">${addr.receiver_province} ${addr.receiver_city} ${addr.receiver_district}</p>
                                            <p class="itemStreet">${addr.receiver_address}</p>
                                            <span class="edit-btn J_editAddr" onclick="editAddress()">编辑</span>
                                        </dd>
                                        <dd style="display:none">
                                            <input type="radio" name="Checkout[address]" class="addressId"  value="${addr.id}">
                                        </dd>
                                    </dl>
                                </c:forEach>
                                <div class="item use-new-addr"  id="J_useNewAddr" data-state="off">
                                    <span class="iconfont icon-add"><img src="images/add_cart.png" /></span>
                                    使用新地址
                                </div>
                            </div>
                            <input type="hidden" name="newAddress[type]" id="newType" value="common">
                            <input type="hidden" name="newAddress[consignee]" id="newConsignee">
                            <input type="hidden" name="newAddress[province]" id="newProvince">
                            <input type="hidden" name="newAddress[city]" id="newCity">
                            <input type="hidden" name="newAddress[district]" id="newCounty">
                            <input type="hidden" name="newAddress[address]" id="newStreet">
                            <input type="hidden" name="newAddress[zipcode]" id="newZipcode">
                            <input type="hidden" name="newAddress[tel]" id="newTel">
                            <input type="hidden" name="newAddress[tag_name]" id="newTag">
                            <!--点击弹出新增/收货地址界面start-->
                            <div class="xm-edit-addr-box" id="J_editAddrBox">
                                <div class="bd">
                                    <div class="item">
                                        <label>收货人姓名<span>*</span></label>
                                        <input type="text" name="userAddress[consignee]" id="Consignee" class="input" placeholder="收货人姓名" maxlength="15" autocomplete='off'>
                                        <p class="tip-msg tipMsg"></p>
                                    </div>
                                    <div class="item">
                                        <label>联系电话<span>*</span></label>
                                        <input type="text" name="userAddress[tel]" class="input" id="Telephone" placeholder="11位手机号" autocomplete='off'>
                                        <p class="tel-modify-tip" id="telModifyTip"></p>
                                        <p class="tip-msg tipMsg"></p>
                                    </div>
                                    <div class="item">
                                        <label>地址<span>*</span></label>
                                        <input type="text" name="userAddress[province]" class="input" id="Provinces" placeholder="Provinces" autocomplete='off'>
                                        <input type="text" name="userAddress[city]" class="input" id="Citys" placeholder="Citys" autocomplete='off'>

                                        <input type="text" name="userAddress[county]" class="input" id="Countys" placeholder="Countys" autocomplete='off'>
                                        <textarea name="userAddress[street]" class="input-area" id="Street" placeholder="路名或街道地址，门牌号"></textarea>
                                        <p class="tip-msg tipMsg"></p>
                                    </div>
                                    <div class="item">
                                        <label>邮政编码<span>*</span></label>
                                        <input type="text" name="userAddress[zipcode]" id="Zipcode" class="input" placeholder="邮政编码"  autocomplete='off'>
                                        <p class="zipcode-tip" id="zipcodeTip"></p>
                                        <p class="tip-msg tipMsg"></p>
                                    </div>
                                </div>

                                <div class="ft clearfix">
                                    <button  type="button"  class="btn btn-lineDake btn-small " id="J_editAddrCancel">取消</button>
                                    <button type="button" class="btn btn-primary  btn-small " id="save" onclick="addAddress()">保存</button>
                                </div>
                            </div>
                            <!--点击弹出新增/收货地址界面end-->
                            <div class="xm-edit-addr-backdrop" id="J_editAddrBackdrop"></div>
                        </div>
                    </div>
                    <!-- 收货地址 END-->
                    <div id="checkoutPayment">
                        <!-- 支付方式 -->
                        <div class="xm-box">
                            <div class="box-hd ">
                                <h2 class="title">支付方式</h2>
                            </div>
                            <div class="box-bd">
                                <ul id="checkoutPaymentList" class="checkout-option-list clearfix J_optionList">
                                    <li class="item selected">
                                        <input type="radio" name="Checkout[pay_id]" checked="checked" value="1">
                                        <p>
                                            余额支付                                <span></span>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- 支付方式 END-->
                        <div class="xm-box">
                            <div class="box-hd ">
                                <h2 class="title">配送方式</h2>
                            </div>
                            <div class="box-bd">
                                <ul id="checkoutShipmentList" class="checkout-option-list clearfix J_optionList">
                                    <li class="item selected">
                                        <input type="radio" data-price="0" name="Checkout[shipment_id]" value="0">
                                        <p>
                                            mimile配送                                <span></span>
                                        </p>
                                    </li>
                                    <li class="item selected">
                                        <input type="radio" data-price="0" name="Checkout[shipment_id]" value="1">
                                        <p>
                                            顺丰                                <span></span>
                                        </p>
                                    </li>
                                    <li class="item selected">
                                        <input type="radio" data-price="0" name="Checkout[shipment_id]" value="2">
                                        <p>
                                            圆通                                <span></span>
                                        </p>
                                    </li>
                                    <li class="item selected">
                                        <input type="radio" data-price="0" name="Checkout[shipment_id]" value="3">
                                        <p>
                                            韵达                                <span></span>
                                        </p>
                                    </li>
                                    <li class="item selected">
                                        <input type="radio" data-price="0" name="Checkout[shipment_id]" value="4">
                                        <p>
                                            到店自提                                <span></span>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- 配送方式 END-->                    <!-- 配送方式 END-->
                    </div>
                </div>
                <div class="checkout-box-ft">
                    <!-- 商品清单 -->
                    <div id="checkoutGoodsList" class="checkout-goods-box">
                        <div class="xm-box">
                            <div class="box-hd">
                                <h2 class="title">确认订单信息</h2>
                            </div>
                            <div class="box-bd">
                                <dl class="checkout-goods-list">
                                    <c:set var="total_price" value="0"/>
                                    <c:set var="price" value="0"/>
                                    <c:forEach items="${cartlists}" var="cart">
                                        <dd class="item clearfix">
                                            <div class="item-row">
                                                <div class="col col-1">
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
                                                <div class="col col-4">
                                                    <script>
                                                    ${price = cart.product_price * cart.quantity};
                                                    ${total_price = total_price + price};
                                                    </script>
                                                        ${price}元
                                                </div>

                                            </div>
                                        </dd>
                                    </c:forEach>
                                </dl>
                                <div class="checkout-count clearfix">
                                    <!-- checkout-count-extend -->
                                    <div class="checkout-price">
                                        <ul>

                                            <li>
                                                订单总额：<span>${total_price}元</span>
                                            </li>
                                        </ul>
                                        <p class="checkout-total">应付总额：<span><strong>${total_price}</strong>元</span></p>
                                    </div>
                                    <!--  -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 商品清单 END -->
                    <input type="hidden"  id="couponType" name="Checkout[couponsType]">
                    <input type="hidden" id="couponValue" name="Checkout[couponsValue]">
                    <div class="checkout-confirm">

                        <a href="mimile_index.html" class="btn btn-lineDakeLight btn-back-cart">继续购物</a>
                        <input type="submit" class="btn btn-primary" value="立即下单" id="checkoutToPay" onclick="order()"/>
                    </div>
                </div>
        </div>

    </div>


    <script id="newAddrTemplate" type="text/x-dot-template">
        <dl class="item selected" data-isnew="true" data-consignee="{{=it.consignee}}" data-tel="{{=it.tel}}" data-province="{{=it.province}}" data-provincename="{{=it.provinceName}}" data-city="{{=it.city}}" data-cityname="{{=it.cityName}}" data-county="{{=it.county}}" data-countyname="{{=it.countyName}}" data-zipcode="{{=it.zipcode}}" data-street="{{=it.street}}" data-tag="{{=it.tag}}">
            <dt>
                <strong class="itemConsignee">{{=it.consignee}}</strong>
                {{? it.tag }}
                <span  class="itemTag tag">{{=it.tag}}</span>
                {{?}}
            </dt>
            <dd>
                <p class="tel itemTel">{{=it.tel}}</p>
                <p  class="itemRegion">{{=it.provinceName}} {{=it.cityName}} {{=it.countyName}}</p>
                <p  class="itemStreet">{{=it.street}} ({{=it.zipcode}})</p>
                <span class="edit-btn J_editAddr">编辑</span>
            </dd>
        </dl>
    </script>
    <script src="js/base.min.js"></script>
    <script type="text/javascript" src="js/address_all.js"></script>
    <script type="text/javascript" src="js/checkout.min.js"></script>
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

<script type="text/javascript">
    function order() {

        var result = false;
        var radio = document.getElementsByName("Checkout[address]")
        for (var i = 0; i < radio.length; i++) {
            if (radio[i].checked)
                result = true;
        }
        if (!result){
            alert("必须选择一个收货地址");
            return result;
        }

        result = false;
        var radio = document.getElementsByName("Checkout[shipment_id]")
        for (var i = 0; i < radio.length; i++) {
            if (radio[i].checked)
                result = true;
        }
        if (!result){
            alert("必须选择一个配送方式");
            return result;
        }

        var flag;
        console.info("order()");
        var orderData = {
            shipping_id: Number(localStorage.getItem("shipping_type")),
            payment_type: 1,
            status: 1,
            create_time: new Date()
        };
        var goodstemp = JSON.parse('${productList}');
        console.log(goodstemp);
        console.log('${productList}');
        var jOrderData = JSON.stringify(orderData);
        var goods = JSON.stringify(goodstemp);
        console.log(goods);
        console.log(jOrderData);
        $.ajax({
            url: 'purchase.html',
            type: 'post',
            async: false,
            data: {
                'jOrderData': jOrderData,
                'goods': goods
            },
            success: function (data) {
                console.log("success function");
                flag = data;
            },
            error: function (data) {
                console.log("err function");
                flag = data;
            }
        });
        window.location.href='pay.html?id='+flag+"&total_price="+${total_price};
    }
</script>
</body>
</html>
