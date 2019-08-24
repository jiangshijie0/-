<%--
  Created by IntelliJ IDEA.
  User: Seven
  Date: 2018/8/3
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pay</title>

    <link rel="stylesheet" type="text/css" href="css/base.css"/>
    <link rel="stylesheet" type="text/css" href="css/buyConfirm.css" />
</head>
<body>

<div class="order-info">
    <div class="msg">
        <h3>您的订单已提交成功！付款咯～</h3>
        <p></p>

        <p class="post-date">成功付款后，立即发货</p>
    </div>
    <div class="info">
        <p>
            金额：<span class="pay-total">${total_price}元</span>
        </p>
        <p>
            订单提交时间：${id}                    </p>
    </div>
    <div class="icon-box">
        <i class="iconfont"><img src="images/yes_ok.png"></i>
    </div>
</div>
<div class="box-ft clearfix">
    <script>
        function check() {
            console.log("check()");
            var order_id = '${id}';
            window.location.href='orderDetail.html?id='+order_id;
        }
    </script>
    <a href="orderDetail.html?id=${id}" class="btn btn-lineDakeLight">立即支付</a>
    <span class="tip"></span>
</div>

</body>
</html>
