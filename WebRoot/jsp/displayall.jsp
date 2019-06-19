<%@ page language="java" import="java.util.*,com.po.*"
	pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body style="background: url(images/a.jpg);background-size:cover;">

<br>

	<br>
	<br>
	<h1>显示所有用户信息:</h1>
	
	<table width="500" border="1">
		<tbody>
			<tr>
				<td>&nbsp;序号</td>
				<td>&nbsp;爱好</td>
				<td>&nbsp;编号</td>
				<td>&nbsp;姓名</td>
				<td>&nbsp;性别</td>
				<td>&nbsp;QQ号</td>
				<td>&nbsp;密码</td>
			</tr>
			<!-- 使用了JSTL对list进行迭代 -->
			<c:forEach items="${requestScope.list }" var="c">
				<tr>
					<td>${c.id}</td>
					<td>${c.aihao}</td>
					<td>${c.username}</td>
					<td>${c.name}</td>
					<td>${c.sex}</td>
					<td>${c.qq}</td>
					<td>${c.password}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
</body>
</html>