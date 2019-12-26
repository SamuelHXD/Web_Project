<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/11/19
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>注册</title>
</head>
<body>
<!--
     绝对路径：
         /项目名/servlet访问路径
         /servlet2/reg
    相对路径：
        写出当前网页和访问目标的相对关系.
        当前网页访问路径: /servlet2/register.html
        访问目标访问路径: /servlet2/reg
        它们的相对路径是: reg
    注意:绝对路径必须以/开头,相对路径相反 .
 -->
<form action="reges" method="post">
  <p>
    账号:<input type="text" name="code"/>
  </p>
  <p>
    密码:<input type="password" name="pwd"/>
  </p>
  <p>
    性别:
    <input type="radio" name="sex" value="M"/>男
    <input type="radio" name="sex" value="F"/>女
  </p>
  <p>
    兴趣:
    <input type="checkbox" name="interest" value="basketball"/>篮球
    <input type="checkbox" name="interest" value="football"/>足球
    <input type="checkbox" name="interest" value="volleyball"/>排球
  </p>
  <p>
    <input type="submit" value="提交"/>
  </p>

</form>
</body>
</html>
