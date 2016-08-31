<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<title>Log in success</title>
	<style>

	</style>
</head>
<body>
<%@include file = "header.jsp" %>
<%
	String uname = request.getParameter("user"); 
	String password = request.getParameter("pwd");
	if(uname.equals("Paul_Richard") && password.equals("password")){
		out.println("Welcome "+uname);
	}
	 else{
		 out.println("Oops!!! Incorrect user name or password... Please try again..!!");
	}%>
</body>
</html>