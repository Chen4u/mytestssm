<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<script type="text/javascript" src="/MyTestSSM/js/jquery-1.8.3.js"></script>
  <body>
  <div align="center">
  <h1>测试系统注册页面</h1>
    <form action="/MyTestSSM/regist.do" method="post">
          卡号:
    <input name="cardId" id="cardId"/><span></span>
    <br/>
    <br/>  
          姓名:
    <input name="name" id="name"/>
    <br/>
    <br/>  
           密码:
    <input type="password" name="password" id="password"/>
    <br/>
    <br/>  
          重复密码:
    <input type="password" />
    <br/>
    <br/>    
    <input type="submit" value="注册"/>
    &nbsp;&nbsp;&nbsp;
    <a href="/MyTestSSM/jsp/login.jsp"><input type="button" value="登录"/></a>
    </form>
    <div align="center" style="color:red;">
      ${cardmsg}
    </div>
    </div>
  </body>
  <script type="text/javascript">


  </script>
</html>
