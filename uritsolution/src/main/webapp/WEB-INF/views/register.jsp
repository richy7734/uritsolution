<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	
	<title>Register</title>
	<style>
		.divRegForm{
			position: relative;
			top:29px;
		}
		#regForm{
			text-align: right;
		}
		input{
			border: 1px solid DarkGrew;
    		border-radius: 4px;
		}
		#regPanel{
			width: 500px;			
			position: fixed;
			background: LightGrey;
		}
	</style>
</head>
<body>
<br/>
<div class = "container">
	<div class = "panel panel-danger" id = "regPanel">
		<div class = "panel-heading">Register</div>
		<div class = "panel-body">
			<br/>
			<table>
			<tr>
			<td><img id = "regLogo" src = "resources\images\login_img.png" width = 190px height = 190px ></td>
			<td>
			<div class = divRegForm>
			<form id = "regForm" method = "POST" action = "registration">
				<input type = "text" placeholder = "Customer ID" name = "C_ID" id = "C_ID" required size = "25"/>
				<br/><br/>
				<input type = "text" placeholder = "Name" name = "name" id = "name" required size = "25"/>
				<br/><br/>
				<input type = "text" placeholder = "Username/E-mail" name = "user" id = "user" required size = "25"/>				
				<br/><br/>
				<input type = "text" placeholder = "Phone" name = "phone" id = "phone" required size = "25"/>				
				<br/><br/>
				<input type = "text" placeholder = "Address" name = "addrs" id = "addrs" required size = "25"/>				
				<br/><br/>
				<input type = "password" placeholder = "Password" name = "pwd" id = "pwd" required size = "25"/>				
				<br/><br/>
				<center><input class = "btn btn-danger active" type = "submit" value = "Register"/></center>
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