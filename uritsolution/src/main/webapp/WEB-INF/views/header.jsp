<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
	<script src="resources/bootstrap/js/jquery.min.js"></script>
	<script src="resources/angular.js"></script>
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>
	<style>
		.jumbotron{
		background: #7000CC;
		margin-bottom: 0;
		position: top;
		}
		li{
		font-size: 150%;
		}
	</style>
</head>
<body>
<div class = "jumbotron">	
	<div class = "container text-center">	
		<h1 style="color:white;">UrItSolutions.in</h1>
		<p style="color:white;">The home for tech you need...</p>	
	</div>
</div>
<div>
<nav class = "navbar navbar-inverse">
	<div class = "container-fluid">
		<div class = "navbar-header">
			<button type = "button" class = "navbar-toggle" data-toggle = "colapse" data-target = "#myNavbar">
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
			</ul>
		</div>
	</div>
</nav>
</div>
</body>
</html>