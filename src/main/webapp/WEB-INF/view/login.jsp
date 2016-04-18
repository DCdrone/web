<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>
<body>
  <form action="login.do" method="post">
    用户登陆<br>
    <hr>		
    用户名：<input type="text" name="username"><br>
    密码：<input type="text" name="password"><br>
    <input type="submit" value="登陆">
  </form>
</body>