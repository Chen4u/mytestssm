<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'index.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	
		.div1{
			float: left;;
			width: 200px
		}
		
		.div2{
		float: left;
		width: 500px;
		height: 800px;
		}
	</style>
	</head>

	<body>
	登录人:${user.name } <a href="/MyTestSSM/logout.do">退出</a>


		<div>
			<div class="div1">
				<a href="/MyTestSSM/showReal.do" target="frame1">房屋查询</a>
			</div>
			<div class="div2">
				<iframe frameborder="0" width="500px" height="700px" src="/MyTestSSM/jsp/query.jsp" name="frame1"></iframe>
			</div>
		</div>




	</body>
</html>
