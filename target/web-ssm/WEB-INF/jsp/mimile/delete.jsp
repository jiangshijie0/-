<%--
  Created by IntelliJ IDEA.
  User: Seven
  Date: 2018/8/2
  Time: 7:11
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
    int id = Integer.parseInt(request.getParameter("id"));

    String sql = "delete from mimile_shipping where id = " + id;

    String URL = "jdbc:mysql://127.0.0.1:3306/mimile?useUnicode=true&amp;characterEncoding=utf-8";
    String USER = "root";
    String PASSWORD = "huang1997";
    //1.������������
    Class.forName("com.mysql.jdbc.Driver");
    //2.������ݿ�����
    Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
    //3.ͨ�����ݿ�����Ӳ������ݿ⣬ʵ����ɾ�Ĳ飨ʹ��Statement�ࣩ
    Statement st = conn.createStatement();
    st.executeUpdate(sql);


    //�ر���Դ
    st.close();
    conn.close();
%>
<a href="deleteAddress.html">����ɾ��</a>
<a href="/shopCart2.html">����</a>
</body>
</html>