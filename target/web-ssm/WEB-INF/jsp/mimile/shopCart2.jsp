<%--
  Created by IntelliJ IDEA.
  User: 刘力宾
  Date: 2018/7/28
  Time: 9:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0040)https://www.lativ.com/Shopping/FillOrder -->
<html xmlns="http://www.w3.org/1999/xhtml" class=" ieundefined">
<head>
    <script type="" src="../../../js/jquery-3.2.1.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title> mimile女装 | 订单 </title>

    <script language="javascript" type="text/javascript">
        if (top.location != location) top.location.href = location.href;
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

<script type="text/javascript">
    function order() {
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
        console.log(flag);
        alert("pause");
        window.location.href='orderDetail.html?id='+flag;
    }
</script>

<div id="wrap1" class="container_48">
    <div id="wrapper" class="wrapperTW">

        <div id="navWrapper">

            <div id="head">

                <div id="MiniCartList" class="check_wrapper1">
                    <div id="check1" class="check" style="display: none;">
                        <table id="checkTable1">
                            <thead>
                            <tr>
                                <th>商品名称</th>
                                <th>颜色</th>
                                <th>尺寸</th>
                                <th>数量</th>
                            </tr>
                            </thead>
                            <tbody valign="top">

                            <tr class="sn-38219011" amt="1">
                                <th>
                                    <a href="https://www.lativ.com/Detail/38219011/S">
                                        文字印花长袖T恤-09-女</a></th>
                                <td>
                                    藏青
                                </td>
                                <td>
                                    S
                                </td>
                                <td class="miniCartBuyAmount">
                                    1
                                </td>
                            </tr>

                            </tbody>
                        </table>
                        <span class="checkout">
        <a id="minicart" href="https://www.lativ.com/Shopping/ShoppingAdapter" class="btn_styles ">
            <div>立即结算</div>
        </a>
    </span></div>
                    <style type="text/css">
                        #popup_message {
                            text-align: left;
                        }
                    </style>

                </div>
                <div id="ShowProduct" class="check_wrapper1">
                    <div id="check" class="check2" style="display: none; text-align: center;">
                        <table id="checkTable" class="checkTable">
                        </table>
                        <span class="checkout">
                                <a id="minicart" href="https://www.lativ.com/Shopping/ShoppingAdapter"
                                   class="btn_styles ">
                                    <div>立即结算</div>
                                </a>
                            </span></div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div id="content" class="container_48">

        <div>
            <ol id="step" class="prefix_16 alpha grid_36 omega step2-current">
                <li class="step1"><span>查看购物车</span></li>
                <li class="step2"><span class="current">确认订单信息</span></li>
                <li class="step3"><span>成功提交订单</span></li>
            </ol>
            <div class="clear"></div>
        </div>


        <div class="login_main">

            <div id="shoppingcart" class="grid_48 alpha omega round_box prefix_6">
                <div class="roundbox_up_3"></div>
                <div class="roundbox_center_3">
                    <table id="shop_list" class="shop_list">
                        <thead>
                        <tr>
                            <th></th>
                            <th>商品名称</th>
                            <th class="alignC wd75">单价</th>
                            <th class="wd75"></th>
                            <th class="alignC wd75">数量</th>
                            <th class="alignR wd1">小计</th>
                            <th class="alignR wd85 last-child">删除</th>
                        </tr>
                        </thead>
                        <tbody>

                        <tr class="productItem" pno="38219011" appactivity="False">
                            <td class="wd50 alignR">
                                <a href="https://www.lativ.com/Detail/38219011/S" class="soldout" target="_blank"><img
                                        src="./购物车2_files/3821901_360.jpg" alt="商品缩图" width="60px" height="60px"></a>
                            </td>
                            <td class="alignL goodsinfo">
                                <p>
                                    <a href="https://www.lativ.com/Detail/38219011/S" class="soldout"
                                       target="_blank"><span>
                <strong>
                    38219011&nbsp;文字印花长袖T恤-09-女&nbsp;─&nbsp;藏青</strong></span></a>

                                    <br>
                                    尺码：S(155/80A)

                                </p>
                            </td>
                            <td class="alignC">

                                <em class="itemtotal " data-price="59" data-saleprice="59"
                                    data-original="59">￥&nbsp;59</em>

                            </td>
                            <td></td>
                            <td class="alignC amount">

                                <a class="minus-lock" href="javascript:void(0)"
                                   onclick="changeAmount($(this));"></a><input id="38219011" class="buycount"
                                                                               type="text" value="1" data-stock="26"
                                                                               data-amount="1" disabled="disabled"><a
                                    class="plus" href="javascript:void(0)" onclick="changeAmount($(this));"></a>

                            </td>
                            <td class="alignR subtotal" data-price="59" data-amount="1">￥&nbsp;59</td>
                            <td class="alignR last-child">
                                <a href="https://www.lativ.com/Shopping/FillOrder#"
                                   onclick="onDel(&#39;/Shopping/RemoveItem&#39;, &#39;38219011&#39;, $(this).parents(&#39;tr&#39;)); return false;"><img
                                        src="./购物车2_files/btn_delete.gif" alt="delete"></a>
                            </td>
                        </tr>

                        <script type="text/javascript">
                            $(function () {
                                var products = ''.split(',');

                                if (products.length > 0 && typeof (ga) === 'function') {
                                    for (var i = 0; i < products.length; i++) {
                                        ga('ec:addProduct', {'name': products[i]});
                                    }

                                    ga('ec:setAction', 'remove');
                                    ga('send', 'event', 'Product', 'remove');
                                }
                            })
                        </script>

                        <script type="text/javascript">
                            $(function () {
                                checkOrderItemCount('/');
                                subtotal();
                                countPrice();
                            });
                        </script>

                        </tbody>
                        <tfoot class="alignR">
                        <tr class="tr_top">
                            <td colspan="4"></td>
                            <td colspan="2" id="totalcount">共&nbsp;<em>1</em>&nbsp;件商品&nbsp;商品金额</td>
                            <td id="total" data-total="59.00">￥&nbsp;59</td>
                        </tr>
                        <tr>

                            <td colspan="4"></td>
                            <td colspan="2">运费</td>
                            <td id="pdcost" data-cost="0">￥&nbsp;0</td>
                        </tr>
                        <tr>
                            <td id="shippingfee-remind-txt" colspan="4"></td>
                            <td colspan="2" id="totalprice">总金额<span id="shippingfee-remind" style="display: none;">&nbsp;(<label>再买<em></em>元免运费</label>)</span>
                            </td>
                            <td id="orderprice" data-amount="59">￥&nbsp;59</td>
                        </tr>
                        </tfoot>
                    </table>
                </div>
                <!-- end of roundbox-center -->
                <div class="roundbox_down_3"></div>
            </div>
            <!-- end of roundbox -->
            <div class="clear"></div>
            <script type="text/javascript">
                var pdCostJson = $.parseJSON("{\"Type\":2,\"Original\":10.00,\"Condition\":49.00,\"Special\":0.00}");

                $(function () {
                    GetPDCost();

                    if ($('.step2 .current').length === 1 && typeof (ga) === 'function') {
                        ga('require', 'ec');
                        var products = [];

                        $('#shop_list tbody tr.productItem, #shop_list tbody tr.AddPurchasePriceItem').each(function () {
                            var flag = false;
                            var $info = $(this).find('.goodsinfo');
                            var no = $info.attr('data-no');
                            var name = $info.attr('data-name');
                            var coupon = $info.attr('data-coupon');
                            var quantity = parseInt($(this).find('.buycount').val(), 10);
                            var price = parseInt($(this).find('.subtotal').attr('s_price'), 10);

                            if (products.length > 0) {
                                $.each(products, function (index, obj) {
                                    if (obj.no === no && obj.coupon === coupon) {
                                        flag = true;
                                        obj.quantity += quantity;
                                        obj.price += price;
                                        return false;
                                    }
                                });
                            }

                            if (!flag) {
                                products.push({no: no, name: name, coupon: coupon, quantity: quantity, price: price});
                            }
                        });

                        for (var i = 0; i < products.length; i++) {
                            var product = products[i];

                            ga('ec:addProduct',
                                {
                                    'name': product.name,
                                    'price': product.price,
                                    'quantity': product.quantity,
                                    'coupon': product.coupon
                                });
                        }

                        ga('ec:setAction', 'checkout', {'step': 1, 'option': ''});
                        ga('send', 'event', 'Product', 'checkout');
                    }
                });
            </script>
            <form action="https://www.lativ.com/Shopping/FillOrder" id="orderform" method="post"
                  novalidate="novalidate">
                <div class="grid_48 alpha omega round_box order prefix_6">

                    <div class="roundbox_up_3"></div>
                    <div class="roundbox_center_3" style="position: relative;">
                        <h2>收货人信息</h2>

                        <a href="/selectAddress">选择已存的收货地址</a>
                        <a id="add-history-address" href="inputAddress.html">新增收货地址</a>
                        <a href="/deleteAddress.html">删除收货地址</a>
                        <a href="/alterAddress.html">修改收货地址</a>


                    </div>

                    <div class="roundbox_down_3"></div>
                    <script type="text/javascript">
                        $(function () {
                            $('input.citycode').val($('li.receiving-group option:selected[citycode]').attr('citycode'));

                            $('#history-address-choose').click(function () {
                                if ($('#history-address:visible').length == 0) {
                                    $('#history-address').show();
                                }
                                else {
                                    $('#history-address').hide();
                                }
                            })

                            $('.history-address-del').click(function () {
                                historyAddressDel(this, '/Shopping/DelHistoryAddress');
                            })

                            $('.history-address-opt').click(function () {
                                historyAddressSelect(this, '/Shopping/ChangeHistoryAddress');
                            })

                            $('.history-address-opt, .history-address-del').mouseover(function () {
                                $(this).css('color', '#8c6134');
                            })
                                .mouseout(function () {
                                    $(this).css('color', '#706E6C');
                                });

                            $('input, select, #add-history-address').focus(function () {
                                if ($('#history-address:visible').length) {
                                    $('#history-address').hide();
                                }
                            })

                            var $input = $('input.tel');
                            $input.keyup(function () {
                                validateNumber(this, $(this).val());
                            });

                            $('#add-history-address').click(function () {
                                $('input[name="收件人地區"], input[name="城市代碼"]').val('');
                                $('#收件人地址').val($('#收件人地址').attr('watermark')).css('color', '#a8a8a8');
                                $('.receiving-group select[name="provinces"]').val('').change();
                            })

                            var lastp = $.common.localStorage('receivingmp');

                            if (lastp) {
                                var tel = $.trim($input.attr('tel'));
                                var pcid = $.trim($input.attr('pcid'));

                                if (tel.length == 3 && lastp.split('_').length > 1 && lastp.split('_')[0] == pcid && lastp.split('_')[1].length == 8) {
                                    $input.val(lastp.split('_')[1] + tel.toString()).css('color', '#000');
                                }
                            }
                        });
                    </script>

                </div>
                <div class="clear"></div>
            </form>
        </div>

        <table align='center' border='1' cellspacing='0'>

            <tr>
                <td>地址ID
                <td>
                <td>省</td>
                <td>市</td>
                <td>区</td>
                <td>详细地址</td>
                <td>选择</td>
                <td>删除</td>
            </tr>
            <c:forEach items="${address}" var="c" varStatus="st">
                <tr>
                    <td name="address_id">${c.id}</td>
                    <td name="province">${c.receiver_province}</td>
                    <td name="city">${c.receiver_city}</td>
                    <td name="district">${c.receiver_district}</td>
                    <td name="address">${c.receiver_address}</td>
                    <td name="radio"><input type="radio" name="select_address"></td>
                    <td name="delete"><input type="checkbox" name="select_delete"></td>
                </tr>
            </c:forEach>

        </table>


        <button onclick="data_story"> 选择</button>
        <div class="clear"></div>
        <div class="grid_48 omega prefix_6 next-step">
            <a class="prev-btn"><span>继续购物</span></a>
            <a class="next-btn" href="/payPage"><span>立即结算</span></a>
        </div>
        <div class="clear"></div>

        <div class="clear"></div>

        <span>配送方式</span>
        <input id="mimile_shipping" type="radio" value="0" name="gender">mimile</input>
        <input id="zhongtong_shipping" type="radio" value="1" name="gender">中通</input>
        <input id="shunfeng_shipping" type="radio" value="2" name="gender">顺丰</input>


    </div>
</div>

<a href="/payPage"><span>立即结算</span></a>

<div id="wrap" class="container_48">
    <div id="footer">
        <table>
            <tbody>
            <tr>
                <td class="first-child"><span class="first-child">
                            <a href="https://www.lativ.com/Page/privacystatement">隐私条款</a></span><span
                        class="last-child">
                                <a href="https://www.lativ.com/Page/termservice">服务条款</a></span></td>
                <td class="last-child alignr">
                    <div>
                        <span><a
                                href="https://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20150330152028883"
                                target="_blank">上海工商</a></span>
                        <span><a href="http://www.miibeian.gov.cn/" target="_blank">沪ICP备15013396号</a></span>
                        <span class="last-child">© 2018 lativ</span>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    <div class="clear"></div>
</div>
<script type="text/javascript">
    var idleTime = 0;

    if (/Android|webOS|iPhone|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
        $("#footer td.last-child").removeClass("alignr");
    }

    $(function () {
        registerEpaperFancy();

        var mCart = $.cookie("mCart");

        if (mCart == null || mCart == undefined || mCart == '') {
            var ticks = new Date().getTime();
            var cookieTimeOut = '60';
            var date = new Date();
            date.setTime(date.getTime() + (cookieTimeOut * 60 * 1000));
            $.cookie("mCart", ticks, {expires: date, path: "/"});
            mCart = ticks;
        }

        $.get('/Shopping/ShowMiniCart/?r=' + mCart,
            function (data) {
                $('#MiniCartList').html(data);
                $('#stateByLogin').load('/Home/LoginState/?r=' + self.name);
            });

        $.common.processAdCookies('PID', '.lativ.com');

        $("#search-form").submit(function () {
            if ($('#keyWord').val() == $('#defaultTip').val()) {
                $('#keyWord').val($('#defaultKeyword').val());
            }
        });

        $("#keyWord").inputLabel('请输入关键词', {color: ""});

        var currentCategory = ($("#categoryMap").attr("maincategory") == undefined ? $('.sitemap a:first').text() : $("#categoryMap").attr("maincategory"));

        if (currentCategory != undefined) {
            var target = $("#nav li a[rel=" + currentCategory + "]");

            if (target.css("background-position") == undefined) {
                target.css("background-position-y", "").css("background-position-y", "-56px");
            }
            else {
                target.css("background-position", "").css("background-position", GetPositionX(target) + " -56px");
            }
        }

        var redirectToFancy = $.cookie("RedirectToFancy");

        if (redirectToFancy != null) {
            $.cookie("RedirectToFancy", null);
            var $linkObj = $("." + redirectToFancy + " a");

            if ($linkObj.size() > 0) {
                var redirectUrl = $.cookie("RedirectUrl");
                $.cookie("RedirectUrl", null);
                var fancyHeight = redirectToFancy == 'epaper' ? 330 : 500;
                var fancyWidth = redirectToFancy == 'epaper' ? 780 : 550;
                var href = redirectUrl != null && redirectUrl != '' ? redirectUrl : $linkObj.attr("href");

                $.fancybox({href: href}, {
                    width: fancyWidth,
                    height: fancyHeight,
                    type: 'iframe',
                    autoScale: false,
                    autoDimensions: false,
                    hideOnOverlayClick: false,
                    border: '5px solid rgba(40, 40, 40, 0.7)'
                });
            }
        }

        if ($.browser.mobile) {

            $('#logoUrl').attr('href', 'https://www.lativ.com?l=1');
        }

        var idleInterval = setInterval(timerIncrement, 60000);

        $("body").click(function () {
            idleTime = 0;
        });
        $(window).scroll(function () {
            idleTime = 0;
        });
        $(window).resize(function () {
            idleTime = 0;
        });
        $(document).keypress(function (e) {
            idleTime = 0;
        });

        $('.app-download a').bind('mouseover', function () {
            var px = 150;
            var uppx = 205;
            var ieFixd = 0;
            var add = 0;

            if ($.browser.msie && parseInt($.browser.version) <= 6) {
                ieFixd = -28;
            }
            else if ($.browser.msie && parseInt($.browser.version) > 6 && parseInt($.browser.version) < 8) {
                ieFixd = -11;
            }

            if ($('#stateByLogin a#logoutLink').length > 0) {
                add = 42;
            }

            if ($('#tradeCount').text().length > 1) {
                add += 6;
            }

            $('.app-download-img').css('right', (px + ieFixd + add) + 'px');
            $('img.app-download-up-img').css('right', (uppx + ieFixd + add) + 'px');
            $('.app-download-imgarea').show();
        })
            .bind('mouseout', function () {
                $('.app-download-imgarea').hide();
            });
    });

    function timerIncrement() {
        idleTime = idleTime + 1;
        var timeLimit = parseInt('20');

        if (idleTime > timeLimit) {
            if ($("#tradeCount").size() > 0) {
                if (parseInt($("#tradeCount").text()) > 0 && $(document).find("iframe[id='fancybox-frame']").size() <= 0) {
                    $.fancybox({href: '/Home/CartRemind'}, {
                        width: 660,
                        height: 250,
                        type: 'iframe',
                        autoScale: false,
                        autoDimensions: false,
                        hideOnOverlayClick: false,
                        border: '5px solid rgba(40, 40, 40, 0.7)'
                    });
                }
            }
        }
    }
</script>

<div style="display:none">
    <script src="./购物车2_files/z_stat.php" type="text/javascript"></script>
    <script src="./购物车2_files/core.php" charset="utf-8" type="text/javascript"></script>
    <a href="http://www.cnzz.com/stat/website.php?web_id=1262081591" target="_blank" title="站长统计">站长统计</a>
</div>


<div id="fancybox-tmp">

</div>
<div id="fancybox-loading">
    <div>

    </div>
</div>
<div id="fancybox-overlay"></div>
<div id="fancybox-wrap">
    <div id="fancybox-outer">
        <div class="fancybox-bg" id="fancybox-bg-n">

        </div>
        <div class="fancybox-bg" id="fancybox-bg-ne">

        </div>
        <div class="fancybox-bg" id="fancybox-bg-e">

        </div>
        <div class="fancybox-bg" id="fancybox-bg-se">

        </div>
        <div class="fancybox-bg" id="fancybox-bg-s">

        </div>
        <div class="fancybox-bg" id="fancybox-bg-sw">

        </div>
        <div class="fancybox-bg" id="fancybox-bg-w">

        </div>
        <div class="fancybox-bg" id="fancybox-bg-nw">

        </div>
        <div id="fancybox-content">

        </div>
        <a id="fancybox-close">
        </a>
        <div id="fancybox-title">

        </div>
        <a href="javascript:;" id="fancybox-left">
            <span class="fancy-ico" id="fancybox-left-ico" style="left:20px;"></span>
        </a>
        <a href="javascript:;" id="fancybox-right">
            <span class="fancy-ico" id="fancybox-right-ico" style="left:auto;right:20px;"></span>
        </a>
    </div>
</div>
<button onclick="showData">展示本地数据</button>
<button onclick="data_story()">储存数据</button>
<button onclick="order()">提交订单</button>
<script>
    function data_story() {
        var address_id;         //配送地址
        var shipping_type;      //配送方式

        console.log("start");
        //获取送货地址id
        var radioTd = document.getElementsByName("select_address");
        console.log(radioTd);
        var shipping_idTd = document.getElementsByName("address_id");
        for (var i = 0; i < radioTd.length; i++) {
            if (radioTd[i].checked == true)
                address_id = shipping_idTd[i].innerText;
        }

        console.log(address_id);
        //获取配送方式
        var type_radio = document.getElementsByName("gender");
        console.log(type_radio);
        for (var i = 0; i < type_radio.length; i++) {
            if (type_radio[i].checked == true)
                shipping_type = type_radio[i].value;

        }
        console.log(shipping_type);

        localStorage.address_id = address_id;
        localStorage.shipping_type = shipping_type;
    }

    function showData() {
        console.log("start showData");
    }
</script>
</body>
</html>