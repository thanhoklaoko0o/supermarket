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

			<div class="col-sm-9" style="min-height: 600px;">
				<h4 style="text-align: center; font-size: 25px;">Bill Management</h4>
			<table class="table table-condensed">
					<thead>
						<tr>
							<th>Customer name</th>
							<th>Phone</th>
							<th>Address</th>
							<th>Status</th>
							<th>Total</th>
							<th>Date</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="bill" items="${billList}">
						<tr>
							<td>${bill.nameCustomer}</td>
							<td>${bill.phone}</td>
							<td>${bill.address}</td>
							<td>
								<c:if test="${bill.status == true}">
									Paid
								</c:if>
								<c:if test="${bill.status == false}">
									UnPaid
								</c:if>
							</td>
							<td>${bill.total}</td>
							<td>${bill.date}</td>
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