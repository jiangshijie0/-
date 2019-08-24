<%--
  Created by IntelliJ IDEA.
  User: Seven
  Date: 2018/8/1
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<script type="text/javascript" src="../../../js/jquery-3.2.1.js"></script>
<link rel="stylesheet" type="text/css" href="../../../layui-master/src/css/layui.css"/>
<script src="../../../layui-master/src/layui.js"></script>
<head>
    <title>Login</title>
    <script>
        function login() {
            // String flag = "fail";
            layui.use("layer", function () {
                var layer = layui.layer;
                layer.open({
                    type: 1,
                    title: "",
                    content: $("#loginDialog"), //这里content是一个普通的String
                    btn: '提交',
                    area: '800px',
                    btn1: function (index, layero) {
                        var email = $("#email").val();
                        var pw = $("#pw").val();
                        console.info(pw);
                        console.info(email);
                        $.ajax({
                            url: 'login.html',
                            type: 'post',
                            dataType: 'json',
                            data: {
                                userName: email,
                                userPassword: pw
                            },
                            success: function (data) {
                                if (data.equals("success")) {

                                } else if (data.equals("fail")) {
                                    alert("fail");
                                }
                                // flag = data;
                            }
                        });
                        window.location.href='personalInfo.html';
                        layer.close(index);
                        // if (flag.equals("success")) {
                        // } else if (flag.equals("fail")) {
                        //
                        // }
                        return false;
                    }
                });
            });
        }
    </script>
</head>
<body>
<div id="loginDialog" style="display: none">
    <table id="login-2015" class="fancy-center">
        <tbody>
        <tr>
            <td>
                <form id="loginform" method="post" action="">
                    <div id="" style="" class="login-left">
                        <ul>
                            <li class="title fancy-title gapm40 padt45">会员登录</li>
                            <li class="gapm30">
                                <input id="email" name="email" type="text" value="" placeholder="用户名">
                            </li>
                            <li id="pwd" class="gapm30">
                                <input autocomplete="off" id="pw" name="pw" type="password" value="" placeholder="密码">
                                <a class="font_gray9 forgetpw" href="../login.do">忘记密码？</a>
                            </li>
                        </ul>
                    </div>
                </form>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<button class="layui-btn" onclick="login()">login</button>
</body>
</html>
