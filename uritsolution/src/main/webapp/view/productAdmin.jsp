<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Admin</title>
</head>
<!-- Controller name goes here -->
<body ng-controller="ProductCtrl">
<%@include file = "header.jsp" %>
Search Product : <input type="text" ng-model="searchKeyword">
<table class="table">
<tr>
<th>Name</th>
<th>Category</th>
<th>Price</th>
<th>Action</th>
</tr>
<tr ng-repeat="product in products | filter: searchKeyword ">
<td>{{product.name}}</td>
<td>{{product.category}}</td>
<td>{{product.price}}</td>
<td><input type="button" value="Remove" class="btn btn-primary"
ng-click="removeRow(product.name)" /></td>
<td>
<td><input type="button" value="Update" class="btn btn-primary"
ng-click="getRow(product.name)" /></td>
<td>
</tr>
</table>
<input type="text" ng-model="u_name">
<input type="text" ng-model="u_category">
<input type="text" ng-model="u_price">
<input type="button" value="Add" class="btn btn-primary"
ng-click="addRow()" />
</body>
</html>