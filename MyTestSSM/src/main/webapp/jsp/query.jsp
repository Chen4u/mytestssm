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
	
	<script type="text/javascript" src="/MyTestSSM/js/jquery-1.8.3.js"></script>
	</head>

	<body>
	

		<form action="/MyTestSSM/showReal.do" method="post">

			<label>
				查询类型:
			</label>
			<select name="type">
			
				<option value="2" <c:if test="${pb.type==2}">checked</c:if>>
					用户名
				</option>
				<option value="1" <c:if test="${pb.type==1}">checked</c:if>>
					身份证
				</option>
			</select>

			<input name="content" value="${pb.content }"/>

			<input type="submit" value="提交" />

		</form>

		<table>
			<tr>
				<td>
					序号
				</td>
				<td>
					项目名称
				</td>
				<td>
					产权人
				</td>

				<td>
					身份证
				</td>
				<td>
					房屋类型
				</td>
				<td>
					使用面积
				</td>
				<td>
					建造时间
				</td>
			</tr>
			<c:forEach items="${pb.list}" var="r">
				<tr>
					<td>
						${r.id }
					</td>

					<td>
						${r.projectName }
					</td>
					<td>
						${r.name }
					</td>
					<td>
						${r.cardId }
					</td>

					<td>
						${r.houseType }
					</td>
					<td>
						${r.area }
					</td>
					<td>
						${r. buildtime}
					</td>


				</tr>
			</c:forEach>
		</table>

<tr>
	<td colspan="7">
	<a href="/MyTestSSM/showReal.do?pageNo=1&type=${pb.type}&content=${pb.content}">首页</a>
	<a href="/MyTestSSM/showReal.do?pageNo=${pb.prePage }&type=${pb.type}&content=${pb.content}">上页</a>
	<a href="/MyTestSSM/showReal.do?pageNo=${pb.nextPage }&type=${pb.type}&content=${pb.content}">下页</a>
	<a href="/MyTestSSM/showReal.do?pageNo=${pb.lastPage }&type=${pb.type}&content=${pb.content}">末页</a>
	
	${pb.pageNo}/${pb.totalPages }
	
	
	</td>
</tr>



<script type="text/javascript">
	
	$("tr:odd").css("backgroundColor","red");
	$("tr:even").css("backgroundColor","green");
	
</script>


	</body>
</html>
