<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Register</title>
	<style>
		#regPanel{
			left: 380px;
			width: 500px;
			height: 330px;
			position: fixed;
			background: LightGrey;
			}
		.divForm{
			position: relative;
			left: 80px;
		}
		input{
			border: 1px solid DarkGrew;
	    		border-radius: 4px;
		}


		#regForm{
			text-align: center;
			left: 50px;
			top: 30;
		}
		
	</style>
</head>
<body>
	<%@include file = "header.jsp" %>
	<div class = "panel panel-info" id = "regPanel">
		<div class = "panel-heading">Register</div>
			<div class = "panel-body">
			<table>
				<tr>
				<td><center><img src = "https://cdn2.iconfinder.com/data/icons/user-management/512/add-256.png" width = 190px height = 190px></center></td>
				<td>
				<div class = "divForm">
				<form id = "regForm" method = "post" action = "RegTemp.asp">
				<br/>
				<input type = "text" placeholder = "Name" name = "name" required><br/><br/>
				<input type = "text" placeholder = "Email" name = "email" requider><br/><br/>
				<input type = "password" placeholder = "Password" name = "regPwd" requider><br/><br/>
				<input type = "text" placeholder = "Address" name = "address" requider><br/><br/>
				<input class = "btn btn-info active" type = "submit" value = "Register"/><br/><br/>
				</form>
				</div>
				</td>
				</tr>
				</table>
			</div>
		</div>

</body>
</html>