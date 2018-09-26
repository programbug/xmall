<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Products1</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="keywords" content="" />
		
		<script type="application/x-javascript"> 
				addEventListener("load", function() { 
					setTimeout(hideURLbar, 0); }, false);
				function hideURLbar(){ 
					window.scrollTo(0,1); } 
		</script>
		<!-- Custom Theme files -->
		<link href="<%=request.getContextPath()%>/static/css/font-awesome.css" 
					rel="stylesheet"> 
		<link href="<%=request.getContextPath()%>/static/css/bootstrap.css" 
					rel="stylesheet" type="text/css" media="all" />
		<link href="<%=request.getContextPath()%>/static/css/style.css" 
					rel="stylesheet" type="text/css" media="all" /> 
		<link href="<%=request.getContextPath()%>/static/css/menu.css" 
					rel="stylesheet" type="text/css" media="all" />  
		<link href="<%=request.getContextPath()%>/static/css/animate.min.css" 
					rel="stylesheet" type="text/css" media="all" />   
		<link href="<%=request.getContextPath()%>/static/css/owl.carousel.css" 
					rel="stylesheet" type="text/css" media="all"> <!-- carousel slider -->  
		
		<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' 
					rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Lovers+Quarrel' 
					rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Offside' 
					rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Tangerine:400,700' 
					rel='stylesheet' type='text/css'>
		
		<script src="<%=request.getContextPath()%>/static/js/jquery-2.2.3.min.js"></script> 
		<script src="<%=request.getContextPath()%>/static/js/owl.carousel.js"></script>
		<script src="<%=request.getContextPath()%>/static/js/move-top.js"
					type="text/javascript"></script>
		<script src="<%=request.getContextPath()%>/static/js/easing.js"
					type="text/javascript"></script>
		<script src="<%=request.getContextPath()%>/static/js/jquery.mousewheel.js"
					type="text/javascript"></script>
		<script src="<%=request.getContextPath()%>/static/js/jquery.jscrollpane.min.js"
					type="text/javascript"></script>
		<script src="<%=request.getContextPath()%>/static/js/jquery-scrolltofixed-min.js" 
					type="text/javascript"></script>
		<script>
		    $(document).ready(function() {
		        $('.header-two').scrollToFixed();  
		        var summaries = $('.summary');
		        summaries.each(function(i) {
		            var summary = $(summaries[i]);
		            var next = summaries[i + 1];
		            summary.scrollToFixed({
		                marginTop: $('.header-two').outerHeight(true) + 10, 
		                zIndex: 999
		            });
		        });
		    });
		</script>
		<script type="text/javascript">
				jQuery(document).ready(function($) {
					$(".scroll").click(function(event){		
						event.preventDefault();
						$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
					});
				});
		</script>
		<script type="text/javascript">
			$(document).ready(function() {
				var defaults = {
					containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
				};
				$().UItoTop({ easingType: 'easeOutQuart' });
			});
		</script>
		<script type="text/javascript" id="sourcecode">
			$(function() {
				$('.scroll-pane').jScrollPane();
			});
		</script>
	</head>
	<body>
		<!-- header -->
		<div class="header">
			<div class="w3ls-header"><!--header-one--> 
				<div class="w3ls-header-left">
					<p><a href="#">最多折扣50元  | 使用COUPON CODE LAPPY </a></p>
				</div>
				<div class="w3ls-header-right">
					<ul>
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="fa fa-user" aria-hidden="true"></i> 
								我的账户
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="login.html">Login </a></li> 
								<li><a href="signup.html">Sign Up</a></li> 
								<li><a href="login.html">My Orders</a></li>  
								<li><a href="login.html">Wallet</a></li> 
							</ul> 
						</li> 
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-percent" aria-hidden="true"></i> Today's Deals<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="offers.html">Cash Back Offers</a></li> 
								<li><a href="offers.html">Product Discounts</a></li>
								<li><a href="offers.html">Special Offers</a></li> 
							</ul> 
						</li> 
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-gift" aria-hidden="true"></i> Gift Cards<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="offers.html">Product Gift card</a></li> 
								<li><a href="offers.html">Occasions Register</a></li>
								<li><a href="offers.html">View Balance</a></li> 
							</ul> 
						</li> 
						<li class="dropdown head-dpdn">
							<a href="contact.html" class="dropdown-toggle"><i class="fa fa-map-marker" aria-hidden="true"></i> Store Finder</a>
						</li> 
						<li class="dropdown head-dpdn">
							<a href="card.html" class="dropdown-toggle"><i class="fa fa-credit-card-alt" aria-hidden="true"></i> Credit Card</a>
						</li> 
						<li class="dropdown head-dpdn">
							<a href="help.html" class="dropdown-toggle"><i class="fa fa-question-circle" aria-hidden="true"></i> Help</a>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div> 
			</div>
			<div class="header-two"><!-- header-two -->
				<div class="container">
					<div class="header-logo">
						<h1><a href="index.html"><span>S</span>mart <i>Bazaar</i></a></h1>
						<h6>Your stores. Your place.</h6> 
					</div>	
					<div class="header-search">
						<form action="#" method="post">
							<input type="search" name="Search" placeholder="Search for a Product..." required="">
							<button type="submit" class="btn btn-default" aria-label="Left Align">
								<i class="fa fa-search" aria-hidden="true"> </i>
							</button>
						</form>
					</div>
					<div class="header-cart"> 
						<div class="my-account">
							<a href="contact.html"><i class="fa fa-map-marker" aria-hidden="true"></i> CONTACT US</a>						
						</div>
						<div class="cart"> 
							<form action="#" method="post" class="last"> 
								<input type="hidden" name="cmd" value="_cart" />
								<input type="hidden" name="display" value="1" />
								<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
							</form>  
						</div>
						<div class="clearfix"> </div> 
					</div> 
					<div class="clearfix"> </div>
				</div>		
			</div><!-- //header-two -->
			<div class="header-three"><!-- header-three -->
				<div class="container">
					<div class="menu">
						<div class="cd-dropdown-wrapper">
							<a class="cd-dropdown-trigger" href="#0">Store Categories</a>
							<nav class="cd-dropdown"> 
								<a href="#0" class="cd-close">Close</a>
								<ul class="cd-dropdown-content"> 
									<li><a href="offers.html">Today's Offers</a></li>
									<li class="has-children">
										<a href="#">Electronics</a> 
										<ul class="cd-secondary-dropdown is-hidden">
											<li class="go-back"><a href="#">Menu</a></li>
											<li class="see-all"><a href="products.html">All Electronics</a></li>
											<li class="has-children">
												<a href="#">MOBILE PHONES</a>  
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#">All Electronics</a></li> 
													<li class="has-children">
														<a href="#0">SmartPhones</a> 
														<ul class="is-hidden"> 
															<li class="go-back"><a href="#"> </a></li>
															<li><a href="products.html">Android</a></li>
															<li><a href="products.html">Windows</a></li>
															<li><a href="products.html">Black berry</a></li>
														</ul>
													</li>
													<li> <a href="products.html">IPhones</a> </li>
													<li><a href="products.html">Tablets</a></li>
													<li><a href="products.html">IPad</a></li>
													<li><a href="products.html">Feature Phones</a></li> 
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">LARGE APPLIANCES</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#">All Electronics </a></li>
													<li><a href="products.html">Refrigerators</a></li> 
													<li><a href="products.html">Washing Machine</a></li>
													<li><a href="products.html">Office Technology</a></li>
													<li><a href="products.html">Air conditioner</a></li>
													<li><a href="products.html">Home Automation</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">ENTERTAINMENT</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#">All Electronics</a></li>
													<li><a href="products.html">Tv & Accessories</a></li>
													<li><a href="products.html">Digital Camera</a></li>
													<li><a href="products.html">Gaming</a></li>
													<li><a href="products.html">Home Audio & Theater</a></li>
													<li class="has-children">
														<a href="#">Computer</a>
														<ul class="is-hidden">
															<li class="go-back"><a href="#"> </a></li> 
															<li><a href="products.html">Laptop </a></li>
															<li><a href="products.html">Gaming PC</a></li>
															<li><a href="products.html">Monitors</a></li>
															<li><a href="products.html">Networking</a></li>
															<li><a href="products.html">Printers & Supplies</a></li>
															<li><a href="products.html">Accessories</a></li>
														</ul>
													</li> 
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">HOME APPLIANCES</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#0">All Electronics </a></li>
													<li class="has-children"><a href="#">Kitchen appliances</a>
														<ul class="is-hidden">
															<li class="go-back"><a href="#0"> </a></li>
															<li><a href="products.html">Rice Cookers</a></li>
															<li><a href="products.html">Mixer Juicer</a></li>
															<li><a href="products.html">Grinder</a></li>
															<li><a href="products.html">Blenders & Choppers</a></li>
															<li><a href="products.html">Microwave Oven</a></li>
															<li><a href="products.html">Food Processors</a></li>
														</ul>
													</li>
													<li><a href="products.html">Purifiers</a></li>
													<li><a href="products.html">Geysers</a></li>
													<li><a href="products.html">Gas Stove</a></li>
													<li><a href="products.html">Vacuum Cleaner</a></li>
													<li><a href="products.html">Sewing Machine</a></li> 
													<li><a href="products.html">Heaters & Fans</a></li>
												</ul>
											</li>
											<li class="has-children">
												<a href="#">SMALL DEVICES</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#0">All Electronics </a></li>
													<li><a href="products.html">Wifi Dongle</a></li>
													<li><a href="products.html">Router & Modem</a></li>
													<li class="has-children"><a href="#">Storage Devices</a>
														<ul class="is-hidden">
															<li class="go-back"><a href="#0"> </a></li>
															<li><a href="products.html">Cloud Storage</a></li>
															<li><a href="products.html">Hard Disk</a></li>
															<li><a href="products.html">SSD</a></li>
															<li><a href="products.html">Pen Drive</a></li>
															<li><a href="products.html">Memory card</a></li> 
															<li><a href="products.html">Security Devices</a></li> 
														</ul>
													</li> 
													<li><a href="products.html">Office Supplies</a></li>
													<li><a href="products.html">Cut the Cable</a></li>
													<li><a href="products.html">Auto Electronics</a></li>  
												</ul>
											</li>
											<li class="has-children">
												<a href="#">PERSONAL CARE</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#0">All Electronics </a></li>
													<li><a href="products.html">Epilator</a></li> 
													<li><a href="products.html">Hair Styler</a></li>
													<li><a href="products.html">Trimmer & Shaver</a></li>
													<li><a href="products.html">Health Care</a></li> 
													<li><a href="products.html">cables</a></li>
												</ul>
											</li>
										</ul> <!-- .cd-secondary-dropdown --> 
									</li> <!-- .has-children -->
									<li class="has-children">
										<a href="#">Fashion Store</a> 
										<ul class="cd-secondary-dropdown is-hidden">
											<li class="go-back"><a href="#">Menu</a></li>
											<li class="see-all"><a href="products1.html">All Fashion Stores</a></li>
											<li class="has-children">
												<a href="#">GIRLS' CLOTHING</a> 
												<ul class="is-hidden">  
													<li class="go-back"><a href="#">All Fashion Stores</a></li>
													<li><a href="products1.html">Ethnic wear </a></li>
													<li><a href="products1.html">Maternity wear</a></li>
													<li><a href="products1.html">inner & nightwear </a></li>
													<li><a href="products1.html">casual wear </a></li>
													<li><a href="products1.html">formal wear</a></li>
													<li><a href="products1.html">Sports wear</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">BOYS' CLOTHING</a> 
												<ul class="is-hidden">  
													<li class="go-back"><a href="#">All Fashion Stores</a></li>
													<li><a href="products1.html">Jeans</a></li>  
													<li><a href="products1.html">Casual wear</a></li> 
													<li><a href="products1.html">Shorts</a></li> 
													<li><a href="products1.html">T-Shirts & Polos</a></li> 
													<li><a href="products1.html">Trousers & Chinos</a></li> 
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">JACKETS</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#">All Fashion Stores</a></li>
													<li><a href="products1.html">Blazers</a></li>
													<li><a href="products1.html">Bomber jackets</a></li>
													<li><a href="products1.html">Denim Jackets</a></li>
													<li><a href="products1.html">Duffle Coats</a></li>
													<li><a href="products1.html">Leather Jackets</a></li>
													<li><a href="products1.html">Parkas</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">ACCESSORIES </a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#">All Fashion Stores</a></li>
													<li><a href="products1.html">Watches </a></li>
													<li><a href="products1.html">Eyewear </a></li>
													<li><a href="products1.html">Jewellery </a></li>
													<li class="has-children">
														<a href="#">Footwear </a>  
														<ul class="is-hidden">
															<li class="go-back"><a href="#"> </a></li>
															<li><a href="products1.html">Ethnic</a></li>  
															<li><a href="products1.html">Casual wear</a></li>
															<li><a href="products1.html">Sports Shoes</a></li>
															<li><a href="products1.html">Boots</a></li>
														</ul> 
													</li> 
													<li><a href="products1.html">Stoles & Scarves</a></li>
													<li><a href="products1.html">Handbags</a></li>
												</ul>
											</li>
											<li class="has-children">
												<a href="#">BEAUTY</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#">All Fashion Stores</a></li>
													<li><a href="products1.html">Perfumes & Deos</a></li>
													<li><a href="products1.html">Lipsticks & Nail Polish</a></li>
													<li><a href="products1.html">Beauty Gift Hampers</a></li> 
													<li><a href="products1.html">Personal Grooming</a></li>
													<li><a href="products1.html">Travel bags</a></li>
												</ul>
											</li>
											<li class="has-children">
												<a href="products1.html">PERSONAL CARE</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#">All Fashion Stores</a></li>
													<li><a href="products1.html">Face Care</a></li>
													<li><a href="products1.html">Nail Care</a></li>
													<li><a href="products1.html">Hair Care</a></li>
													<li><a href="products1.html">Body Care</a></li>
													<li><a href="products1.html">Bath & Spa</a></li>   
												</ul>
											</li>
										</ul> <!-- .cd-secondary-dropdown --> 
									</li> <!-- .has-children -->
									<li class="has-children">
										<a href="products2.html">Kids Fashion & Toys</a> 
										<ul class="cd-secondary-dropdown is-hidden"> 
											<li class="go-back"><a href="#">Menu</a></li>
											<li class="see-all"><a href="products2.html">All Kids Fashions</a></li>
											<li class="has-children">
												<a href="products2.html">KIDS CLOTHING</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#">All Kids Fashions</a></li>
													<li><a href="products2.html">Ethnic wear </a></li> 
													<li><a href="products2.html">inner & Sleepwear </a></li>
													<li><a href="products2.html">Dresses & Frocks </a></li>
													<li><a href="products2.html">Winter wear</a></li>
													<li><a href="products2.html">Diaper & Accessories</a></li>
												</ul>
											</li> 
											<li class="has-children"><a href="#">KIDS FASHION</a>
												<ul class="is-hidden">  
													<li class="go-back"><a href="#">All Kids Fashions</a></li>
													<li><a href="products2.html">Footwear</a></li> 
													<li><a href="products2.html">Sunglasses </a></li>
													<li><a href="products2.html">School & Stationery</a></li>
													<li><a href="products2.html">Jewellery</a></li>
													<li><a href="products2.html">Hair bands & Clips</a></li>
												</ul>
											</li>
											<li class="has-children"><a href="#">Baby Care</a>
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#">All Kids Fashions</a></li>
													<li><a href="products2.html">Lotions, Oil & Powder </a></li> 
													<li><a href="products2.html">Soaps, Shampoo </a></li>
													<li><a href="products2.html">Bath Towels</a></li> 
													<li class="has-children">
														<a href="#">Feeding</a> 
														<ul class="is-hidden">
															<li class="go-back"><a href="#"> </a></li> 
															<li><a href="products2.html">Baby Food </a></li>
															<li><a href="products2.html">Bottle Feeding </a></li>
															<li><a href="products2.html">Breast Feeding</a></li>  
														</ul>
													</li>  
													<li><a href="products2.html">Toddlers' Rooms</a></li> 	
												</ul><!-- .cd-secondary-dropdown --> 
											</li> <!-- .has-children -->								
											<li class="has-children"><a href="#">TOYS & GAMES </a>
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#">All Kids Fashions</a></li>
													<li><a href="products2.html">Art & Crafts</a></li> 
													<li><a href="products2.html">Educational Toys </a></li>
													<li><a href="products2.html">Baby Toys</a></li> 
													<li><a href="products2.html">Outdoor Play </a></li> 
													<li><a href="products2.html">Musical Instruments</a></li>
												</ul>
											</li>
											<li> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#">All Kids Fashions</a></li>
													<li><a href="products2.html">Toy Tips & Trends</a></li> 
													<li><a href="products2.html">Preschool Toys</a></li>
													<li><a href="products2.html">Musical Instruments</a></li> 
													<li><a href="products2.html">Bikes & Ride-Ons</a></li>
													<li><a href="products2.html">Video Games</a></li>
													<li><a href="products2.html">PC & Digital Gaming</a></li>
												</ul>	
											</li> 
										</ul><!-- .cd-secondary-dropdown --> 
									</li> <!-- .has-children --> 
									<li class="has-children">
										<a href="#">Home, Furniture & Patio</a> 
										<ul class="cd-secondary-dropdown is-hidden">
											<li class="go-back"><a href="#">Menu</a></li>
											<li class="see-all"><a href="products3.html">All Products</a></li>
											<li class="has-children">
												<a href="#">Kitchen Uses</a> 
												<ul class="is-hidden">  
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products3.html">Dinner Sets </a></li> 
													<li><a href="products3.html">Cookware & Bakeware </a></li>
													<li><a href="products3.html">Containers & Jars </a></li>
													<li><a href="products3.html">Kitchen Tools </a></li>
													<li><a href="products3.html">Food Storage</a></li>
													<li><a href="products3.html">Casseroles</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Furniture </a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products3.html">Bedroom </a></li> 
													<li><a href="products3.html">Dining Room </a></li>
													<li><a href="products3.html">Kids' Furniture </a></li>
													<li><a href="products3.html">Living Room</a></li>
													<li><a href="products3.html">Office</a></li>
													<li><a href="products3.html">Mattresses</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Home Decor </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products3.html">Lighting</a></li> 
													<li><a href="products3.html">Painting</a></li>
													<li><a href="products3.html">Curtains & Blinds</a></li>
													<li><a href="products3.html">Patio Furniture</a></li>
													<li><a href="products3.html">Wardrobes & Cabinets</a></li>
													<li><a href="products3.html">Mattresses</a></li>
												</ul>
											</li>  
											<li class="has-children">
												<a href="#">Gardening & Lawn </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"> </a></li>  
													<li><a href="products3.html">Gardening </a></li> 
													<li><a href="products3.html">Landscaping </a></li>
													<li><a href="products3.html">Sheds</a></li>
													<li><a href="products3.html">Outdoor Storage  </a></li>
													<li><a href="products3.html">Garden & Ideas </a></li>
													<li><a href="products3.html">Patio Tips</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Garage Storage</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products3.html">Baskets & Bins </a></li> 
													<li><a href="products3.html">Garage Door Openers</a></li>
													<li><a href="products3.html">Free Standing Shelves </a></li>
													<li><a href="products3.html">Floor cleaning</a></li>
													<li><a href="products3.html">Tool Kits</a></li>
												</ul>
											</li>  
										</ul><!-- .cd-secondary-dropdown --> 
									</li> <!-- .has-children -->  
									<li class="has-children">
										<a href="#">Sports, Fitness & Outdoor</a>
										<ul class="cd-secondary-dropdown is-hidden">
											<li class="go-back"><a href="#">Menu</a></li>
											<li class="see-all"><a href="products4.html">All Products</a></li>
											<li class="has-children">
												<a href="#">Single Sports </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products4.html">Bikes </a></li> 
													<li><a href="products4.html">Fishing  </a></li>
													<li><a href="products4.html">Cycling </a></li>
													<li><a href="products4.html">Musical Instruments</a></li>
													<li><a href="products4.html">Archery </a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Team Sports</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products4.html">Cricket </a></li> 
													<li><a href="products4.html">Badminton </a></li>
													<li><a href="products4.html">Swimming Gear </a></li>
													<li><a href="products4.html">Sports Apparel </a></li>
													<li><a href="products4.html">Indoor games</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Fitness </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products4.html">Fitness Accessories </a></li> 
													<li><a href="products4.html">Exercise Machines </a></li>
													<li><a href="products4.html">Ellipticals </a></li>
													<li><a href="products4.html">Home Gyms</a></li> 
													<li><a href="products4.html">Exercise Bikes</a></li> 
												</ul>
											</li>
											<li class="has-children">
												<a href="#">Camping </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products4.html"> Airbeds</a></li> 
													<li><a href="products4.html">Tents </a></li>
													<li><a href="products4.html">Gazebo's & Shelters</a></li>
													<li><a href="products4.html">Coolers </a></li>
													<li><a href="products4.html">Canopies</a></li>
													<li><a href="products4.html">Sleeping Bags</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Camping Tools</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products4.html">Shooting </a></li> 
													<li><a href="products4.html">Knives & Tools </a></li>
													<li><a href="products4.html">Optics & Binoculars </a></li>
													<li><a href="products4.html">Lights & Lanterns </a></li>
													<li><a href="products4.html">Hunting Clothing </a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Other</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products4.html">Riding Gears & More </a></li> 
													<li><a href="products4.html">Body Massagers </a></li>
													<li><a href="products4.html">Health Monitors </a></li>
													<li><a href="products4.html">Health Drinks </a></li> 
												</ul>
											</li> 	
										</ul><!-- .cd-secondary-dropdown --> 
									</li> <!-- .has-children -->  
									<li class="has-children">
										<a href="#">Grocery store</a>
										<ul class="cd-secondary-dropdown is-hidden">
											<li class="go-back"><a href="#">Menu</a></li>
											<li class="see-all"><a href="products5.html">All Products</a></li>
											<li class="has-children">
												<a href="#">Veggies & Fruits </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products5.html">Vegetables </a></li> 
													<li><a href="products5.html">Fruits </a></li>
													<li><a href="products5.html">Dry Fruits</a></li> 
													<li><a href="products5.html">Snacks & Cookies </a></li>
													<li><a href="products5.html">Breakfast & Cereal</a></li> 
												</ul> 
											</li> 
											<li class="has-children">
												<a href="#">Packet Food</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products5.html">Beverages </a></li> 
													<li><a href="products5.html">Baking </a></li>
													<li><a href="products5.html">Emergency Food </a></li>
													<li><a href="products5.html">Candy & Gum </a></li>
													<li><a href="products5.html">Meals & Pasta </a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Shop All Pets </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products5.html">Dogs </a></li>  
													<li><a href="products5.html">Fish </a></li>												
													<li><a href="products5.html">Cats</a></li>
													<li><a href="products5.html">Birds </a></li>
													<li><a href="products5.html">Pet Food </a></li>
												</ul>
											</li>
											<li class="has-children">
												<a href="#">Household Essentials </a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products5.html">Laundry Room </a></li> 
													<li><a href="products5.html">Paper & Plastic</a></li>
													<li><a href="products5.html">Pest Control </a></li>
													<li><a href="products5.html">Batteries </a></li> 
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Food Shops </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products5.html">Fresh Food</a></li> 
													<li><a href="products5.html">Food Gifts </a></li>
													<li><a href="products5.html">Frozen Food </a></li>
													<li><a href="products5.html">Organic </a></li>
													<li><a href="products5.html">Gluten Free </a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Tips </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products5.html">Pets Growth</a></li> 
													<li><a href="products5.html">Recipes </a></li>
													<li><a href="products5.html">Snacks</a></li>
													<li><a href="products5.html">Nutrition</a></li> 
												</ul>
											</li> 
										</ul><!-- .cd-secondary-dropdown --> 
									</li> <!-- .has-children -->  
									<li class="has-children">
										<a href="#">Photo, Gifts & Office Supplies</a>
										<ul class="cd-secondary-dropdown is-hidden">
											<li class="go-back"><a href="#">Menu</a></li>
											<li class="see-all"><a href="products6.html">All Products</a></li>
											<li class="has-children">
												<a href="#">Trending Now </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products6.html">Best Priced</a></li> 
													<li><a href="products6.html">Chocolates </a></li>
													<li><a href="products6.html">Gift Cards </a></li>
													<li><a href="products6.html">Fashion & Accessories </a></li>
													<li><a href="products6.html">Decorative Plants </a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Photos </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products6.html">Shelf animation </a></li> 
													<li><a href="products6.html">3D-rendered </a></li>
													<li><a href="products6.html">gift builder </a></li>
													<li><a href="products6.html">Frames</a></li>
													<li><a href="products6.html">Wall Decor</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Gifts </a> 
												<ul class="is-hidden">	
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products6.html">Personalized Gifts </a></li> 
													<li><a href="products6.html">Flowers </a></li>
													<li><a href="products6.html">Cards & Toys</a></li>
													<li><a href="products6.html">Show pieces </a></li>
													<li><a href="products6.html">Photo Books</a></li>
												</ul>
											</li>
											<li class="has-children">
												<a href="#">Favourite Brands </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products6.html">Archies </a></li> 
													<li><a href="products6.html">Jewel Fuel </a></li>
													<li><a href="products6.html">Ferns N Petals </a></li>
													<li><a href="products6.html">Happily Unmarried</a></li>
													<li><a href="products6.html">Chumbak</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Office</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products6.html">Calendars</a></li> 
													<li><a href="products6.html">Mousepads</a></li>
													<li><a href="products6.html">Phone Cases</a></li>
													<li><a href="products6.html">Tablet & Laptop Cases</a></li>
													<li><a href="products6.html">Mounted Photos</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Combos </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products6.html">Chocolates </a></li> 
													<li><a href="products6.html">Dry Fruits</a></li>
													<li><a href="products6.html">Sweets</a></li>
													<li><a href="products6.html">Snacks</a></li>
													<li><a href="products6.html">Cakes</a></li>
												</ul>
											</li> 
										</ul><!-- .cd-secondary-dropdown --> 
									</li> 
									<li class="has-children">
										<a href="#">Health, Beauty & Pharmacy</a>
										<ul class="cd-secondary-dropdown is-hidden">
											<li class="go-back"><a href="#">Menu</a></li>
											<li class="see-all"><a href="products7.html">All Products</a></li>
											<li class="has-children">
												<a href="#">Health</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products7.html">Home Health Care </a></li> 
													<li><a href="products7.html">Sports Nutrition </a></li>
													<li><a href="products7.html">Vision </a></li>
													<li><a href="products7.html">Vitamins </a></li>
													<li><a href="products7.html">Diet & Nutrition </a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Health Tips</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products7.html">Diet</a></li> 
													<li><a href="products7.html">Exercise Tips  </a></li>
													<li><a href="products7.html">Vitamin Balance</a></li>
													<li><a href="products7.html">Health Insurance</a></li>
													<li><a href="products7.html">Funeral</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Beauty </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products7.html">Massage & Spa </a></li> 
													<li><a href="products7.html">Face Wash</a></li>
													<li><a href="products7.html">Facial Cleanser</a></li>
													<li><a href="products7.html">Makeup </a></li>
													<li><a href="products7.html">Beauty Tips</a></li>
												</ul>
											</li>
											<li class="has-children">
												<a href="#">Pharmacy </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products7.html">Home Delivery </a></li> 
													<li><a href="products7.html">History & Reports </a></li>
													<li><a href="products7.html">Transfer Prescriptions </a></li>
													<li><a href="products7.html">Health CheckUp</a></li>
													<li><a href="products7.html">Mobile App</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Pharmacy Center </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products7.html">Diabetes Shop </a></li> 
													<li><a href="products7.html">Medicine Cabinet </a></li>
													<li><a href="products7.html">Vitamin Selector</a></li>
													<li><a href="products7.html">Pharmacy Help</a></li> 
												</ul>
											</li>  
										</ul><!-- .cd-secondary-dropdown --> 
									</li>
									<li class="has-children">
										<a href="#">Automotive</a>
										<ul class="cd-secondary-dropdown is-hidden">
											<li class="go-back"><a href="#">Menu</a></li>
											<li class="see-all"><a href="products8.html">All Products</a></li>
											<li class="has-children">
												<a href="#">All Motors </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products8.html">Bikes </a></li> 
													<li><a href="products8.html">Yachts </a></li>
													<li><a href="products8.html">Scooters </a></li>
													<li><a href="products8.html">Autos</a></li>
													<li><a href="products8.html">Bus</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Accessories </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products8.html">Vehicle Electronics</a></li> 
													<li><a href="products8.html">Stereos & Monitors</a></li>
													<li><a href="products8.html">Bluetooth Devices</a></li>
													<li><a href="products8.html">GPS Navigation</a></li>
													<li><a href="products8.html">Speakers & Tweeters</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Safety & Security </a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products8.html">Anti-Theft Devices </a></li> 
													<li><a href="products8.html">Helmets</a></li>
													<li><a href="products8.html">Sensors</a></li>
													<li><a href="products8.html">Auto Repair Tools </a></li>
													<li><a href="products8.html">Antifreeze & Coolants </a></li>
												</ul>
											</li>
											<li class="has-children">
												<a href="#">Car Interiors</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products8.html">Stereos </a></li> 
													<li><a href="products8.html">Floor Mats </a></li>
													<li><a href="products8.html">Seat Covers</a></li>
													<li><a href="products8.html">Chargers </a></li>
													<li><a href="products8.html">Audio Finder </a></li>
												</ul>
											</li>  
											<li class="has-children">
												<a href="#">Exterior Accessories </a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products8.html">Wheel covers </a></li> 
													<li><a href="products8.html">Car Lighting </a></li>
													<li><a href="products8.html">Polish & Waxes</a></li>
													<li><a href="products8.html">Cargo Management</a></li>
													<li><a href="products8.html">Car Decoration </a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Car Care</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products8.html">Auto Tips & Advice </a></li> 
													<li><a href="products8.html">Car Washes & Cleaners </a></li>
													<li><a href="products8.html">Car Wax & Polish</a></li>
													<li><a href="products8.html">Cleaning Tools</a></li>
													<li><a href="products8.html">Detailing Kits </a></li>
												</ul>
											</li> 
										</ul><!-- .cd-secondary-dropdown --> 
									</li>
									<li class="has-children">
										<a href="#">Books, Music & Movies</a>
										<ul class="cd-secondary-dropdown is-hidden">
											<li class="go-back"><a href="#">Menu</a></li>
											<li class="see-all"><a href="products9.html">All Products</a></li>
											<li class="has-children">
												<a href="#">Books</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li class="has-children"><a href="#">Exam books </a>
														<ul class="is-hidden">
															<li class="go-back"><a href="#"> </a></li>
															<li><a href="products9.html">CAT/MAT/XAT</a></li>
															<li><a href="products9.html">Civil Services</a></li>
															<li><a href="products9.html">AFCAT</a></li>
															<li><a href="products9.html">New Releases</a></li>
														</ul>												
													</li>
													<li><a href="products9.html">Academic Text </a></li>
													<li><a href="products9.html">Romance Books </a></li>
													<li><a href="products9.html">Journals </a></li>
													<li><a href="products9.html">Children's & Teen Books </a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Music</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products9.html">New Releases </a></li> 
													<li><a href="products9.html">Country Music </a></li>
													<li><a href="products9.html">Musical Instruments </a></li>
													<li><a href="products9.html">Collections</a></li>
													<li><a href="products9.html">Boxed Sets </a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Music Combo</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products9.html">Pop </a></li> 
													<li><a href="products9.html">Preorders </a></li>
													<li><a href="products9.html">Album Songs</a></li>
													<li><a href="products9.html">Top 50 CDs </a></li>
													<li><a href="products9.html">Music DVDs </a></li>
												</ul>
											</li>
											<li class="has-children">
												<a href="#">Movies</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products9.html">New Releases </a></li> 
													<li><a href="products9.html">Children & Family </a></li>
													<li><a href="products9.html">Action</a></li>
													<li><a href="products9.html">Classic Movies </a></li>
													<li><a href="products9.html">Bollywood Movies </a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">Movies Combo</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products9.html">Hollywood Movies </a></li> 
													<li><a href="products9.html">Digital Movies </a></li>
													<li><a href="products9.html">Boxed Sets</a></li>
													<li><a href="products9.html">Animated</a></li>
													<li><a href="products9.html">Adventure</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">TV Shows</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="products9.html">Serials</a></li> 
													<li><a href="products9.html">Best Programs</a></li>
													<li><a href="products9.html">Celebrations</a></li>
													<li><a href="products9.html">Top Shows</a></li> 
												</ul>
											</li> 
										</ul><!-- .cd-secondary-dropdown --> 
									</li>  
									<li><a href="sitemap.html">Full Site Directory </a></li>  
								</ul> <!-- .cd-dropdown-content -->
							</nav> <!-- .cd-dropdown -->
						</div> <!-- .cd-dropdown-wrapper -->	 
					</div>
					<div class="move-text">
						<div class="marquee"><a href="offers.html"> New collections are available here...... <span>Get extra 10% off on everything | no extra taxes </span> <span> Try shipping pass free for 15 days with unlimited</span></a></div>
						<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery.marquee.min.js"></script>
						<script>
						  $('.marquee').marquee({ pauseOnHover: true });
						  //@ sourceURL=pen.js
						</script>
					</div>
				</div>
			</div>
		</div>
		<!-- //header --> 	
		<!-- products -->
		<div class="products">	 
			<div class="container">
				<div class="col-md-9 product-w3ls-right">
					<!-- breadcrumbs --> 
					<ol class="breadcrumb breadcrumb1">
						<li><a href="index.html">Home</a></li>
						<li class="active">Products</li>
					</ol> 
					<div class="clearfix"> </div>
					<!-- //breadcrumbs -->
					<div class="product-top">
						<h4>Fashion Store</h4>
						<ul> 
							<li class="dropdown head-dpdn">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Filter By<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Low price</a></li> 
									<li><a href="#">High price</a></li>
									<li><a href="#">Latest</a></li> 
									<li><a href="#">Popular</a></li> 
								</ul> 
							</li>
							<li class="dropdown head-dpdn">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Brands<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Brand1</a></li> 
									<li><a href="#">Brand2</a></li>
									<li><a href="#">Brand3</a></li> 
									<li><a href="#">Brand4</a></li> 
								</ul> 
							</li>
						</ul>  
						<div class="clearfix"> </div>
					</div>
					<div class="products-row">
						<div class="col-md-3 product-grids"> 
							<div class="agile-products">
								<div class="new-tag"><h6>18%<br>Off</h6></div>
								<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/f7.png" class="img-responsive" alt="img"></a>
								<div class="agile-product-text">              
									<h5><a href="single.html">Leather Jacket</a></h5> 
									<h6><del>$25</del> $20</h6> 
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Leather Jacket" /> 
										<input type="hidden" name="amount" value="20.00" /> 
										<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form> 
								</div>
							</div> 
						</div>
						<div class="col-md-3 product-grids">
							<div class="agile-products">
								<div class="new-tag"><h6>New</h6></div>
								<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/f2.png" class="img-responsive" alt="img"></a>
								<div class="agile-product-text">              
									<h5><a href="single.html">Women Sandal</a></h5> 
									<h6><del>$22</del> $20</h6> 
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Women Sandal" /> 
										<input type="hidden" name="amount" value="20.00" /> 
										<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-grids"> 
							<div class="agile-products">
								<div class="new-tag"><h6>30% <br> Off</h6></div>
								<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/f3.png" class="img-responsive" alt="img"></a>
								<div class="agile-product-text">              
									<h5><a href="single.html">Jewellery</a></h5> 
									<h6><del>$100</del> $70</h6> 
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart"/>
										<input type="hidden" name="add" value="1"/> 
										<input type="hidden" name="w3ls_item" value="Jewellery"/> 
										<input type="hidden" name="amount" value="70.00"/> 
										<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>
							</div>  
						</div>
						<div class="col-md-3 product-grids">
							<div class="agile-products">
								<div class="new-tag"><h6>New</h6></div>
								<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/f5.png" class="img-responsive" alt="img"></a>
								<div class="agile-product-text">              
									<h5><a href="single.html">Jackets</a></h5> 
									<h6><del>$32</del> $30</h6> 
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart"/>
										<input type="hidden" name="add" value="1"/> 
										<input type="hidden" name="w3ls_item" value="Jackets"/> 
										<input type="hidden" name="amount" value="30.00"/> 
										<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-grids"> 
							<div class="agile-products">
								<div class="new-tag"><h6>25%<br>Off</h6></div>
								<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/f4.png" class="img-responsive" alt="img"></a>
								<div class="agile-product-text">              
									<h5><a href="single.html">Party dress</a></h5> 
									<h6><del>$20</del> $15</h6> 
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Party dress" /> 
										<input type="hidden" name="amount" value="15.00" /> 
										<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form> 
								</div>
							</div> 
						</div>
						<div class="col-md-3 product-grids">
							<div class="agile-products">
								<div class="new-tag"><h6>New</h6></div>
								<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/f1.png" class="img-responsive" alt="img"></a>
								<div class="agile-product-text">              
									<h5><a href="single.html">T Shirt</a></h5> 
									<h6><del>$20</del> $10</h6> 
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart"/>
										<input type="hidden" name="add" value="1"/> 
										<input type="hidden" name="w3ls_item" value="T Shirt"/> 
										<input type="hidden" name="amount" value="10.00"/> 
										<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-grids">
							<div class="agile-products">
								<div class="new-tag"><h6>New</h6></div>
								<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/f8.png" class="img-responsive" alt="img"></a>
								<div class="agile-product-text">              
									<h5><a href="single.html">Boys short</a></h5> 
									<h6><del>$14</del> $12</h6> 
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart"/>
										<input type="hidden" name="add" value="1"/> 
										<input type="hidden" name="w3ls_item" value="Boys short"/> 
										<input type="hidden" name="amount" value="12.00"/> 
										<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-grids">
							<div class="agile-products">
								<div class="new-tag"><h6>New</h6></div>
								<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/f2.png" class="img-responsive" alt="img"></a>
								<div class="agile-product-text">              
									<h5><a href="single.html">Women Sandal</a></h5> 
									<h6><del>$22</del> $20</h6> 
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Women Sandal" /> 
										<input type="hidden" name="amount" value="20.00" /> 
										<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>
							</div>
						</div> 
						<div class="col-md-3 product-grids"> 
							<div class="agile-products">
								<div class="new-tag"><h6>30% <br> Off</h6></div>
								<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/f3.png" class="img-responsive" alt="img"></a>
								<div class="agile-product-text">              
									<h5><a href="single.html">Jewellery</a></h5> 
									<h6><del>$100</del> $70</h6> 
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart"/>
										<input type="hidden" name="add" value="1"/> 
										<input type="hidden" name="w3ls_item" value="Jewellery"/> 
										<input type="hidden" name="amount" value="70.00"/> 
										<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>
							</div>  
						</div>
						<div class="col-md-3 product-grids">
							<div class="agile-products">
								<div class="new-tag"><h6>New</h6></div>
								<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/f2.png" class="img-responsive" alt="img"></a>
								<div class="agile-product-text">              
									<h5><a href="single.html">Women Sandal</a></h5> 
									<h6><del>$22</del> $20</h6> 
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Women Sandal" /> 
										<input type="hidden" name="amount" value="20.00" /> 
										<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>
							</div>
						</div> 
						<div class="col-md-3 product-grids">
							<div class="agile-products">
								<div class="new-tag"><h6>New</h6></div>
								<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/f5.png" class="img-responsive" alt="img"></a>
								<div class="agile-product-text">              
									<h5><a href="single.html">Jackets</a></h5> 
									<h6><del>$32</del> $30</h6> 
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart"/>
										<input type="hidden" name="add" value="1"/> 
										<input type="hidden" name="w3ls_item" value="Jackets"/> 
										<input type="hidden" name="amount" value="30.00"/> 
										<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-grids"> 
							<div class="agile-products">
								<div class="new-tag"><h6>18%<br>Off</h6></div>
								<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/f7.png" class="img-responsive" alt="img"></a>
								<div class="agile-product-text">              
									<h5><a href="single.html">Leather Jacket</a></h5> 
									<h6><del>$25</del> $20</h6> 
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Leather Jacket" /> 
										<input type="hidden" name="amount" value="20.00" /> 
										<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form> 
								</div>
							</div> 
						</div> 
						<div class="col-md-3 product-grids">
							<div class="agile-products">
								<div class="new-tag"><h6>New</h6></div>
								<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/f8.png" class="img-responsive" alt="img"></a>
								<div class="agile-product-text">              
									<h5><a href="single.html">Boys short</a></h5> 
									<h6><del>$14</del> $12</h6> 
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart"/>
										<input type="hidden" name="add" value="1"/> 
										<input type="hidden" name="w3ls_item" value="Boys short"/> 
										<input type="hidden" name="amount" value="12.00"/> 
										<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-grids"> 
							<div class="agile-products">
								<div class="new-tag"><h6>25%<br>Off</h6></div>
								<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/f4.png" class="img-responsive" alt="img"></a>
								<div class="agile-product-text">              
									<h5><a href="single.html">Party dress</a></h5> 
									<h6><del>$20</del> $15</h6> 
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Party dress" /> 
										<input type="hidden" name="amount" value="15.00" /> 
										<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form> 
								</div>
							</div> 
						</div>
						<div class="col-md-3 product-grids">
							<div class="agile-products">
								<div class="new-tag"><h6>New</h6></div>
								<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/f1.png" class="img-responsive" alt="img"></a>
								<div class="agile-product-text">              
									<h5><a href="single.html">T Shirt</a></h5> 
									<h6><del>$20</del> $10</h6> 
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart"/>
										<input type="hidden" name="add" value="1"/> 
										<input type="hidden" name="w3ls_item" value="T Shirt"/> 
										<input type="hidden" name="amount" value="10.00"/> 
										<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>
							</div>
						</div>
						<div class="col-md-3 product-grids"> 
							<div class="agile-products">
								<div class="new-tag"><h6>30% <br> Off</h6></div>
								<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/f3.png" class="img-responsive" alt="img"></a>
								<div class="agile-product-text">              
									<h5><a href="single.html">Jewellery</a></h5> 
									<h6><del>$100</del> $70</h6> 
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart"/>
										<input type="hidden" name="add" value="1"/> 
										<input type="hidden" name="w3ls_item" value="Jewellery"/> 
										<input type="hidden" name="amount" value="70.00"/> 
										<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>
							</div>  
						</div> 
						<div class="clearfix"> </div>
					</div>
					<!-- add-products --> 
					<div class="w3ls-add-grids w3agile-add-products">
						<a href="#"> 
							<h4>TOP 10 TRENDS FOR YOU FLAT <span>20%</span> OFF</h4>
							<h6>Shop now <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></h6>
						</a>
					</div> 
					<!-- //add-products -->
				</div>
				<div class="col-md-3 rsidebar">
					<div class="rsidebar-top">
						<div class="slider-left">
							<h4>Filter By Price</h4>            
							<div class="row row1 scroll-pane">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>0 - $100 </label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$100 - $200 </label> 
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$200 - $250  </label> 
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$250 - $300 </label> 
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$350 - $400 </label> 
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$450 - $500  </label> 
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>More</label> 
							</div> 
						</div>
						<div class="sidebar-row">
							<h4>Fashion Store</h4>
							<ul class="faq">
								<li class="item1"><a href="#">Clothing<span class="glyphicon glyphicon-menu-down"></span></a>
									<ul>
										<li class="subitem1"><a href="#">Ethnic wear</a></li>										
										<li class="subitem1"><a href="#">Maternity wear</a></li>										
										<li class="subitem1"><a href="#">Sports wear</a></li>										
										<li class="subitem1"><a href="#">Inner & nightwear</a></li>										
									</ul>
								</li>
								<li class="item2"><a href="#">Accessories<span class="glyphicon glyphicon-menu-down"></span></a>
									<ul>
										<li class="subitem1"><a href="#">Watches</a></li>										
										<li class="subitem1"><a href="#">Eyewear</a></li>			 										
										<li class="subitem1"><a href="#">Jewellery</a></li>										
										<li class="subitem1"><a href="#">Footwear</a></li>										
									</ul>
								</li>
								<li class="item3"><a href="#">Beauty<span class="glyphicon glyphicon-menu-down"></span></a>
									<ul>
										<li class="subitem1"><a href="#">Face Care</a></li>										
										<li class="subitem1"><a href="#">Perfumes & Deos</a></li>										
										<li class="subitem1"><a href="#">Personal Grooming</a></li>										
									</ul>
								</li>
							</ul>
							<!-- script for tabs -->
							<script type="text/javascript">
								$(function() {
								
									var menu_ul = $('.faq > li > ul'),
										   menu_a  = $('.faq > li > a');
									
									menu_ul.hide();
								
									menu_a.click(function(e) {
										e.preventDefault();
										if(!$(this).hasClass('active')) {
											menu_a.removeClass('active');
											menu_ul.filter(':visible').slideUp('normal');
											$(this).addClass('active').next().stop(true,true).slideDown('normal');
										} else {
											$(this).removeClass('active');
											$(this).next().stop(true,true).slideUp('normal');
										}
									});
								
								});
							</script>
							<!-- script for tabs -->
						</div>
						<div class="sidebar-row">
							<h4>DISCOUNTS</h4>
							<div class="row row1 scroll-pane">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Upto - 10% (20)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>70% - 60% (5)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>50% - 40% (7)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (2)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (5)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (7)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (2)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other(50)</label>
							</div>
						</div>
						<div class="sidebar-row">
							<h4>Color</h4>
							<div class="row row1 scroll-pane">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>White</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Pink</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Gold</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Blue</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Orange</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i> Brown</label> 
							</div>
						</div>			 
					</div>
					<div class="related-row">
						<h4>Related Searches</h4>
						<ul>
							<li><a href="products.html">Travel Bags</a></li>
							<li><a href="products.html">Casual Wear</a></li>
							<li><a href="products.html">Beauty Gift Hampers</a></li>
							<li><a href="products.html">T-Shirts</a></li>
							<li><a href="products.html">Blazers</a></li>
							<li><a href="products.html">Parkas</a></li>
							<li><a href="products.html">Shoes</a></li>
							<li><a href="products.html">Hair Care</a></li>
							<li><a href="products.html">Bath & Spa</a></li>
							<li><a href="products.html">Handbags</a></li>
						</ul>
					</div>
					<div class="related-row">
						<h4>YOU MAY ALSO LIKE</h4>
						<div class="galry-like">  
							<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/e1.png" class="img-responsive" alt="img"></a>             
							<h4><a href="products.html">Audio speaker</a></h4> 
							<h5>$100</h5>       
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
				<!-- recommendations -->
				<div class="recommend">
					<h3 class="w3ls-title">Our Recommendations </h3> 
					<script>
						$(document).ready(function() { 
							$("#owl-demo5").owlCarousel({
						 
							  autoPlay: 3000, //Set AutoPlay to 3 seconds
						 
							  items :4,
							  itemsDesktop : [640,5],
							  itemsDesktopSmall : [414,4],
							  navigation : true
						 
							});
							
						}); 
					</script>
					<div id="owl-demo5" class="owl-carousel">
						<div class="item">
							<div class="glry-w3agile-grids agileits">
								<div class="new-tag"><h6>20% <br> Off</h6></div>
								<a href="products1.html"><img src="<%=request.getContextPath()%>/static/images/f2.png" alt="img"></a>
								<div class="view-caption agileits-w3layouts">           
									<h4><a href="products1.html">Women Sandal</a></h4>
									<p>Lorem ipsum dolor sit amet consectetur</p>
									<h5>$20</h5>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Women Sandal" /> 
										<input type="hidden" name="amount" value="20.00" /> 
										<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>        
							</div> 
						</div>
						<div class="item">
							<div class="glry-w3agile-grids agileits"> 
								<a href="products.html"><img src="<%=request.getContextPath()%>/static/images/e4.png" alt="img"></a>
								<div class="view-caption agileits-w3layouts">           
									<h4><a href="products.html">Digital Camera</a></h4>
									<p>Lorem ipsum dolor sit amet consectetur</p>
									<h5>$80</h5>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Digital Camera"/> 
										<input type="hidden" name="amount" value="100.00" /> 
										<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>         
							</div>  
						</div>  
						<div class="item">
							<div class="glry-w3agile-grids agileits"> 
								<div class="new-tag"><h6>New</h6></div>
								<a href="products4.html"><img src="<%=request.getContextPath()%>/static/images/s1.png" alt="img"></a>
								<div class="view-caption agileits-w3layouts">           
									<h4><a href="products4.html">Roller Skates</a></h4>
									<p>Lorem ipsum dolor sit amet consectetur</p>
									<h5>$180</h5>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Roller Skates"/> 
										<input type="hidden" name="amount" value="180.00" /> 
										<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>         
							</div>  
						</div>
						<div class="item">
							<div class="glry-w3agile-grids agileits"> 
								<a href="products1.html"><img src="<%=request.getContextPath()%>/static/images/f1.png" alt="img"></a>
								<div class="view-caption agileits-w3layouts">           
									<h4><a href="products1.html">T Shirt</a></h4>
									<p>Lorem ipsum dolor sit amet consectetur</p>
									<h5>$10</h5>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="T Shirt" /> 
										<input type="hidden" name="amount" value="10.00" /> 
										<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>        
							</div>    
						</div>
						<div class="item">
							<div class="glry-w3agile-grids agileits"> 
								<div class="new-tag"><h6>New</h6></div>
								<a href="products6.html"><img src="<%=request.getContextPath()%>/static/images/p1.png" alt="img"></a>
								<div class="view-caption agileits-w3layouts">           
									<h4><a href="products6.html">Coffee Mug</a></h4>
									<p>Lorem ipsum dolor sit amet consectetur</p>
									<h5>$14</h5>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Coffee Mug" /> 
										<input type="hidden" name="amount" value="14.00" /> 
										<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>         
							</div>  
						</div>
						<div class="item">
							<div class="glry-w3agile-grids agileits"> 
								<div class="new-tag"><h6>20% <br> Off</h6></div>
								<a href="products6.html"><img src="<%=request.getContextPath()%>/static/images/p2.png" alt="img"></a>
								<div class="view-caption agileits-w3layouts">           
									<h4><a href="products6.html">Teddy bear</a></h4>
									<p>Lorem ipsum dolor sit amet consectetur</p>
									<h5>$20</h5>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Teddy bear" /> 
										<input type="hidden" name="amount" value="20.00" /> 
										<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>        
							</div> 
						</div>
						<div class="item">
							<div class="glry-w3agile-grids agileits"> 
								<a href="products4.html"><img src="<%=request.getContextPath()%>/static/images/s2.png" alt="img"></a>
								<div class="view-caption agileits-w3layouts">           
									<h4><a href="products4.html">Football</a></h4>
									<p>Lorem ipsum dolor sit amet consectetur</p>
									<h5>$70</h5>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Football"/> 
										<input type="hidden" name="amount" value="70.00"/>
										<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>        
							</div> 
						</div> 
						<div class="item">
							<div class="glry-w3agile-grids agileits"> 
								<div class="new-tag"><h6>Sale</h6></div>
								<a href="products3.html"><img src="<%=request.getContextPath()%>/static/images/h1.png" alt="img"></a>
								<div class="view-caption agileits-w3layouts">           
									<h4><a href="products3.html">Wall Clock</a></h4>
									<p>Lorem ipsum dolor sit amet consectetur</p>
									<h5>$80</h5>
									<form action="#" method="post">
										<input type="hidden" name="cmd" value="_cart" />
										<input type="hidden" name="add" value="1" /> 
										<input type="hidden" name="w3ls_item" value="Wall Clock" /> 
										<input type="hidden" name="amount" value="80.00" /> 
										<button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
									</form>
								</div>         
							</div>  
						</div> 
					</div>    
				</div>
				<!-- //recommendations -->
			</div>
		</div>
		<!--//products-->  
		<!-- footer-top -->
		<div class="w3agile-ftr-top">
			<div class="container">
				<div class="ftr-toprow">
					<div class="col-md-4 ftr-top-grids">
						<div class="ftr-top-left">
							<i class="fa fa-truck" aria-hidden="true"></i>
						</div> 
						<div class="ftr-top-right">
							<h4>FREE DELIVERY</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempus justo ac </p>
						</div> 
						<div class="clearfix"> </div>
					</div> 
					<div class="col-md-4 ftr-top-grids">
						<div class="ftr-top-left">
							<i class="fa fa-user" aria-hidden="true"></i>
						</div> 
						<div class="ftr-top-right">
							<h4>CUSTOMER CARE</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempus justo ac </p>
						</div> 
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-4 ftr-top-grids">
						<div class="ftr-top-left">
							<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
						</div> 
						<div class="ftr-top-right">
							<h4>GOOD QUALITY</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempus justo ac </p>
						</div>
						<div class="clearfix"> </div>
					</div> 
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //footer-top --> 
		<!-- subscribe -->
		<div class="subscribe"> 
			<div class="container">
				<div class="col-md-6 social-icons w3-agile-icons">
					<h4>Keep in touch</h4>  
					<ul>
						<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
						<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
						<li><a href="#" class="fa fa-google-plus icon googleplus"> </a></li>
						<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
						<li><a href="#" class="fa fa-rss icon rss"> </a></li> 
					</ul>
					<ul class="apps"> 
						<li><h4>Download Our app : </h4> </li>
						<li><a href="#" class="fa fa-apple"></a></li>
						<li><a href="#" class="fa fa-windows"></a></li>
						<li><a href="#" class="fa fa-android"></a></li>
					</ul>
				</div> 
				<div class="col-md-6 subscribe-right">
					<h4>Sign up for email and get 25%off!</h4> 
					<form action="#" method="post"> 
						<input type="text" name="email" placeholder="Enter your Email..." required="">
						<input type="submit" value="Subscribe">
					</form>
					<div class="clearfix"> </div> 
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<!-- //subscribe --> 
		<!-- footer -->
		<div class="footer">
			<div class="container">
				<div class="footer-info w3-agileits-info">
					<div class="col-md-4 address-left agileinfo">
						<div class="footer-logo header-logo">
							<h2><a href="index.html"><span>S</span>mart <i>Bazaar</i></a></h2>
							<h6>Your stores. Your place.</h6>
						</div>
						<ul>
							<li><i class="fa fa-map-marker"></i> 123 San Sebastian, New York City USA.</li>
							<li><i class="fa fa-mobile"></i> 333 222 3333 </li>
							<li><i class="fa fa-phone"></i> +222 11 4444 </li>
							<li><i class="fa fa-envelope-o"></i> <a href="mailto:example@mail.com"> mail@example.com</a></li>
						</ul> 
					</div>
					<div class="col-md-8 address-right">
						<div class="col-md-4 footer-grids">
							<h3>Company</h3>
							<ul>
								<li><a href="about.html">About Us</a></li>
								<li><a href="marketplace.html">Marketplace</a></li>  
								<li><a href="values.html">Core Values</a></li>  
								<li><a href="privacy.html">Privacy Policy</a></li>
							</ul>
						</div>
						<div class="col-md-4 footer-grids">
							<h3>Services</h3>
							<ul>
								<li><a href="contact.html">Contact Us</a></li>
								<li><a href="login.html">Returns</a></li> 
								<li><a href="faq.html">FAQ</a></li>
								<li><a href="sitemap.html">Site Map</a></li>
								<li><a href="login.html">Order Status</a></li>
							</ul> 
						</div>
						<div class="col-md-4 footer-grids">
							<h3>Payment Methods</h3>
							<ul>
								<li><i class="fa fa-laptop" aria-hidden="true"></i> Net Banking</li>
								<li><i class="fa fa-money" aria-hidden="true"></i> Cash On Delivery</li>
								<li><i class="fa fa-pie-chart" aria-hidden="true"></i>EMI Conversion</li>
								<li><i class="fa fa-gift" aria-hidden="true"></i> E-Gift Voucher</li>
								<li><i class="fa fa-credit-card" aria-hidden="true"></i> Debit/Credit Card</li>
							</ul>  
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!-- //footer -->
		<div class="copy-right"> 
			<div class="container">
				<p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
			</div>
		</div> 
		<!-- cart-js -->
		<script src="<%=request.getContextPath()%>/static/js/minicart.js"></script>
		<script>
	        w3ls.render();
	
	        w3ls.cart.on('w3sb_checkout', function (evt) {
	        	var items, len, i;
	
	        	if (this.subtotal() > 0) {
	        		items = this.items();
	
	        		for (i = 0, len = items.length; i < len; i++) {
	        			items[i].set('shipping', 0);
	        			items[i].set('shipping2', 0);
	        		}
	        	}
	        });
	    </script>  
		<!-- //cart-js -->  
		<!-- menu js aim -->
		<script src="<%=request.getContextPath()%>/static/js/jquery.menu-aim.js"> </script>
		<script src="<%=request.getContextPath()%>/static/js/main.js"></script> <!-- Resource jQuery -->
		<!-- //menu js aim --> 
		<!-- Bootstrap core JavaScript
	    ================================================== -->
	    <!-- Placed at the end of the document so the pages load faster -->
	    <script src="<%=request.getContextPath()%>/static/js/bootstrap.js"></script>
	</body>
</html>