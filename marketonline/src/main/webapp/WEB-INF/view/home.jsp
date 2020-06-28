<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Trang chủ</title>
<head>
<script type="application/x-javascript">
	 addEventListener("load",
function() { setTimeout(hideURLbar, 0); }, false); function
hideURLbar(){ window.scrollTo(0,1); }

</script>
<!-- //for-mobile-apps -->
<link href="<c:url value="/assets/user/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value="/assets/user/css/style.css"></c:url>" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="<c:url value="/assets/user/css/font-awesome.css"/>" rel="stylesheet" type="text/css" media="all" />
<!-- //font-awesome icons -->
<!-- js -->
<script src="<c:url value="/assets/user/js/jquery-1.11.1.min.js"/>"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="<c:url value="/assets/user/js/move-top.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/user/js/easing.js"/>"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
</head>
<body>

	<!-- header -->
	<div class="agileits_header">
		<div class="w3l_offers">
			<a href="products.html">Ưu đãi đặc biệt hôm nay !</a>
		</div>
		<div class="w3l_search">
			<form action="/s" method="get">
				<input type="text" name="key" value="Tìm kiếm..."
					onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = 'Tìm kiếm...';}"
					required="">
				<input type="submit" value=" ">
			</form>
		</div>
		<div class="product_list_header">
			<form action="#" method="post" class="last">
				<fieldset>
					<input type="hidden" name="cmd" value="_cart" /> <input
						type="hidden" name="display" value="1" /> <input type="submit"
						name="submit" value="Xem giỏ hàng" class="button" />
				</fieldset>
			</form>
		</div>
		<div class="w3l_header_right">
			<ul>
				<li class="dropdown profile_details_drop"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"><i
						class="fa fa-user" aria-hidden="true"></i><span class="caret"></span></a>
					<div class="mega-dropdown-menu">
						<div class="w3ls_vegetables">
							<ul class="dropdown-menu drp-mnu">
								<c:set var="username" scope="session" value="${username}" />
								<c:if test="${username != null}">
									<li><a href="/logout">Đăng xuất</a></li>
								</c:if>
								<c:if test="${username == null}">
									<li><a href="/login">Đăng nhập</a></li>
								</c:if>
								<%-- <c:choose>
											<c:when test="${username != null }">
										<li><a href="/login">Đăng nhập</a></li>
									</c:when>

									<c:otherwise>
										<li><a href="/logout">Đăng xuất</a></li>
									</c:otherwise>
								</c:choose> --%>
							
									</ul>
						</div>
					</div></li>
			</ul>
		</div>
		<div class="w3l_header_right1">
			<h2>
				<a href="mail.html">Liên hệ</a>
			</h2>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- script-for sticky-nav -->
	<script>
		$(document).ready(function() {
			var navoffeset = $(".agileits_header").offset().top;
			$(window).scroll(function() {
				var scrollpos = $(window).scrollTop();
				if (scrollpos >= navoffeset) {
					$(".agileits_header").addClass("fixed");
				} else {
					$(".agileits_header").removeClass("fixed");
				}
			});

		});
	</script>
	<!-- //script-for sticky-nav -->
	<div class="logo_products">
		<div class="container">
			<div class="w3ls_logo_products_left">
				<h1>
					<a href="/home"><span>Nguyễn</span> Mart</a>
				</h1>
			</div>
			<div class="w3ls_logo_products_left1">
				<ul class="special_items">
					<li><a href="events.html">Sự kiện</a><i>/</i></li>
					<li><a href="about.html">Giới thiệu</a><i>/</i></li>
					<li><a href="products.html">Ưu đãi tốt nhất</a><i>/</i></li>
					<li><a href="services.html">Dịch vụ</a></li>
				</ul>
			</div>
			<div class="w3ls_logo_products_left1">
				<ul class="phone_email">
					<li><i class="fa fa-phone" aria-hidden="true"></i>0348845924</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i><a
						href="mailto:store@grocery.com">nguyenmart@gmail.com</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //header -->
	<!-- banner -->
	<div class="banner">
		<div class="w3l_banner_nav_left">
			<nav class="navbar nav_bottom">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header nav_2">
					<button type="button"
						class="navbar-toggle collapsed navbar-toggle1"
						data-toggle="collapse" data-target="#bs-megadropdown-tabs">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav nav_1">
						<c:forEach var="item" items="${categoryList}">
							<li><a href="/products?category=${item.id}">${item.name}</a></li>
						</c:forEach>
<%--						<li><a href="household.html">Gia đình</a></li>--%>
<%--						<li class="dropdown mega-dropdown active"><a href="#"--%>
<%--							class="dropdown-toggle" data-toggle="dropdown">Rau & Trái cây<span--%>
<%--								class="caret"></span>--%>
<%--						</a>--%>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
		</div>
		<div class="w3l_banner_nav_right">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="w3l_banner_nav_right_banner">
								<h3>
									Thỏa sức <span>sáng tạo</span>với món ăn.
								</h3>
								<div class="more">
									<a href="products.html"
										class="button--saqui button--round-l button--text-thick"
										data-text="Shop now">Mua ngay</a>
								</div>
							</div>
						</li>
						<li>
							<div class="w3l_banner_nav_right_banner1">
								<h3>
									Thỏa sức <span>sáng tạo</span> với món ăn.
								</h3>
								<div class="more">
									<a href="products.html"
										class="button--saqui button--round-l button--text-thick"
										data-text="Shop now">Mua ngay</a>
								</div>
							</div>
						</li>
						<li>
							<div class="w3l_banner_nav_right_banner2">
								<h3>
									Lên đến <i>50%</i>sale off.
								</h3>
								<div class="more">
									<a href="products.html"
										class="button--saqui button--round-l button--text-thick"
										data-text="Shop now">Mua ngay</a>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</section>
			<!-- flexSlider -->
			<link rel="stylesheet"
				href="<c:url value="/assets/user/css/flexslider.css"/>"
				type="text/css" media="screen" property="" />
			<script defer
				src="<c:url value="/assets/user/js/jquery.flexslider.js"/>"></script>
			<script type="text/javascript">
				$(window).load(function() {
					$('.flexslider').flexslider({
						animation : "slide",
						start : function(slider) {
							$('body').removeClass('loading');
						}
					});
				});
			</script>
			<!-- //flexSlider -->
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- banner -->
	<div class="banner_bottom">
		<div class="wthree_banner_bottom_left_grid_sub"></div>
		<div class="wthree_banner_bottom_left_grid_sub1">
			<div class="col-md-4 wthree_banner_bottom_left">
        <div class="wthree_banner_bottom_left_grid">
					<img src="<c:url value="/assets/user/images/4.jpg"/>" alt=" "
						class="img-responsive" />
					<div class="wthree_banner_bottom_left_grid_pos">
						<h4>
							Giảm giá <span>25%</span>
						</h4>
					</div>
				</div>
			</div>

			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- top-brands -->
	<div class="top-brands">
		<div class="container">
			<h3>Ưu đãi hấp dẫn</h3>
			<div class="agile_top_brands_grids">
				<c:forEach var="product" items="${topFourProduct}">
					<div class="col-md-3 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="tag">
									<img src="<c:url value="/assets/user/images/tag.png"/>" alt=" "
										class="img-responsive" />
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="/products/${product.id}"><img title=" " alt=" "
													src="<c:url value="${product.imageUrl}"/>" /></a>
												<p>${product.name}</p>
												<h4>
														${product.price} VNĐ<span>${product.originalPrice} VNĐ</span>
												</h4>
											</div>
											<div class="snipcart-details top_brand_home_details">
												<form action="checkout.html" method="post">
													<fieldset>
                            <input type="hidden" name="cmd" value="_cart" />
                            <input type="hidden" name="add" value="1" />
                            <input type="hidden" name="business" value=" " />
														<input type="hidden" name="id" value="${product.id}" />
                            <input type="hidden" name="item_name" value="${product.name}" />
                            <input type="hidden" name="amount" value="${product.price}" />
                            <input type="hidden" name="discount_amount" value="0.00" />
                            <input type="hidden" name="currency_code" value="VND" />
                            <input type="hidden" name="return" value=" " />
                            <input type="hidden" name="cancel_return" value=" " />
                            <input type="submit" name="submit" value="Add to cart" class="button" />
													</fieldset>

												</form>

											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //top-brands -->
	<!-- fresh-vegetables -->
	<div class="fresh-vegetables">
		<div class="container">
			<h3>Sản phẩm hàng đầu</h3>
			<div class="w3l_fresh_vegetables_grids">
				<div
					class="col-md-3 w3l_fresh_vegetables_grid w3l_fresh_vegetables_grid_left">
					<div class="w3l_fresh_vegetables_grid2">
						<ul>
							<li><i class="fa fa-check" aria-hidden="true"></i><a
								href="products.html">Tất cả các thương hiệu</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a
								href="vegetables.html">Rau</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a
								href="vegetables.html">Trái cây</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a
								href="drinks.html">Nước ép</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a
								href="pet.html">Pet Food</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a
								href="bread.html">Bánh</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a
								href="household.html">Làm sạch</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a
								href="products.html">Gia vị</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a
								href="products.html">Trái cây khô</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a
								href="products.html">Sản phẩm sữa</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-9 w3l_fresh_vegetables_grid_right">
					<div class="col-md-4 w3l_fresh_vegetables_grid">
						<div class="w3l_fresh_vegetables_grid1">
							<img src="<c:url value="/assets/user/images/8.jpg"/>" alt=" "
								class="img-responsive" />
						</div>
					</div>
					<div class="col-md-4 w3l_fresh_vegetables_grid">
						<div class="w3l_fresh_vegetables_grid1">
							<div class="w3l_fresh_vegetables_grid1_rel">
								<img src="<c:url value="/assets/user/images/7.jpg"/>" alt=" "
									class="img-responsive" />
								<div class="w3l_fresh_vegetables_grid1_rel_pos">
									<div class="more m1">
										<a href="products.html"
											class="button--saqui button--round-l button--text-thick"
											data-text="Shop now">Mua ngay</a>
									</div>
								</div>
							</div>
						</div>
						<div class="w3l_fresh_vegetables_grid1_bottom">
							<img src="<c:url value="/assets/user/images/10.jpg"/>" alt=" "
								class="img-responsive" />
							<div class="w3l_fresh_vegetables_grid1_bottom_pos">
								<h5>Ưu đãi đặc biệt</h5>
							</div>
						</div>
					</div>
					<div class="col-md-4 w3l_fresh_vegetables_grid">
						<div class="w3l_fresh_vegetables_grid1">
							<img src="<c:url value="/assets/user/images/9.jpg"/>" alt=" "
								class="img-responsive" />
						</div>
						<div class="w3l_fresh_vegetables_grid1_bottom">
							<img src="<c:url value="/assets/user/images/11.jpg"/>" alt=" "
								class="img-responsive" />
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="agileinfo_move_text">
						<div class="agileinfo_marquee">
							<h4>
								Được <span class="blink_me">giảm 25%</span> trên đơn hàng đầu
								tiên và nhận phiếu quà tặng
							</h4>
						</div>
						<div class="agileinfo_breaking_news">
							<span> </span>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //fresh-vegetables -->

	<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="w3agile_newsletter_left">
				<h3>Đăng ký nhận bản tin của chúng tôi</h3>
			</div>
			<div class="w3agile_newsletter_right">
				<form action="#" method="post">
					<input type="email" name="Email" value="Email"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<input type="submit" value="Theo dõi ngay">
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //newsletter -->
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
<script src="<c:url value="/assets/user/js/bootstrap.min.js"/>"></script>
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
<script src="<c:url value="/assets/user/js/minicart.js"/>"></script>
<script>
		paypal.minicart.render();

		/* paypal.minicart.cart.on('checkout', function (evt) {
			var items = this.items(),
				len = items.length,
				total = 0,
				i;

			// Count the number of each item in the cart
			for (i = 0; i < len; i++) {
				total += items[i].get('quantity');
			}

			if (total < 3) {
				alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
				evt.preventDefault();
			}
		}); */

	</script>
</body>