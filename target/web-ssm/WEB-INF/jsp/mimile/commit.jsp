<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Seven
  Date: 2018/7/31
  Time: 0:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0074)https://www.lativ.com/Product/ProductComment?styleNo=30223&itemNo=30223051 -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>- lativ</title>
    <link href="css/openwin.css" rel="stylesheet" type="text/css">



</head>
<body>
<div id="wrap" class="osize">
    <style>
        #aboutProductUl li > div {
            cursor: pointer;
            line-height: 8px;
        }

        #aboutProductUl li > div:hover {
            color: #83521E;
        }
    </style>
    <script type="text/javascript">
        $.get('/Product/GetCommentCount', { productSN: '30223' }, function (count) {
            if (isNaN(count) === false && isFinite(count)) {
                $('#comment-count').text(count);
            }
        });

        $('#aboutProductUl li > div').click(function (e) {
            var $t = $(e.currentTarget);
            if ($t.attr('data-current') === undefined) {
                location.href = $t.attr('data-url');
            }
        });
    </script>

    <div class="panes">
        <div id="comment-body">
            <div id="comment-list">
                <c:forEach items="${order_items}" var="o">
                    <div class="comment-item" data-cid="159655">
                        <div class="comment-left"><img src="${o.preview_image}"></div>
                        <div class="comment-right">
                            <div class="comment-main">
                                <p class="order">订单号：${o.order_id}</p>
                                <p class="content">${o.order_item_comment}</p>
                                <p class="response color"><br>
                                </p>
                                <div class="comment-footer"><span class="date">${o.comment_create_time}</span><span class="color">${o.color}-${o.product_size}</span></div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div id="loading-box" style="display: none;"> <span>载入中...</span> </div>
        </div>
    </div>
</div>
<!-- end of wrap -->

</body>
</html>
