<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Products4</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="<%=request.getContextPath()%>/static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=request.getContextPath()%>/static/css/style.css" rel="stylesheet" type="text/css" media="all" /> 
<link href="<%=request.getContextPath()%>/static/css/menu.css" rel="stylesheet" type="text/css" media="all" /> <!-- menu style -->  
<link href="<%=request.getContextPath()%>/static/css/animate.min.css" rel="stylesheet" type="text/css" media="all" />   
<link href="<%=request.getContextPath()%>/static/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all"> <!-- carousel slider -->  
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="<%=request.getContextPath()%>/static/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="<%=request.getContextPath()%>/static/js/jquery-2.2.3.min.js"></script> 
<script src="<%=request.getContextPath()%>/static/js/owl.carousel.js"></script>
<!-- //js --> 
<!-- web-fonts -->
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lovers+Quarrel' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Offside' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
<!-- web-fonts --> 
<!-- scroll to fixed--> 
<script src="<%=request.getContextPath()%>/static/js/jquery-scrolltofixed-min.js" type="text/javascript"></script>
<script>
    $(document).ready(function() {

        // Dock the header to the top of the window when scrolled past the banner. This is the default behaviour.

        $('.header-two').scrollToFixed();  
        // previous summary up the page.

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
<!-- //scroll to fixed--> 
<!-- start-smooth-scrolling -->
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/move-top.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/easing.js"></script>	
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->
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
<!-- //smooth-scrolling-of-move-up -->  
<!-- the jScrollPane script -->
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>
<!-- //the jScrollPane script -->
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery.mousewheel.js"></script>
<!-- the mousewheel plugin --> 
</head>
<body>
		<script>
			$('#myModal88').modal('show');
		</script> 
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
								<li><a href="<%=request.getContextPath()%>/product/login.jsp">登录 </a></li> 
								<li><a href="<%=request.getContextPath()%>/product/signup.jsp">注册</a></li> 
								<li><a href="<%=request.getContextPath()%>/product/login.jsp">我的订单</a></li>  
								<li><a href="<%=request.getContextPath()%>/product/login.jsp">钱包</a></li> 
							</ul> 
						</li> 
					</ul>
				</div>
				<div class="clearfix"> </div> 
			</div>
			<div class="header-two"><!-- header-two -->
				<div class="container">
					<div class="header-logo">
						<h1><a href="index.html"><span>W</span>xmall<i>Buy</i></a></h1>
						<h6>你的商店，你的欢乐</h6> 
					</div>	
					<div class="header-search">
						<form action="#" method="post">
							<input type="search" name="Search" placeholder="请输入查找商品" required="">
							<button type="submit" class="btn btn-default" aria-label="Left Align">
								<i class="fa fa-search" aria-hidden="true"> </i>
							</button>
						</form>
					</div>
					<div class="header-cart"> 
						<div class="my-account">
							<a href="contact.html">
								<i class="fa fa-map-marker" aria-hidden="true"></i> 
								联系我们
							</a>						
						</div>
						<div class="cart"> 
							<form action="#" method="post" class="last"> 
								<input type="hidden" name="cmd" value="_cart" />
								<input type="hidden" name="display" value="1" />
								<button class="w3view-cart" type="submit" name="submit" value="">
									<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
								</button>
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
							<a class="cd-dropdown-trigger" href="#0">商店类别</a>
							<nav class="cd-dropdown"> 
								<a href="#0" class="cd-close">Close</a>
								<ul class="cd-dropdown-content"> 
									<li><a href="<%=request.getContextPath()%>/product/offers.jsp">今日优惠</a></li>
									<li class="has-children">
										<a href="#">电子产品</a> 
										<ul class="cd-secondary-dropdown is-hidden">
											<li class="go-back"><a href="#">菜单</a></li>
											<li class="see-all"><a href="<%=request.getContextPath()%>/product/products.jsp">所有电子产品</a></li>
											<li class="has-children">
												<a href="#">移动电话</a>  
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#">所有电子产品</a></li> 
													<li class="has-children">
														<a href="#0">智能手机</a> 
														<ul class="is-hidden"> 
															<li class="go-back"><a href="#"> </a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">华为</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">OPPO</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">苹果</a></li>
														</ul>
													</li>
													<li> <a href="<%=request.getContextPath()%>/product/products.jsp">IPhone手机</a> </li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">老年机</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">IPad</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">功能手机</a></li> 
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">大型电器</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#">所有电子产品</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">冰箱</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">洗衣机</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">办公技术</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">冷气机</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">家电自动化</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">娱乐</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#">所有电子产品</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">电视和配件</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">数码相机</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">游戏</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">家庭音响和电影</a></li>
													<li class="has-children">
														<a href="#">电脑</a>
														<ul class="is-hidden">
															<li class="go-back"><a href="#"> </a></li> 
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">笔记本电脑 </a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">游戏PC</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">显示器</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">路由器</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">打印机及材料</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">饰品</a></li>
														</ul>
													</li> 
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">家用电器</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#0">所有电子产品</a></li>
													<li class="has-children"><a href="#">厨房电器</a>
														<ul class="is-hidden">
															<li class="go-back"><a href="#0"> </a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">电饭煲</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">搅拌机和榨汁机</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">磨床</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">搅拌机和切碎机</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">微波炉</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">食品加工器</a></li>
														</ul>
													</li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">净化器</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">煤气热水器</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">煤气灶</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">吸尘器</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">缝纫机</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">加热器和风扇</a></li>
												</ul>
											</li>
											<li class="has-children">
												<a href="#">小装置</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#0">所有电子产品</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">无线加密狗</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">路由器和调制解调器</a></li>
													<li class="has-children"><a href="#">存储设备</a>
														<ul class="is-hidden">
															<li class="go-back"><a href="#0"> </a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">云存储</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">硬盘</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">SSD</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">笔驱动</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">内存卡</a></li> 
															<li><a href="<%=request.getContextPath()%>/product/products.jsp">安全设备</a></li> 
														</ul>
													</li> 
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">办公用品</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">切缆刀</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">车用电子</a></li>  
												</ul>
											</li>
											<li class="has-children">
												<a href="#">个人护理</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#0">所有电子产品</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">拔毛器</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">剃发器</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">修剪器和剃须刀</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products.jsp">卫生保健</a></li> 
												</ul>
											</li>
										</ul> <!-- .cd-secondary-dropdown --> 
									</li> <!-- .has-children -->
									<li class="has-children">
										<a href="#">时装商店</a> 
										<ul class="cd-secondary-dropdown is-hidden">
											<li class="go-back"><a href="#">菜单</a></li>
											<li class="see-all"><a href="products1.html">所有时装店</a></li>
											<li class="has-children">
												<a href="#">女士服装</a> 
												<ul class="is-hidden">  
													<li class="go-back"><a href="#">所有时装店</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">民族服饰</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">孕妇服饰</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">内衣和睡衣</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">休闲装</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">正装</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">运动装</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">男士服装</a> 
												<ul class="is-hidden">  
													<li class="go-back"><a href="#">所有时装店</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">牛仔</a></li>  
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">休闲装</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">短裤</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">T恤和Polo衫</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">裤子</a></li> 
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">夹克</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#">所有时装店</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">开拓者</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">飞行员夹克</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">牛仔夹克</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">Duffle外套</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">皮夹克</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">风雪大衣</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">配件 </a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#">所有时装店</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">手表 </a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">眼镜</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">首饰</a></li>
													<li class="has-children">
														<a href="#">鞋</a>  
														<ul class="is-hidden">
															<li class="go-back"><a href="#"> </a></li>
															<li><a href="<%=request.getContextPath()%>/product/products1.jsp">民族</a></li>  
															<li><a href="<%=request.getContextPath()%>/product/products1.jsp">休闲装</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products1.jsp">运动装</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products1.jsp">靴子</a></li>
														</ul> 
													</li> 
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">披肩和围巾</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">手袋</a></li>
												</ul>
											</li>
											<li class="has-children">
												<a href="#">化妆品</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#">所有时装店</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">香水和Deos</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">口红和指甲油</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">美容礼品篮</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">个人饰品</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">旅行包</a></li>
												</ul>
											</li>
											<li class="has-children">
												<a href="#">个人护理</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#">所有时装店</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">面部护理</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">指甲保养</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">头发护理</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">身材锻炼</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products1.jsp">巴斯和水疗</a></li>   
												</ul>
											</li>
										</ul> <!-- .cd-secondary-dropdown --> 
									</li> <!-- .has-children -->
									<li class="has-children">
										<a href="#">儿童时装及玩具</a> 
										<ul class="cd-secondary-dropdown is-hidden"> 
											<li class="go-back"><a href="#">菜单</a></li>
											<li class="see-all"><a href="#">所有儿童时装</a></li>
											<li class="has-children">
												<a href="#">儿童服装</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#">所有儿童时装</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">民族服装</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">内衣和睡衣</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">连衣裙</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">冬装</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">尿布及配件</a></li>
												</ul>
											</li> 
											<li class="has-children"><a href="#">KIDS FASHION</a>
												<ul class="is-hidden">  
													<li class="go-back"><a href="#">所有儿童时装</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">鞋</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">墨镜</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">学校文具</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">首饰</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">发带和发夹</a></li>
												</ul>
											</li>
											<li class="has-children"><a href="#">婴儿护理</a>
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#">所有儿童时装</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">乳液、油和粉</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">肥皂和洗发水</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">浴巾</a></li> 
													<li class="has-children">
														<a href="#">喂养</a> 
														<ul class="is-hidden">
															<li class="go-back"><a href="#"> </a></li> 
															<li><a href="<%=request.getContextPath()%>/product/products2.jsp">婴儿食品</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products2.jsp">奶瓶</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products2.jsp">母乳</a></li>  
														</ul>
													</li>  
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">婴儿室</a></li> 	
												</ul><!-- .cd-secondary-dropdown --> 
											</li> <!-- .has-children -->								
											<li class="has-children"><a href="#">玩耍玩具</a>
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#">所有儿童时装</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">工艺品</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">益智玩具</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">婴儿玩具</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">户外玩具</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products2.jsp">乐器</a></li>
												</ul>
											</li>
										</ul><!-- .cd-secondary-dropdown --> 
									</li> <!-- .has-children --> 
									<li class="has-children">
										<a href="#">家居家具</a> 
										<ul class="cd-secondary-dropdown is-hidden">
											<li class="go-back"><a href="#">菜单</a></li>
											<li class="see-all"><a href="#">所有商品</a></li>
											<li class="has-children">
												<a href="#">厨房用具</a> 
												<ul class="is-hidden">  
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">晚餐套具</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">炊具和烤盘</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">容器和罐子</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">厨房用具</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">食物储藏</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">砂锅</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">家具</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">卧室</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">饭厅</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">儿童用具</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">客厅</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">办公室</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">床垫</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">家居装饰</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">灯具</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">墙画</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">窗帘和百叶窗</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">庭院家具</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">衣橱和衣柜</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">床垫</a></li>
												</ul>
											</li>  
											<li class="has-children">
												<a href="#">园艺和草坪</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"> </a></li>  
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">园艺</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">园林绿化</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">棚子</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">户外储物间</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">花园构建</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">庭院配件</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">车库</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">篮子及垃圾箱</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">车库门开启器</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">独立式货架</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">地板清洁</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products3.jsp">工具套件</a></li>
												</ul>
											</li>  
										</ul><!-- .cd-secondary-dropdown --> 
									</li> <!-- .has-children -->  
									<li class="has-children">
										<a href="#">户外运动健身</a>
										<ul class="cd-secondary-dropdown is-hidden">
											<li class="go-back"><a href="#">菜单</a></li>
											<li class="see-all"><a href="#">所有商品</a></li>
											<li class="has-children">
												<a href="#">单项运动</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">自行车</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">钓鱼</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">循环</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">乐器</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">射箭</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">团队竞技</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">板球</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">羽毛球</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">游泳装备</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">运动装备</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">室内游乐</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">锻炼器材</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">健身配件</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">运动机器</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">拉伸器</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">家用健身器</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">运动自行车</a></li> 
												</ul>
											</li>
											<li class="has-children">
												<a href="#">露营</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">充气床</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">帐篷</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">庇护所</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">冷却器</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">檐篷</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">睡袋</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">野营工具</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">枪具</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">刀具</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">光学和双筒望远镜</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">灯具</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">狩猎服装</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">其他</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">骑马齿轮</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">按摩器</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">健康检测器</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products4.jsp">健康饮品</a></li> 
												</ul>
											</li> 	
										</ul><!-- .cd-secondary-dropdown --> 
									</li> <!-- .has-children -->  
									<li class="has-children">
										<a href="#">杂货店</a>
										<ul class="cd-secondary-dropdown is-hidden">
											<li class="go-back"><a href="#">菜单</a></li>
											<li class="see-all"><a href="#">所有产品</a></li>
											<li class="has-children">
												<a href="#">蔬菜水果</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">蔬菜</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">水果</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">干果</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">小吃和饼干</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">早餐和谷物</a></li> 
												</ul> 
											</li> 
											<li class="has-children">
												<a href="#">食物包</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">饮料</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">饼</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">压缩食品</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">糖果和口香糖</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">膳食和意大利面</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">宠物店</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">狗</a></li>  
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">观赏鱼</a></li>												
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">猫</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">鸟</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">宠物食品</a></li>
												</ul>
											</li>
											<li class="has-children">
												<a href="#">家庭必需品</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">洗衣房</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">纸和塑料</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">除虫剂</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">电池</a></li> 
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">食品商店</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">新鲜食品</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">食品礼品</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">冷冻食品</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">有机食品</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">不含谷蛋白食品</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">提示</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">宠物成长</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">食谱</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">小吃</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products5.jsp">营养</a></li> 
												</ul>
											</li> 
										</ul><!-- .cd-secondary-dropdown --> 
									</li> <!-- .has-children -->  
									<li class="has-children">
										<a href="#">照片、礼品和办公用品</a>
										<ul class="cd-secondary-dropdown is-hidden">
											<li class="go-back"><a href="#">菜单</a></li>
											<li class="see-all"><a href="#">所有商品</a></li>
											<li class="has-children">
												<a href="#">优惠</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">巧克力</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">礼品卡</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">时尚配饰</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">植物装饰</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">照片</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">动画</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">3D渲染</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">礼品制造商</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">框架</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">墙面装饰</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">礼品</a> 
												<ul class="is-hidden">	
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">个性化礼品</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">花卉</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">卡片和玩具</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">作品展示</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">照片书</a></li>
												</ul>
											</li>
											<li class="has-children">
												<a href="#">最喜爱的品牌</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">ARCHIES</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">宝石燃料</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">蕨类植物N花瓣</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">幸福</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">Chumbak</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">办公室</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">日历</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">鼠标垫</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">手机套</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">平板和笔记本电脑包</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products6.jsp">悬挂照片</a></li>
												</ul>
											</li> 
										</ul><!-- .cd-secondary-dropdown --> 
									</li> 
									<li class="has-children">
										<a href="#">健康，美容和药房</a>
										<ul class="cd-secondary-dropdown is-hidden">
											<li class="go-back"><a href="#">菜单</a></li>
											<li class="see-all"><a href="#">所有产品</a></li>
											<li class="has-children">
												<a href="#">健康</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">家庭保健</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">运动营养</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">视力</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">维生素</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">饮食和营养</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">健康小贴士</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">饮食</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">运动小贴士</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">维生素平衡</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">健康保险</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">美容</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">按摩和水疗</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">洗面奶</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">洁面乳</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">化妆</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">美容秘诀</a></li>
												</ul>
											</li>
											<li class="has-children">
												<a href="#">药店</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">送货上门</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">历史报告</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">处方</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">健康检查</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">移动应用</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">药房中心</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">糖尿病商店</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">药柜</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">维生素选择剂</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products7.jsp">药房帮助</a></li> 
												</ul>
											</li>  
										</ul><!-- .cd-secondary-dropdown --> 
									</li>
									<li class="has-children">
										<a href="#">汽车</a>
										<ul class="cd-secondary-dropdown is-hidden">
											<li class="go-back"><a href="#">菜单</a></li>
											<li class="see-all"><a href="#">所有产品</a></li>
											<li class="has-children">
												<a href="#">所有交通工具</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">自行车</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">油艇</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">滑板车</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">汽车</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">公共汽车</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">配件</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">汽车电子</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">立体声和监视器</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">蓝牙设备</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">GPS导航</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">扬声器和高音扬声器</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">安全保障</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">防盗装置</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">头盔</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">传感器</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">汽车修理工具</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">防冻剂和冷却剂</a></li>
												</ul>
											</li>
											<li class="has-children">
												<a href="#">汽车内饰</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">音响</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">地板垫</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">座套</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">充电器</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">音频查找器</a></li>
												</ul>
											</li>  
											<li class="has-children">
												<a href="#">外部配件</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">轮盖</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">汽车照明</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">润滑剂</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">货物管理</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">汽车装饰</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">汽车护理</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">自动报警</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">汽车和清洁剂</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">汽车蜡</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">清洁工具</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products8.jsp">细小配件</a></li>
												</ul>
											</li> 
										</ul><!-- .cd-secondary-dropdown --> 
									</li>
									<li class="has-children">
										<a href="#">书籍、音乐和电影</a>
										<ul class="cd-secondary-dropdown is-hidden">
											<li class="go-back"><a href="#">菜单</a></li>
											<li class="see-all"><a href="#">所有商品</a></li>
											<li class="has-children">
												<a href="#">图书</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li class="has-children"><a href="#">考试用书</a>
														<ul class="is-hidden">
															<li class="go-back"><a href="#"> </a></li>
															<li><a href="<%=request.getContextPath()%>/product/products9.jsp">CAT/MAT/XAT</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products9.jsp">公务员</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products9.jsp">AFCAT</a></li>
															<li><a href="<%=request.getContextPath()%>/product/products9.jsp">新版本</a></li>
														</ul>												
													</li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">学术学刊</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">浪漫书籍</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">期刊</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">儿童和青少年书籍</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">音乐</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">新版本</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">乡村音乐</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">乐器</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">作品集</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">盒装集</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">音乐组合</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">流行音乐</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">音乐前序</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">专辑歌曲</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">50顶级CD</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">音乐DVD</a></li>
												</ul>
											</li>
											<li class="has-children">
												<a href="#">电影</a> 
												<ul class="is-hidden"> 
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">热门电影</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">儿童与家庭片</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">动作片</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">经典电影</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">好莱坞电影</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">电影组合</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">好莱坞电影</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">数字电影</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">盒装集</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">动画片</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">冒险片</a></li>
												</ul>
											</li> 
											<li class="has-children">
												<a href="#">电视节目</a> 
												<ul class="is-hidden">
													<li class="go-back"><a href="#"></a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">电视连续剧</a></li> 
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">最佳课程</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">庆典活动</a></li>
													<li><a href="<%=request.getContextPath()%>/product/products9.jsp">热门节目</a></li> 
												</ul>
											</li> 
										</ul><!-- .cd-secondary-dropdown --> 
									</li>  
									<li><a href="<%=request.getContextPath()%>/product/sitemap.jsp">完整网站目录</a></li>  
								</ul> <!-- .cd-dropdown-content -->
							</nav> <!-- .cd-dropdown -->
						</div> <!-- .cd-dropdown-wrapper -->	 
					</div>
					<div class="move-text">
						<div class="marquee">
							<a href="offers.html">
								这里有新的系列......
								<span>
									所有的东西都可以享受9折优惠  | 没有额外的税收 
								</span> 
								<span> 
									免费送货|15天无偿退货
								</span>
							</a>
						</div>
						<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery.marquee.min.js"></script>
						<script>
						  $('.marquee').marquee({ pauseOnHover: true });
						  //@ sourceURL=pen.js
						</script>
					</div>
				</div>
			</div>
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
					<h4>Sports, Fitness & Outdoor</h4>
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
							<div class="new-tag"><h6>10%<br>Off</h6></div>
							<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/s1.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.html">Roller Skates</a></h5> 
								<h6><del>$200</del> $180</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Roller Skates"/> 
									<input type="hidden" name="amount" value="180.00" /> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form> 
							</div>
						</div> 
					</div>   
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag"><h6>New</h6></div>
							<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/s3.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.html">Nylon Shuttle</a></h5> 
								<h6><del>$60</del> $56</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"/>
									<input type="hidden" name="add" value="1"/> 
									<input type="hidden" name="w3ls_item" value="Nylon Shuttle"/> 
									<input type="hidden" name="amount" value="56.00"/> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids"> 
						<div class="agile-products">
							<div class="new-tag"><h6>01%<br>Off</h6></div>
							<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/s2.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.html">Football</a></h5> 
								<h6><del>$71</del>$70</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Football" /> 
									<input type="hidden" name="amount" value="70.00" /> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form> 
							</div>
						</div> 
					</div>  
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag"><h6>OFF</h6></div>
							<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/s5.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.html">Exercise Bike</a></h5> 
								<h6><del>$285</del> $280</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"/>
									<input type="hidden" name="add" value="1"/> 
									<input type="hidden" name="w3ls_item" value="Exercise Bike"/> 
									<input type="hidden" name="amount" value="280.00"/> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag"><h6>OFF</h6></div>
							<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/s4.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.html">Cricket Kit</a></h5> 
								<h6><del>$82</del> $80</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"/>
									<input type="hidden" name="add" value="1"/> 
									<input type="hidden" name="w3ls_item" value="Cricket Kit"/> 
									<input type="hidden" name="amount" value="80.00"/> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids"> 
						<div class="agile-products">
							<div class="new-tag"><h6>01%<br>Off</h6></div>
							<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/s2.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.html">Football</a></h5> 
								<h6><del>$71</del>$70</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Football" /> 
									<input type="hidden" name="amount" value="70.00" /> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form> 
							</div>
						</div> 
					</div> 
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag"><h6>New</h6></div>
							<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/s3.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.html">Nylon Shuttle</a></h5> 
								<h6><del>$60</del> $56</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"/>
									<input type="hidden" name="add" value="1"/> 
									<input type="hidden" name="w3ls_item" value="Nylon Shuttle"/> 
									<input type="hidden" name="amount" value="56.00"/> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>
					</div> 
					<div class="col-md-3 product-grids"> 
						<div class="agile-products">
							<div class="new-tag"><h6>10%<br>Off</h6></div>
							<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/s1.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.html">Roller Skates</a></h5> 
								<h6><del>$200</del> $180</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Roller Skates"/> 
									<input type="hidden" name="amount" value="180.00" /> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form> 
							</div>
						</div> 
					</div>
					<div class="col-md-3 product-grids"> 
						<div class="agile-products">
							<div class="new-tag"><h6>10%<br>Off</h6></div>
							<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/s1.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.html">Roller Skates</a></h5> 
								<h6><del>$200</del> $180</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Roller Skates"/> 
									<input type="hidden" name="amount" value="180.00" /> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form> 
							</div>
						</div> 
					</div>   
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag"><h6>New</h6></div>
							<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/s3.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.html">Nylon Shuttle</a></h5> 
								<h6><del>$60</del> $56</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"/>
									<input type="hidden" name="add" value="1"/> 
									<input type="hidden" name="w3ls_item" value="Nylon Shuttle"/> 
									<input type="hidden" name="amount" value="56.00"/> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids"> 
						<div class="agile-products">
							<div class="new-tag"><h6>01%<br>Off</h6></div>
							<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/s2.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.html">Football</a></h5> 
								<h6><del>$71</del>$70</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Football" /> 
									<input type="hidden" name="amount" value="70.00" /> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form> 
							</div>
						</div> 
					</div>  
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag"><h6>OFF</h6></div>
							<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/s5.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.html">Exercise Bike</a></h5> 
								<h6><del>$285</del> $280</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"/>
									<input type="hidden" name="add" value="1"/> 
									<input type="hidden" name="w3ls_item" value="Exercise Bike"/> 
									<input type="hidden" name="amount" value="280.00"/> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag"><h6>OFF</h6></div>
							<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/s4.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.html">Cricket Kit</a></h5> 
								<h6><del>$82</del> $80</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"/>
									<input type="hidden" name="add" value="1"/> 
									<input type="hidden" name="w3ls_item" value="Cricket Kit"/> 
									<input type="hidden" name="amount" value="80.00"/> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-3 product-grids"> 
						<div class="agile-products">
							<div class="new-tag"><h6>01%<br>Off</h6></div>
							<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/s2.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.html">Football</a></h5> 
								<h6><del>$71</del>$70</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Football" /> 
									<input type="hidden" name="amount" value="70.00" /> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form> 
							</div>
						</div> 
					</div> 
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<div class="new-tag"><h6>New</h6></div>
							<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/s3.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.html">Nylon Shuttle</a></h5> 
								<h6><del>$60</del> $56</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart"/>
									<input type="hidden" name="add" value="1"/> 
									<input type="hidden" name="w3ls_item" value="Nylon Shuttle"/> 
									<input type="hidden" name="amount" value="56.00"/> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form>
							</div>
						</div>
					</div> 
					<div class="col-md-3 product-grids"> 
						<div class="agile-products">
							<div class="new-tag"><h6>10%<br>Off</h6></div>
							<a href="single.html"><img src="<%=request.getContextPath()%>/static/images/s1.png" class="img-responsive" alt="img"></a>
							<div class="agile-product-text">              
								<h5><a href="single.html">Roller Skates</a></h5> 
								<h6><del>$200</del> $180</h6> 
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" /> 
									<input type="hidden" name="w3ls_item" value="Roller Skates"/> 
									<input type="hidden" name="amount" value="180.00" /> 
									<button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
								</form> 
							</div>
						</div> 
					</div>  
					<div class="clearfix"> </div>
				</div>
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
						<h4>Sports & Fitness</h4>
						<ul class="faq">
							<li class="item1"><a href="#">Single Sports<span class="glyphicon glyphicon-menu-down"></span></a>
								<ul>
									<li class="subitem1"><a href="#">Bikes</a></li>										
									<li class="subitem1"><a href="#">Fishing</a></li>										
									<li class="subitem1"><a href="#">Cycling</a></li>										
									<li class="subitem1"><a href="#">Archery</a></li>										
								</ul>
							</li>
							<li class="item2"><a href="#">Fitness<span class="glyphicon glyphicon-menu-down"></span></a>
								<ul>
									<li class="subitem1"><a href="#">Fitness Accessories</a></li>										
									<li class="subitem1"><a href="#">Exercise Machines</a></li>				 										
									<li class="subitem1"><a href="#">Ellipticals</a></li>										
									<li class="subitem1"><a href="#">Home Gyms</a></li>										
								</ul>
							</li>
							<li class="item3"><a href="#">Camping<span class="glyphicon glyphicon-menu-down"></span></a>
								<ul>
									<li class="subitem1"><a href="#">BAir Beds</a></li>										
									<li class="subitem1"><a href="#">Gazebo's & Shelters</a></li>										
									<li class="subitem1"><a href="#">Optics & Binoculars</a></li>										
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
						<li><a href="products.html">Health Drinks</a></li>
						<li><a href="products.html">Lights & Lanterns</a></li>
						<li><a href="products.html">Body Massagers</a></li>
						<li><a href="products.html">Musical Instruments</a></li>
						<li><a href="products.html">Health Monitors</a></li>
						<li><a href="products.html">Shoes</a></li>
						<li><a href="products.html">Sports Apparel</a></li>
						<li><a href="products.html">Badminton</a></li>
						<li><a href="products.html">Shooting</a></li>
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
	<script src="js/minicart.js"></script>
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
	<script src="<%=request.getContextPath()%>/static/js/jquery.menu-aim.js"> </script>
	<script src="<%=request.getContextPath()%>/static/js/main.js"></script> <!-- Resource jQuery -->
    <script src="<%=request.getContextPath()%>/static/js/bootstrap.js"></script>
</body>
</html>