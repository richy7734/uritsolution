<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	
	<title>Log in</title>
	<style>
		.divForm{
			position: relative;
			left: 50px;
			top:29px;
		}
		#loginForm{
			text-align: right;
		}
		input{
			border: 1px solid DarkGrew;
    		border-radius: 4px;
		}
		#loginPanel{
			left: 380px;
			width: 500px;
			height: 300px;
			position: fixed;
			background: LightGrey;
		}
	</style>
</head>
<body>
<%@include file = "header.jsp" %>
<br/>
<div class = "container">
	<div class = "panel panel-info" id = "loginPanel">
		<div class = "panel-heading">Log in</div>
		<div class = "panel-body">
			<br/>
			<table>
			<tr>
			<td><img id = "accLogo" src = "https://cdn4.iconfinder.com/data/icons/security-soft-1/512/register_log_in_user_login_session_authorize_open_account_access_key-512.png" width = 190px height = 190px ></td>
			<td>
			<div class = divForm>
			<form id = "loginForm" method = "post" action = "custm.jsp">
				<input type = "text" placeholder = "User name" name = "user" id = "user" required size = "25"/>
				<br/><br/>
				<input type = "password" placeholder = "Password" name = "pwd" id = "pwd" required size = "25"/>
				<br/>
				<a href = "RegTemp.jsp">Register here</a>
				<br/><br/>
				<center><input class = "btn btn-danger active" type = "submit" value = "Log In"/></center>
				<br/>
				<br/>
			</form>
			</div>
			</td>
			</tr>
			</table>
		</div>
	</div>
</div>
</body>
</html>