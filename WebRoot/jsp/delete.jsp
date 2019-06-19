<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>删除用户信息页面</title>
<style>
           input{
                   width:100px;
                   height:50px;
           }
           </style>
</head>
<body style="background: url(images/kll.jpg);background-size:cover;font-color:white">
	
	<center>
		<form action="Delete" method="post" >
		
		<br>
			<h2><font color="white">请输入要删除用户的序号:</font></h2><input type="text" name="id" /> 
			<br><input type="submit" value="提交" id="OK"/>
		
           <script>
            var ok=document.getElementById("OK");
            ok.onclick=function()

           {

                alert("删除成功");

}
</script>
		</form>
	</center>
</body>
</html>