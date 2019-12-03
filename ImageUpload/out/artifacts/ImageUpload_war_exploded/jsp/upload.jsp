<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/12/3
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传</title>
</head>
<body>
    <form action="/UploadServlet" method="post" enctype="multipart/form-data">
        <input id="file" name="file" type="file" />
        <input type="submit" value="提交" />
    </form>
</body>
</html>
