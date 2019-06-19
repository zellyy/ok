<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register here</title>
<style>
input{
	height:20px;
	width:150px;
}
</style>
</head>
<body style="background-size:100%;background-attachment:fixed;background: url(images/1.jpeg);background-size:cover; text-align:center;">
<!--<body style="background-size:100%;background-attachment:fixed;background: url(images/jian4.jpg);background-size:cover; text-align:center;">-->

<div style="height:150px">
</div>

<div style="margin:0 auto;width:800px;height:600px;">
<div style="height:100px">
	<h1 style="text-align:center;color:red;weight:blod;">注册用户</h1>
	<h4 style="text-align:center;color:red">带*号信息必须填写</h4>
</div>
<div style="height:5px"></div>
	<div style="margin:0 auto;width:260px;height:300px">
		<form action="register" method="post">
		<center>
		<table style="border-collapse:separate;border-spacing:10px;color:white">
		<tr>
			<th>用户<a style="color:red;font-size:14">*</a></th><th><input style="height:25px" type="text" name="user.id"  value=""></th>
		</tr>
		<tr>
			<th>爱好<a style="color:red;font-size:14">*</a></th><th><input style="height:25px" type="password" name="user.aihao" value=""></th>
		</tr>
		
		<tr>
			<th>编号<a style="color:red;font-size:14">*</a></th><th><input style="height:25px" type="text" name="user.username"  value=""></th>
		</tr>
		<tr>
			<th>姓名<a style="color:red;font-size:14">*</a></th><th><input style="height:25px" type="text" name="user.name"  value=""></th>
		</tr>
			
		<tr>
		    <th>性别<a style="color:red;font-size:14">*</a></th><th><input type="radio" name="user.sex" value="man" />男 <input type="radio" name="user.sex" value="woman" />女 </th>
		</tr>
		
		<tr>
			<th>QQ<a style="color:red;font-size:14">*</a></th><th><input style="height:25px" type="password" name="user.qq" value=""></th>
		</tr>
		
		<tr>
			<th>密码<a style="color:red;font-size:14">*</a></th><th><input style="height:25px" type="text" name="user.password"  value=""></th>
		</tr>
		
		</table>
		<input type="submit" value="注册" name="submit" style="height:25px;width:50px">
		</center>
		</form>
	</div>
</div>
<h4 style="text-align:center;">1</h4>
</body>
</html>