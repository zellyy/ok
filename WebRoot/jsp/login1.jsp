<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员登陆界面</title>
</head>
<body style="background: url(images/3t.jpg);background-size:cover;font-color: white; font-size:1.6em;">
<!--<body style="background: url(images/jian1.jpg);background-size:cover;font-color: white; font-size:1.6em;">-->

<center>
<form action="${pageContext.request.contextPath }/com.panda.action/LgoinAction.action" method="post">
<br>
<br>
<br>
<br>
<br>
<br>

管理员ID:<input type="text" name="namee"><br>
<br>
密码:<input type="password" name="passwordd"><br>
<br>
<input type="submit" value="登录">
</form>
</center>
</body>
</html> 