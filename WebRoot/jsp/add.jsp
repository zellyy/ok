<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>增加用户信息</title>
<style>
           input{
                   width:100px;
                   height:50px;
           }
           </style>
</head>
<body  style="background: url(images/kl.jpg);background-size:cover;">
                
	<br>
	<center>
		<form action="Add" name="add" >
			序号:<input type="text" name="id" /> <br>
			<br> 爱好:<input type="text" name="aihao" /> <br>
			<br> 编号:<input type="text" name="username" /> <br>
			<br> 姓名:<input type="text" name="name" /> <br>
			<br> 性别:<input type="radio" name="sex" value="man" />男 <input
				type="radio" name="sex" value="woman" />女 <br>
			<br> QQ号:<input type="text" name="qq" /> <br>
			<br> 密码:<input type="text" name="password" /> <br>
			<br> <input type="submit" value="提交" id="OK"/> <br>
			 <script>
            var ok=document.getElementById("OK");
            ok.onclick=function()

           {

                alert("增加成功");

}
</script>
			<br>
		</form>
	</center>
</body>
</html>