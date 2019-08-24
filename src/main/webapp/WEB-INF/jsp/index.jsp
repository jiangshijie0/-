<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Seven
  Date: 2018/7/26
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>mimile</title>
</head>
<body>
Hello ! <br>
This is index.jsp!!
<table>
    <c:forEach items="${students}" var="stu">
        <tr>
            <td>${stu.SID}</td>
            <td>${stu.sage}</td>
            <td>${stu.sname}</td>
            <td>${stu.ssex}</td>
        </tr>

    </c:forEach>
</table>

</body>
</html>
