<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/11/29
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
</head>
<body>
<div style="width:100%;text-align:center">
    <form action="${pageContext.request.contextPath}/userControl/updeteMessage/${requestScope.myuser.id}" method="post">
            <input type="text" value="${requestScope.myuser.username}" name="username">
            <br>
            <input type="text" value="${requestScope.myuser.userpass}" name="userpass">
            <br>
            <input type="submit" value="提交">

    </form>
</div>
</body>
</html>
