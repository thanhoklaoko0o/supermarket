<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<link href="assets/user/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="assets/user/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- font-awesome icons -->
<link href="assets/user/css/font-awesome.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- //font-awesome icons -->
<!-- js -->
<script src="assets/user/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="assets/user/js/move-top.js"></script>
<script type="text/javascript" src="assets/user/js/easing.js"></script>
</head>
<body>

	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-3 sidenav">
				<h4>Quan Ly</h4>
				<ul class="nav nav-pills nav-stacked">
					<li><a href="/trang-quan-ly">San Pham</a></li>
					<li><a href="/bill-management">Don Hang</a></li>
				</ul>
				<br>

			</div>

			<div class="col-sm-9">
				<h4>
					<small>Cua Hang Sieu Thi</small>
				</h4>
				<hr>
				<form action="/add-product" method="post">
					<div class="form-group">
						<label>Ten San Pham:</label>
						<input type="text" class="form-control" name="name"/>
					</div>
					<div class="form-group">
						<label>Quantity:</label>
						<input type="text" class="form-control" name="quantity"/>
					</div>
					<div class="form-group">
						<label>Origin:</label>
						<input type="text" class="form-control" name="origin"/>
					</div>
					<div class="form-group">
						<label>Original Price</label>
						<input type="text" class="form-control" name="originalPrice"/>
					</div>
					<div class="form-group">
						<label>Price</label>
						<input type="text" class="form-control" name="price"/>
					</div>
					<div class="form-group">
						<label>Image</label>
						<input type="file" class="form-control"  name="imageUrl"/>
					</div>
					<div class="form-group">
						<label>Description</label>
						<textarea type="text" class="form-control"  name="description"></textarea>
					</div>
					<div class="form-group">
						<label>Category</label>
						<select name="category" class="form-control">
							<c:forEach var="category" items="${categoryList}">
								<option value="${category.id}">${category.name}</option>
							</c:forEach>
						</select>

					</div>

					<button type="submit" class="btn btn-default">Add</button>
				</form>
				<hr>
				<table class="table table-condensed">
					<thead>
						<tr>
							<th>Product Name</th>
							<th>Quantity</th>
							<th>Image</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="product" items="${productList}">
						<tr>
							<td>${product.name}</td>
							<td>${product.quantity}</td>
							<td><img src="${product.imageUrl}" alt=" " class="img-responsive" style="width: 12%"></td>
							<td><a href="/delete-product?id=${product.id}">Delete</a></td>
						</tr>
					</c:forEach>

					</tbody>
				</table>
				<hr>
			</div>
		</div>
	</div>

	<footer class="container-fluid">
		© 2020 Grocery Store. All rights reserved | Design by <a
			href="http://nguyenBo.com/">NguyễnMart</a>
	</footer>

</body>
</html>