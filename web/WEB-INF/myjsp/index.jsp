<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/10/14
  Time: 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
  </head>
  <body>
  <div style="width:100%;text-align:center">
  欢迎您！
  <form action="${pageContext.request.contextPath}/userControl/register" method="post" >
  <div class="text-user">
    <input name="user.username" type="text" placeholder="用户名">
  </div>
  <div>
    <input name="user.userpass" type="password" placeholder="密码">
  </div>
  <div class="btn">
    <button type="submit">注册</button>
  </div>
  <div class="reg_btn">
    <span>已有帐号？</span><a href="/userControl/login">马上登录</a>
  </div>
  </form>
  </div>
  </body>
</html>
