<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="forms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page isELIgnored = "false" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator</title>
<style type="text/css">
	#productSavePanel{
		width: 650px;			
		position: fixed;
	}
	#productUpdatePanel{
		width: 650px;			
		position: fixed;
	}
</style>
</head>
	<%@include file = "header.jsp" %>
	<div class = "row">
		<div class = "col-sm-6">
			<div class = "container">
				<div class = "panel panel-info" id = "productPanel">
					<div class = "panel-body">
						<center><a class = "btn btn-danger" href = "#" data-toggle = "modal" data-target = "#productSaveModal">Save</a></center>
						<br/>
						<center><a class = " btn btn-primary" href = "#" data-toggle = "modal" data-target = "#productUpdateModal">Update</a></center>
					</div>
				</div>
			</div>
		</div>
		<div class = "col-sm-6">
			<div class = "container">
				<div class = "panel panel-info" id = "adminPanel">
					<div class = "panel-body">
						<center><button class = "btn btn-danger">Customers</button></center>
					</div>
				</div> 
			</div>
		</div>
	</div>
	
	<div class = "modal fade" role = "dialog" id = productSaveModal>
		<div class = "modal-dialog">
			<div class = "container">
				<div class = "panel panel-info" id = productSavePanel>
					<div class = "panel-body">
					<center>
						<forms:form action = "./saveProduct" commandName = "saveProductCommand" method = "POST">
							<forms:input type = "text" path = "pname" placeholder = "Product Name" size = "27"/>
							<br/><br/>
							<forms:input type = "text" path = "cost" placeholder = "Cost" size = "27"/>
							<br/><br/>
							<forms:input type = "text" path = "description" placeholder = "Descripton" size = "27"/>
							<br/><br/>
							<forms:input type = "text" path = "category" placeholder = "Category" size = "35"/>
							<br/><br/>
							<input type = "submit" value = "save"/>
						</forms:form>
					</center>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class = "modal fade" role = "dialog" id = "productUpdateModal">
		<div class = "modal-dialog">
			<div class = "container">
				<div class = "panel panel-primary" id = productUpdatePanel>
					<div class = "panel-heading">Update Product</div>
						<div class = "pannel-body">
						<br/>
						<center>
						<forms:form action = "./updateProduct" commandName = "updateProductCommand" method  = "POST">
							<forms:input type = "text" path = "P_ID" placeholder = "Product ID" size = "35"/>
							<br/><br/>
							<forms:input type = "text" path = "pname" placeholder = "Product Name" size = "35"/>
							<br/><br/>
							<forms:input type = "text" path = "cost" placeholder  = "Price" size = "35"/>
							<br/><br/>
							<forms:input type = "text" path = "description" placeholder = "Description" size = "35"/>
							<br/><br/>
							<forms:input type = "text" path = "category" placeholder = "Category" size = "35"/>
							<br/><br/>
							<input type = "submit" value = "Update"/>
						</forms:form>
						</center>
						</div>
						<div class = "panel-body">
						<center>
						<br/>
						<c:if test="${!empty listProduct}">
						 	<table class = "proTable">
							<tr>
								
								<th width = "150">Product Name</th>
								<th width = "60">Cost</th>
								<th width = "170">Description</th>
								<th width = "130">Category</th>
							</tr>
							<c:forEach items = "${listProduct}" var = "product">
								<tr>
									
									<td>${product.pname}</td>
									<td>${product.cost}</td>
									<td>${product.description}</td>
									<td>${product.category}</td>
								</tr>
								</c:forEach>
							</table>
						</c:if>
						</center>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>