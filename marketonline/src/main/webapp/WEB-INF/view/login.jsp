<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="assets/user/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="assets/user/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="assets/user/css/font-awesome.css" rel="stylesheet" type="text/css" media="all" /> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="assets/user/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="assets/user/js/move-top.js"></script>
<script type="text/javascript" src="assets/user/js/easing.js"></script>
</head>
<body>
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="index.html">Home</a><span>|</span></li>
				<li>Sign In & Sign Up</li>
			</ul>
		</div>
	</div>
	<div>
		${message}
	</div>
	<div class="w3_login">
			<h3>Sign In & Sign Up</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
					<div class="tooltip">Click Me</div>
				  </div>
				  <div class="form">
					<h2>Login to your account</h2>
					<form action="/login" method="post">
					  <input type="text" name="userName" placeholder="Username">
					  <input type="password" name="password" placeholder="Password">
					  <input type="submit" value="Login">
					</form>
				  </div>
				  <div class="form">
					<h2>Create an account</h2>
				<!-- 	<form action="#" method="post"> -->
						<label id="kqCheckName" style="color:red"></label>
					  <input type="text" name="Username" placeholder="Username" id="Username">
					  <input type="password" name="Password" placeholder="Password" id="Password">
					  <button class="btn btn-success" onclick="dangky()">Register</button>
					<!-- </form> -->
				  </div>
				</div>
			</div>
		</div>
	<script>
		function dangky() {
			$("#kqCheckName").text("");
			var userName = document.getElementById("Username").value;
			var password = document.getElementById("Password").value;
			$.ajax({
				url : "/dang-ky",
				type : "POST",
				data : {
					userName : userName,
					password : password
				},
				success : function(value) {
					// If result = false, UserName exsts 
					if(value == false){
						// Message when UserName exists
						$("#kqCheckName").text("Ten tai khoan da ton tai trong he thong, dang ky that bai !");
					// If result = true
					}else{
						$("#kqCheckName").text("Dang Ky Thanh Cong. Moi Ban Dang Nhap")
					}
				}
			})
		}
	</script>
	<script>
				$('.toggle').click(function(){
				  // Switches the Icon
				  $(this).children('i').toggleClass('fa-pencil');
				  // Switches the forms  
				  $('.form').animate({
					height: "toggle",
					'padding-top': 'toggle',
					'padding-bottom': 'toggle',
					opacity: "toggle"
				  }, "slow");
				});
			</script>
			<script type="text/javascript">
				
			</script>
		<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="col-md-3 w3_footer_grid">
				<h3>Thông tin</h3>
				<ul class="w3_footer_grid_list">
					<li><a href="events.html">Sự kiện</a></li>
					<li><a href="about.html">Về chúng tôi</a></li>
					<li><a href="products.html">Giao dịch tốt nhất</a></li>
					<li><a href="services.html">Dịch vụ</a></li>
					<li><a href="short-codes.html">Short Codes</a></li>
				</ul>
			</div>
			<div class="col-md-3 w3_footer_grid">
				<h3>Thông tin chính sách</h3>
				<ul class="w3_footer_grid_list">
					<li><a href="faqs.html">Câu hỏi thường gặp</a></li>
					<li><a href="privacy.html">Chính sách bảo mật</a></li>
					<li><a href="privacy.html">Điều khoản sử dụng</a></li>
				</ul>
			</div>
			<div class="col-md-3 w3_footer_grid">
				<h3>Trong cửa hàng</h3>
				<ul class="w3_footer_grid_list">
					<li><a href="pet.html">Thức ăn cho thú cưng</a></li>
					<li><a href="frozen.html">Đồ ăn nhẹ đông lạnh</a></li>
					<li><a href="kitchen.html">Phòng bếp</a></li>
					<li><a href="products.html">Thực phẩm thương hiệu</a></li>
					<li><a href="household.html">Gia đình</a></li>
				</ul>
			</div>
			<div class="col-md-3 w3_footer_grid">
				<h3>Bài viết trên twitter</h3>
				<ul class="w3_footer_grid_list1">
					<li><label class="fa fa-twitter" aria-hidden="true"></label><i>01
							ngày trước</i><span>Non numquam <a href="#">http://sd.ds/13jklf#</a>
							eius modi tempora incidunt ut labore et <a href="#">http://sd.ds/1389kjklf#</a>quo
							nulla.
					</span></li>
					<li><label class="fa fa-twitter" aria-hidden="true"></label><i>02
							ngày trước</i><span>Con numquam <a href="#">http://fd.uf/56hfg#</a>
							eius modi tempora incidunt ut labore et <a href="#">http://fd.uf/56hfg#</a>quo
							nulla.
					</span></li>
				</ul>
			</div>
			<div class="clearfix"></div>
			<div class="agile_footer_grids">
				<div class="col-md-3 w3_footer_grid agile_footer_grids_w3_footer">
					<div class="w3_footer_grid_bottom">
						<h4>Thanh toán an toàn 100%</h4>
						<img src="<c:url value="/assets/user/images/card.png"/>" alt=" "
							class="img-responsive" />
					</div>
				</div>
				<div class="col-md-3 w3_footer_grid agile_footer_grids_w3_footer">
					<div class="w3_footer_grid_bottom">
						<h5>Kết nối với chúng tôi</h5>
						<ul class="agileits_social_icons">
							<li><a href="#" class="facebook"><i
									class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#" class="twitter"><i class="fa fa-twitter"
									aria-hidden="true"></i></a></li>
							<li><a href="#" class="google"><i
									class="fa fa-google-plus" aria-hidden="true"></i></a></li>
							<li><a href="#" class="instagram"><i
									class="fa fa-instagram" aria-hidden="true"></i></a></li>
							<li><a href="#" class="dribbble"><i
									class="fa fa-dribbble" aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="wthree_footer_copy">
				<p>
					© 2020 Grocery Store. All rights reserved | Design by <a
						href="http://nguyenBo.com/">NguyễnMart</a>
				</p>
			</div>
		</div>
	</div>
	<!-- //footer -->
</body>
</html>