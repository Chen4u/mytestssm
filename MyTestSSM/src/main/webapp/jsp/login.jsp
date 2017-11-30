<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <body>
  <div align="center">
    <h1>测试系统登录页面</h1>
    <form action="/MyTestSSM/login.do" method="post">
          卡号:
    <input name="cardId" />
    <br/>
    <br/>
           密码:
    <input type="password" name="password" />
    <br/>
    <br/>
    <input type="submit" value="登陆"/>
     &nbsp;&nbsp;&nbsp;
    <a href="/MyTestSSM/jsp/regist.jsp"><input type="button" value="注册"/></a>
    </form>
   <div align="center" style="color: red">
    ${message}
    ${cardmsg}
   </div>
    </div>
  </body>
</html>
