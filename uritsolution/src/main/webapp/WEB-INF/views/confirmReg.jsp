<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration confirmation</title>
</head>
<body>
<%@include file = "header.jsp" %>
<table>
	<tr>
		<td><%=request.getAttribute("reg.name") %></td>
	</tr>
	<tr>
		<td><%=request.getAttribute("reg.username") %></td>
	</tr>
	<tr>
		<td><%=request.getAttribute("reg.phone")%></td>
	</tr>
	<tr>
		<td><%=request.getAttribute("reg.address")%></td>
	</tr>
</table>
</body>
</html>