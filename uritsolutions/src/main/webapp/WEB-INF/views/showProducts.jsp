<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="forms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${!empty listProduct}">
		<table class="proTable">
			<tr>
				<th width="150">Product Name</th>
				<th width="60">Cost</th>
				<th width="140">Description</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${listProduct}" var="p">
				<tr>
					<td>${p.pname}</td>
					<td>${p.cost}</td>
					<td>${p.description}</td>
					<td>Edit</td>
					<td>Delete</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>