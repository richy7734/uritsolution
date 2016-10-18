<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style type="text/css">
	img.carousal{
		max-width: 1250px;
		width: 1250px;
		max-height: 300px;
	}
	li.user{
		color: white;
	}
	.divSearch{
		position: relative;
		left: 50px
	}
	th, td {
    	text-align: left;
    	padding: 15px;
	}
	tr:hover {
		background-color: #f5f5f5
	}
	th {
    	background-color: #4CAF50;
    	color: white;
	}
	table{
		width:100%;
		padding: 5px;
	}
	input[id = "searchBar"]{
			padding: 0px 3px;
			border: 1px solid DarkGrew;
    		border-radius: 3px;
		}
</style>
</head>
<body ng-app = "appSearch">
<div>
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
				<li class = "active"><a href = "home">Home</a></li>
				<li><a href = "showProducts">Category</a></li>
				<li><a href = "admin">Products</a></li>
			</ul>
			<ul class = "nav navbar-nav nav-tabs navbar-right">
				<li><a href = "login"><span class = "glyphicon glyphicon-user"></span> Log in</a></li>
				<li><a href = "aboutUs">About Us</a></li>
				<li><a href = "RegTemp">Register</a></li>
				
			</ul>
		</div>
	</div>
</nav>
<div class = "cobtainer container-fluid">
	<div class = "row">
		<div class = "col-sm-12">
			<div class = "carousel slide" id = "my-slider" data-ride = "carousel">
				<ol class = "carousel-indicators">
					<li data-target = "#my-slider" data-slide-to = "0" class = "active"></li>
					<li data-target = "#my-slider" data-slide-to = "1"></li>
					<li data-target = "#my-slider" data-slide-to = "2"></li>
					<li data-target = "#my-slider" data-slide-to = "3"></li>
				</ol>
				<div class = "carousel-inner" role = "listbox" width=100% height="500px">
					<div class = "item active">
						<img class = "carousal" src = "resources\images\img1.jpg">
					</div>
					<div class = "item">
						<img class = "carousal" src = "resources\images\img2.jpg">
					</div>
					<div class = "item">
						<img class = "carousal" src = "resources\images\img3.jpg">
					</div>
					<div class = "item"> 
						<img class = "carousal" src = "resources\images\img4.jpg">
					</div>
				</div>
				<div>
					<a class = "left carousel-control" href = "#my-slider" role = "button" data-slide = "prev">
						<span class = "glyphicon glyphicon-chevron-left" area-hidden = "true"></span>
					</a>
					<a class = "right carousel-control" href = "#my-slider" role = "button" data-slide = "next">
						<span class = "glyphicon glyphicon-chevron-right" area-hidden = "true"></span>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
<br>
<div class  = "divSearch">
	<input type = "text" placeholder = "Search" id = "serachBar" ng-model = "search" size = "22">
</div>
<br>
<div  ng-controller = "ctrlSearch" class="table-responsive" ng-init = "x=0">
	<table class = "table">
	<thead>
		<tr>
			<th>Product</th>
			<th>Description</th>
			<th>Price</th>
			<th>Image</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>	
		<tr ng-repeat = "product in products | filter:search"  ng-init = "">
			<td>{{product.productn}}</td>
			<td>{{product.description}}</td>
			<td>{{product.price}}</td>
			<td><img ng-src = {{product.image[1]}} height = "60px" width = "60px"></td>
			<td><input type = "button" data-toggle = "modal" data-target = "#myModal" class = "btn-primary" ng-click = "view(product.id)" value = "View"></td>
		</tr>
	</tbody>
	</table>
	<div class = "modal fade" id = "myModal" role = "dialog">
		<div class = "modal-dialog">
			<div class = "modal-content">
				<div class = "modal-header">
					<button type = "button" class = "close" data-dismiss = "modal">&times;</button>
					<h4 class = "modal-title">{{products[num].productn}}</h4>
				</div>
				<div class = "modal-body">
					<p>{{products[num].description}}</p>
					<center><img ng-src = {{products[num].image[0]}} width = "340px" height = "240px"></center>
				</div>
				<div class = "modal-footer">
					<button type = "button" class = "btn btn-danger" data-dismiss = "modal">Close</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	var app = angular.module('appSearch',[]);
	app.controller('ctrlSearch',function($scope){
		$scope.products = [{productn:'Alienware 13',description:'Gaming Laptop',price:'Rs. 10,9000',image:['resources/images/alien_img.jpg','resources/images/alienware_thumbnail.jpg'],id:0},
		                   {productn:'NVIDIA GeForce GTX1080',description:'Graphics Card',price:'Rs. 70,000',image:['resources/images/gtx1080_thumbnail.jpg','resources/images/gtx1080_thumbnail.jpg'],id:1},
		                   {productn:'Cooler Master Sedion 120',description:'CPU liquid cooler',price:'Rs. 4,900',image:['resources/images/coolermaster_thumbnail.jpg','resources/images/coolermaster_img.jpg'],id:2},
		                   {productn:'AMD Opteron 6300',description:'Processor',price:'Rs. 56,000',image:['resources/images/amd_thumbnail.png','resources/images/amd_img.jpg'],id:3}];	
	$scope.view = function(temp){
		$scope.num = temp;
		};
	});
</script>
</body>
</html>