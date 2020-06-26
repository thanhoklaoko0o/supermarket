<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<li><a href="#section2">San Pham</a></li>
					<li><a href="#section3">Don Hang</a></li>
				</ul>
				<br>

			</div>

			<div class="col-sm-9">
				<h4>
					<small>Cua Hang Sieu Thi</small>
				</h4>
				<hr>
				<form action="/action_page.php">
					<div class="form-group">
						<label for="email">Ten San Pham:</label> <input type="email"
							class="form-control" id="email">
					</div>
					<div class="form-group">
						<label for="email">Ten San Pham:</label> <input type="email"
							class="form-control" id="email">
					</div>
					<div class="form-group">
						<label for="email">Ten San Pham:</label> <input type="email"
							class="form-control" id="email">
					</div>
					<div class="form-group">
						<label for="email">Anh:</label> <input type="email"
							class="form-control" id="email">
					</div>

					<button type="submit" class="btn btn-default">Add</button>
				</form>
				<hr>
				<table class="table table-condensed">
					<thead>
						<tr>
							<th>Firstname</th>
							<th>Lastname</th>
							<th>Email</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>John</td>
							<td>Doe</td>
							<td>john@example.com</td>
						</tr>
						<tr>
							<td>Mary</td>
							<td>Moe</td>
							<td>mary@example.com</td>
						</tr>
						<tr>
							<td>July</td>
							<td>Dooley</td>
							<td>july@example.com</td>
						</tr>
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