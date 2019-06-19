<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改密码</title>
<style>
           input{
                   width:100px;
                   height:50px;
           }
           </style>
</head>
<body style="background: url(images/aa.jpg);background-size:cover;">
	<center>
		<form action="Update">
		<br>
		<br>
			<h1>输入要修改密码的用户序号：</h1><input type="text" name="id" /><br>
			<h1>输入要修改的密码：</h1><input type="text" name="password" /><br>
			<br> <input type="submit" value="提交" id="OK"/>
 <script>
            var ok=document.getElementById("OK");
            ok.onclick=function()

           {

                alert("修改成功");

}
</script>
		</form>
	</center>
</body>
</html>