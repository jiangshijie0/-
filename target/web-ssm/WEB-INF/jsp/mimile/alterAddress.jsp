<%--
  Created by IntelliJ IDEA.
  User: Seven
  Date: 2018/8/2
  Time: 7:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="alter.html" method="post">
    <input id="id" name="id" type="text" placeholder="id">
    <input id="收件人姓名" name="name" type="text" placeholder="name">
    <input id="收件人电话" name="phone" type="text" placeholder="phone">
    <input id="收件人座机" name="zonePhone" type="text" placeholder="zonePhone">
    <input name="province" class="province" placeholder="province"/>
    <input name="city" class="city" placeholder="city"/>
    <input name="district" class="district" placeholder="district"/>
    <input name="address" class="address" placeholder="address"/>
    <input name="zipcode" class="zipcode" placeholder="zipcode">
    <input type="submit" value="alter">
</form>
</body>
</html>
