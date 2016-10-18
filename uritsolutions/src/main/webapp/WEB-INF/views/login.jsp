<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="forms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@page isELIgnored = "false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	
	<title>Log in</title>
	<style>
		.divForm{
			position: relative;
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
			width: 500px;			
			position: fixed;
			background: LightGrey;
		}
	</style>
</head>
<body>
<%@include file = "header.jsp" %>
<nav class = "navbar navbar-inverse">
	<div class = "container">
		<div class = "navbar-header">
			<button type = "button" class = "navbar-toggle avtive" data-toggle = "colapse" data-target = "#myNavbar" aria-expanded="false">
				<span class = "icon-bar"></span>
				<span class = "icon-bar"></span>
				<span class = "icon-bar"></span>
			</button>
		<a class = "navbar-brand" href = "home">UrItSolutions</a>
		</div>
		<div class = "collapse navbar-collapse" id = "myNavbar">
			<ul class = "nav navbar-nav nav-tabs">
				<li><a href = "home">Home</a></li>
				<li><a href = "category">Category</a></li>
				<li><a href = "products">Products</a></li>
			</ul>
			<ul class = "nav navbar-nav nav-tabs navbar-right">
				<li class = "active"><a href = "login"><span class = "glyphicon glyphicon-user"></span> Log in</a></li>
				<li><a href = "aboutUs">About Us</a></li>
				<li><a href = "RegTemp">Register</a></li>
				
			</ul>
		</div>
	</div>
</nav>

<div class = "container">
	<div class = "panel panel-info" id = "loginPanel">
		<div class = "panel-heading">Log in</div>
		<div class = "panel-body">
			<table>
			<tr>
			<td><img id = "accLogo" src = "resources\images\login_img.png" width = 190px height = 190px ></td>
			<td>
			<div class = divForm>
			<c:url var="loginUrl" value="/j_spring_security_check"></c:url>
			<form id = "loginForm" action = "${loginUrl}"  method = "POST" >
				<p></p>
				<input type = "text" name = "j_username" placeholder = "User name"  size = "25"/>
				<br/><br/>
				<input type = "password" name = "j_password" placeholder = "Password" size = "25"/>
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