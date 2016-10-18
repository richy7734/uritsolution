<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
</head>
<body background = "resources\images\back3.png">
<%@include file = "header.jsp"%>
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
				<li><a href = "login"><span class = "glyphicon glyphicon-user"></span> Log in</a></li>
				<li class = "active"><a href = "aboutUs">About Us</a></li>
				<li class = "user"><%=request.getAttribute("login.username") %></li>
			</ul>
		</div>
	</div>
</nav>
</body>
</html>