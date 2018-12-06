<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/10/14
  Time: 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
  <base href="<%=basePath%>">
  <title>主页</title>
</head>
<body>
<%response.sendRedirect(path+"userControl/login");%>
<%--<a href="WEB-INF/myjsp/login.jsp">去登录，go！！！</a>--%>
</body>
</html>
