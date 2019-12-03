<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/12/2
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>菜鸟教程(runoob.com)</title>
</head>
<body>
Hello World!<br/>
<%
    out.println("你的 IP 地址 " + request.getRemoteAddr());
%>
</body>
</html>
