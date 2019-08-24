<%@ page import="com.ssm.po.Product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
		"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<meta charset="UTF-8"/>
<head id="Head1">
	<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
	<link rel="stylesheet" type="text/css" href="layui-master/src/css/layui.css"/>
	<script src="layui-master/src/layui.js"></script>
	<title>米米了登陆</title>
	<link type="text/css" rel="stylesheet" href="https://s1.lativ.com/content/bundle_empty.css?8210">
	<style>
		body {
			text-align: center
		}

		div {
			margin: 0 auto
		}

		table {
			margin: 0 auto
		}
	</style>

	<script>
        //判断用户输入的电子邮箱格式是否正确
        function checkEmail(email){
            var myReg=/^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
            return myReg.test(email);
        }
	</script>

	<script>
        function login() {
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
                            url: '../login.html',
                            type: 'post',
                            dataType: 'json',
                            data: {
                                userName: email,
                                userPassword: pw
                            },
                            success: function (data) {

                            }
                        });
                        layer.close(index);
                        return false;
                    }
                });
            });
        }
	</script>
	<script>
        function signup() {
            var ifSuccess = false;
            layui.use("layer", function () {
                var layer = layui.layer;
                layer.open({
                    type: 1,
                    title: "",
                    content: $("#signupDialog"),
                    btn: ["cancel", "signup"],
                    area: '800px',
                    btn1: function (index, layero) {
                        console.info("function cancel");
                        layer.close(index);
                    },
                    btn2: function (index, layero) {
                        var userName = $("#inputUserName").val();
                        var userPassword = $("#inputUserPassword").val();
                        var repeatePassword = $("#repeatePassword").val();
                        var mailAddress = $("#inputMailAddress").val();
                        var phoneNumber = $("#inputPhoneNumber").val();
                        var question = $("#inputQuestion").val();
                        var answer = $("#inputAnswer").val();
                        //尚未排除空格名称
                        if (userName === "") {
                            layui.use("layer", function () {
                                var layer = layui.layer;
                                layer.open({
                                    content: "请输入用户名"
                                });
                            });
                            return false;
                        }else if (userPassword === "") {
                            layui.use("layer", function () {
                                var layer = layui.layer;
                                layer.open({
                                    content: "请输入密码"
                                });
                            });
                            return false;
						} else if (repeatePassword !== userPassword) {
                            layui.use("layer", function () {
                                var layer = layui.layer;
                                layer.open({
                                    content: "两次密码输入不同"
                                });
                            });
                            return false;
                        } else if (phoneNumber.length !== 11) {
                            layui.use("layer", function () {
                                var layer = layui.layer;
                                layer.open({
                                    content: "请输入正确手机号码"
                                });
                            });
                            return false;
                        } else if (!checkEmail(mailAddress)) {
                            layui.use("layer", function () {
                                var layer = layui.layer;
                                layer.open({
                                    content: "邮箱格式不正确"
                                });
                            });
                            return false;
                        }
						// console.info(userName);console.info(userPassword);console.info(mailAddress);console.info(phoneNumber);console.info(question);console.info(answer);
						$.ajax({
                            url: '../signup.html',
                            type: 'post',
                            dataType: 'json',
                            data: {
								userName: userName,
								userPassword: userPassword,
								mailAddress: mailAddress,
								phoneNumber: phoneNumber,
								question: question,
								answer: answer
                            },
                            success: function (data) {
                                console.info("function success");
								ifSuccess = true;
								console.info(ifSuccess);
                                layui.use("layer", function () {
                                    var layer = layui.layer;
                                    layer.open({
                                        content:"" + ifSuccess
                                    });
                                });
                            },
                            error: function (data) {
                                console.info("function error");
                                layui.use("layer", function () {
                                    var layer = layui.layer;
                                    layer.open({
                                        content:"" + ifSuccess
                                    });
                                });
                            }
						});
                    }
                });
            });
            return false;
        }
	</script>
	<script>
		function logout() {
            window.location.href='../logout.html';

        }
	</script>
</head>

<body>
<button onclick="signup()" class="layui-btn">signup</button>
<button onclick="login()" class="layui-btn">login</button>
<button onclick="logout()" class="layui-btn">logout</button>
<button onclick="window.location.href='../a.do'" title="个人信息" class="layui-btn">个人信息</button>
<div id="loginDialog" style="display:none;">
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
<div id="signupDialog" style="display:none;" class="login-left">
	<table class="fancy-center">
		<tbody>
		<tr>
			<td>
				<form id="formSignup" method="post" action="">
					<div id="divSignup" style="" class="login-left">
						<ul>
							<li class="title fancy-title gapm40 padt45">会员注册</li>
							<li class="gapm30">
								<input id="inputUserName" class="layui-input" title="" placeholder="用户名"/>
							</li>
							<li class="gapm30">
								<input id="inputUserPassword" type="password" class="layui-input" title="" placeholder="密码"/>
							</li>
							<li class="gapm30">
								<input id="repeatePassword" type="password" class="layui-input" title="" placeholder="确认密码"/>
							</li>
							<li class="gapm30">
								<input id="inputMailAddress" class="layui-input" title="" placeholder="邮件地址"/>
							</li>
							<li class="gapm30">
								<input id="inputPhoneNumber" class="layui-input" title="" placeholder="电话号码"/>
							</li>
							<li class="gapm30">
								<input id="inputQuestion" class="layui-input" title="" placeholder="密保问题"/>
							</li>
							<li class="gapm30">
								<input id="inputAnswer" class="layui-input" title="" placeholder="答案"/>
							</li>
						</ul>
					</div>
				</form>
			</td>
		</tr>
		</tbody>
	</table>
</div>
</body>
</html>