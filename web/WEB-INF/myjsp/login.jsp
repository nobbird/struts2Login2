<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/10/18
  Time: 23:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<div style="width:100%;text-align:center">
    欢迎您！
    <form action="${pageContext.request.contextPath}/userControl/login" method="post" >
        <div class="text-user">
            <input name="username" type="text" placeholder="用户名">
        </div>
        <div>
            <input name="userpass" type="password" placeholder="密码">
        </div>
        <div class="btn">
            <button type="submit">登录</button>
        </div>
        <div class="reg_btn">
            <span>没有帐号？</span><a href="/userControl/index">马上注册</a>
        </div>
    </form>
</div>
</body>
</html>
