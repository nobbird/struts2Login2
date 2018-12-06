<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/11/29
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询</title>
</head>
<body>
<div>
    <table width="80%" border="1" align="center">
        <tr>
            <td>id</td>
            <td>用户名</td>
            <td>密码</td>
        </tr>
        <c:forEach var="u" items="${requestScope.userList}">
            <tr>
                <td>${u.id}</td>
                <td>${u.username}</td>
                <td>${u.userpass}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
