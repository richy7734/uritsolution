<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page isELIgnored = "false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Register [Login fail]</title>
</head>
<body>
	<%@include file = "header.jsp" %>
<nav class = "navbar navbar-inverse">
	<div class = "container">
		<div class = "navbar-header">
			<button type = "button" class = "navbar-toggle avtive" data-toggle = "colapse" data-target = "#myNavbar">
				<span class = "icon-bar"></span>
				<span class = "icon-bar"></span>
				<span class = "icon-bar"></span>
			</button>
		<a class = "navbar-brand" href = "home">UrItSolutions</a>
		</div>
		<div class = "collapse navbar-collapse" id = "myNavbar">
			<ul class = "nav navbar-nav">
				<li class = "active"><a href = "home">Home</a></li>
				<li><a href = "category">Category</a></li>
				<li><a href = "products">Products</a></li>
			</ul>
			<ul class = "nav navbar-nav navbar-right">
				<li><a href = "aboutUs">About Us</a></li>
				<li>${username}</li>
			</ul>
		</div>
	</div>
</nav>
<br/>
<p>Incorrect username or password...</p>
<br/>
<table>
	<tr>
		<td><a href = "login">Try again</a></td>
		<td>---or---</td>
		<td><a href =# data-dismiss = "modal" data-toggle = "modal" data-target = "#regModal"> Register</a></td>
	</tr>
</table>
<div class = "modal fade" id = "regModal" role = "dialog">
	<div class  = "modal-dialog">
	 	<%@include file = "register.jsp" %>
	</div>
</div>
</body>
</html>