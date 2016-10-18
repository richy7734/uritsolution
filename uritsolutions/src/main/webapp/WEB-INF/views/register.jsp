<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
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
			<form:form id = "regForm" method = "POST" commandName = "regCommand" action = "./registration">
				<form:input type = "text" path = "name" placeholder = "Name" size = "25"/>
				<br/><br/>
				<form:input type = "text" path = "username" placeholder = "Username/E-mail" size = "25"/>				
				<br/><br/>
				<form:input type = "text" path = "phone" placeholder = "Phone" size = "25"/>				
				<br/><br/>
				<form:input type = "text" path = "address" placeholder = "Address"  size = "25"/>				
				<br/><br/>
				<form:input type = "password" path = "password" placeholder = "Password" size = "25"/>	
				<br/><br/>
				<center><input class = "btn btn-danger active" type = "submit" value = "Register"/></center>
				<br/>
				<br/>
			</form:form>
			</div>
			</td>
			</tr>
			</table>
		</div>
	</div>
</div>
</body>
</html>