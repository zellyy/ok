<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	function check(obj) {
		if (obj.id == 'checkbox1' && obj.checked == true) {
			document.getElementById('checkbox2').checked = false;
			document.getElementById('form1').action = "userlogin";
			document.getElementById('input1').name = "user.id";
			document.getElementById('input2').name = "user.password";
		} else if (obj.id == 'checkbox2' && obj.checked == true) {
			document.getElementById('checkbox1').checked = false;
			document.getElementById('form1').action = "adminlogin";
			document.getElementById('input1').name = "admin.admin_id";
			document.getElementById('input2').name = "admin.admin_password";
		}
	}
</script>
<title>初始登录页面</title>
</head>
<body style="margin: 0px; padding: 0px; background:url(images/ll.jpg); background-size:cover;background-attachment: fixed;class='png-fix'" >
	<!--<body style="margin: 0px; padding: 0px; background:url(images/jian3.JPG); background-size:cover;background-attachment: fixed;class='png-fix'" >-->
	
	<div style="height: 50px"></div>

	<div style="margin: 0 auto; width: 800px; height: 500px;">
		<div style="height: 50px">
			<h1 style="text-align: center; font-size: 50">欢迎登录</h1>
		</div>
		<div style="height: 315px;">
			<div style="height: 100px"></div>
			<center>
				<form id="form1" action="userlogin" method="get">
					<table style="border-collapse: separate; border-spacing: 15px;">
						<tr>
							<th>用户名</th>
							<th><input id="input1" type="text" name="user.id"
								value="" style="width: 150px; height: 30px;"></th>
						</tr>
						<tr>
							<th>密码</th>
							<th><input id="input2" type="password"
								name="user.password" value=""
								style="width: 150px; height: 30px;"></th>
						</tr>
					</table>
					普通用户<input type="checkbox" name="users" id='checkbox1'
						checked='true' onclick='check(this)'>
						<!--  &nbsp;&nbsp;管理员<input
						type="checkbox" name="adminlogin" id='checkbox2' onclick='check(this)'>-->
					<br /></br> <input type="submit" value="登录" name="submit"
						style="height: 30px; width: 50px">
				</form>
			</center>
		</div>
		<br />
		<div style="text-align: center; mwidth: 130px">
			<a href="/crud/Register.jsp">新成员点此注册</a>
		</div>
	</div>
	<h4 style="text-align: center;">1</h4>
</body>
</html>