<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/10/19
  Time: 0:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("utf-8");
%>
<html>
<head>
    <title>show</title>
    <style>
        td{
            line-height:25px; font-size:14px
        }
    </style>
</head>
<body>
<div style="width:100%;text-align:center">
    欢迎您！${requestScope.user.username}
    您的密码是：${requestScope.user.userpass}<br>
    到现在为止已经有${requestScope.usersCount}位用户注册！！！
    <table width="80%" border="1" align="center">
        <tr>
            <td>id</td>
            <td>用户名</td>
            <td>密码</td>
            <td>修改</td>
            <td>删除</td>

        </tr>
        <c:forEach var="u" items="${requestScope.userList}">
            <tr>
                <td>${u.id}</td>
                <td>${u.username}</td>
                <td>${u.userpass}</td>
                <td><a href="${pageContext.request.contextPath}/userControl/findUserById/${u.id}">修改</a></td>
                <td><a href="${pageContext.request.contextPath}/userControl/deleteUser/${u.id}">删除</a></td>
            </tr>
        </c:forEach>
    </table>

    <div>
        <form action="${pageContext.request.contextPath}/userControl/findUserByName" method="post">
            <input name="keyword">
            <input type="submit" value="搜索">
        </form>
    </div>
</div>
</body>
</html>
