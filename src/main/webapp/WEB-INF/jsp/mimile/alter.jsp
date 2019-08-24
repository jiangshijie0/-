<%--
  Created by IntelliJ IDEA.
  User: Seven
  Date: 2018/8/2
  Time: 7:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>


<%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String zonePhone = request.getParameter("zonePhone");
    String province = request.getParameter("province");
    String city = request.getParameter("city");
    String district = request.getParameter("district");
    String address = request.getParameter("address");
    String zipcode = request.getParameter("zipcode");

    String sql = "UPDATE `mimile`.`mimile_shipping` SET " +
            "`receiver_name`= '" +name + "'," +
            "`receiver_phone`= '" +phone + "'," +
            "`receiver_mobile`= '" +zonePhone + "'," +
            "`receiver_province`= '" +province + "'," +
            "`receiver_city`= '" +city + "'," +
            "`receiver_district`= '" +district + "'," +
            "`receiver_address`= '" +address + "'," +
            "`receiver_zip`= '" +zipcode + "' " +
            "WHERE `id`= "+ id +";";

    String URL = "jdbc:mysql://127.0.0.1:3306/mimile?useUnicode=true&amp;characterEncoding=utf-8";
    String USER = "root";
    String PASSWORD = "huang1997";
    //1.加载驱动程序
    Class.forName("com.mysql.jdbc.Driver");
    //2.获得数据库链接
    Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
    //3.通过数据库的连接操作数据库，实现增删改查（使用Statement类）
    Statement st = conn.createStatement();
    st.executeUpdate(sql);


    //关闭资源
    st.close();
    conn.close();
%>
<a href="alterAddress.html">继续修改</a>
<a href="/shopCart2.html">返回</a>
</body>
</html>