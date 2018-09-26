<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>站点地图</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		
		<link href="<%=request.getContextPath()%>/static/css/bootstrap.css" 
				rel="stylesheet" type="text/css" media="all" />
		<link href="<%=request.getContextPath()%>/static/css/style.css" 
				rel="stylesheet" type="text/css" media="all" /> 
		<link href="<%=request.getContextPath()%>/static/css/animate.min.css" 
				rel="stylesheet" type="text/css" media="all" />
		<link href="<%=request.getContextPath()%>/static/css/menu.css" 
				rel="stylesheet" type="text/css" media="all" /> 
		<link href="<%=request.getContextPath()%>/static/css/font-awesome.css" 
				rel="stylesheet"> 
		
		<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' 
				rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Lovers+Quarrel' 
				rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Offside' 
				rel='stylesheet' type='text/css'> 
		
		<script type="application/x-javascript"> 
				addEventListener("load", function() { 
					setTimeout(hideURLbar, 0); }, false);
				function hideURLbar(){ 
					window.scrollTo(0,1); } 
		</script>
		<script src="<%=request.getContextPath()%>/static/js/jquery-2.2.3.min.js"></script>  
		<script src="<%=request.getContextPath()%>/static/js/move-top.js"
				type="text/javascript" ></script>
		<script src="<%=request.getContextPath()%>/static/js/easing.js"
				type="text/javascript" ></script>	
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
		<!-- site map -->
		<div class="sitemap">
			<div class="container"> 
				<h3 class="w3ls-title w3ls-title1">Our Sitemap</h3>
				<div class="sitemap-row"> 
					<nav class="sitemap-tabs" data-spy="affix" data-offset-top="400"> 
						<div  id="myNavbar">
							<ul> 
								<li><a href="#w3sec1"><i class="fa fa-mobile"></i> Electronics</a></li>
								<li><a href="#w3sec2"><i class="fa fa-slideshare"></i>Fashion Store</a></li>
								<li><a href="#w3sec3"><i class="fa fa-child"></i> Kids Fashion & Toys</a></li>
								<li><a href="#w3sec4"><i class="fa fa-home"></i> Home & Furniture</a></li>
								<li><a href="#w3sec5"><i class="fa fa-futbol-o"></i>Sports & Fitness</a></li> 
								<li><a href="#w3sec6"><i class="fa fa-shopping-basket"></i> Grocery Store</a></li> 
								<li><a href="#w3sec7"><i class="fa fa-gift"></i> Photo, Gifts & Office</a></li> 
								<li><a href="#w3sec8"><i class="fa fa-medkit"></i> Health & Beauty</a></li> 
								<li><a href="#w3sec9"><i class="fa fa-car"></i> Automotive</a></li> 
								<li><a href="#w3sec10"><i class="fa fa-book"></i> Books, Music & Movies</a></li> 
							</ul> 
						</div>
					</nav>	
					<div id="w3sec1" class="container-fluid sitemap-text">
						<h3 class="w3sitemap-title"><i class="fa fa-mobile"></i> Electronics</h3>  
						<div class="col-md-3 sitemap-text-grids"> 
							<h5 class="sitemap-text-title"><a href="products.html">MOBILE PHONES</a></h5> 
							<ul>  
								<li><a href="products.html">Phones</a></li>
								<li><a href="products.html">Android</a></li>
								<li><a href="products.html">Windows</a></li>
								<li><a href="products.html">Black berry</a></li> 
								<li><a href="products.html">IPhones</a> </li>
								<li><a href="products.html">Tablets</a></li>
								<li><a href="products.html">IPad</a></li>
								<li><a href="products.html">Feature Phones</a></li> 
							</ul>  
							<h5 class="sitemap-text-title"><a href="products.html">PERSONAL CARE</a></h5> 
							<ul> 
								<li><a href="products.html">Epilator</a></li> 
								<li><a href="products.html">Hair Styler</a></li>
								<li><a href="products.html">Trimmer &amp; Shaver</a></li>
								<li><a href="products.html">Health Care</a></li> 
								<li><a href="products.html">cables</a></li>
							</ul> 
						</div>	
						<div class="col-md-3 sitemap-text-grids"> 
							<h5 class="sitemap-text-title"><a href="products.html">LARGE APPLIANCES</a></h5>
							<ul> 
								<li><a href="products.html">Refrigerators</a></li> 
								<li><a href="products.html">Washing Machine</a></li>
								<li><a href="products.html">Office Technology</a></li>
								<li><a href="products.html">Air conditioner</a></li>
								<li><a href="products.html">Home Automation</a></li>
							</ul>  
							<h5 class="sitemap-text-title"><a href="products.html">SMALL DEVICES</a></h5>
							<ul>  
								<li><a href="products.html">Router &amp; Modem</a></li> 
								<li><a href="products.html">Cloud Storage</a></li>
								<li><a href="products.html">Hard Disk</a></li> 
								<li><a href="products.html">Pen Drive</a></li>
								<li><a href="products.html">Memory card</a></li> 
								<li><a href="products.html">Security Devices</a></li>  
								<li><a href="products.html">Office Supplies</a></li> 
								<li><a href="products.html">Auto Electronics</a></li>  
							</ul> 
						</div>	
						<div class="col-md-3 sitemap-text-grids"> 
							<h5 class="sitemap-text-title"><a href="products.html">ENTERTAINMENT</a></h5> 
							<ul>   
								<li><a href="products.html">Tv &amp; Accessories</a></li>
								<li><a href="products.html">Digital Camera</a></li>
								<li><a href="products.html">Gaming</a></li>
								<li><a href="products.html">Home Audio &amp; Theater</a></li>
								<li><a href="products.html">Computer</a></li> 
								<li><a href="products.html">Laptop </a></li>
								<li><a href="products.html">Gaming PC</a></li>
								<li><a href="products.html">Monitors</a></li>
								<li><a href="products.html">Networking</a></li>
								<li><a href="products.html">Printers &amp; Supplies</a></li>
								<li><a href="products.html">Accessories</a></li> 
							</ul>	 
						</div>	
						<div class="col-md-3 sitemap-text-grids">	
							<h5 class="sitemap-text-title"><a href="products.html">HOME APPLIANCES</a></h5> 
							<ul>   
								<li><a href="products.html">Rice Cookers</a></li>
								<li><a href="products.html">Mixer Juicer</a></li>
								<li><a href="products.html">Grinder</a></li>
								<li><a href="products.html">Blenders &amp; Choppers</a></li>
								<li><a href="products.html">Microwave Oven</a></li>
								<li><a href="products.html">Food Processors</a></li> 
								<li><a href="products.html">Purifiers</a></li>
								<li><a href="products.html">Geysers</a></li>
								<li><a href="products.html">Gas Stove</a></li>
								<li><a href="products.html">Vacuum Cleaner</a></li>
								<li><a href="products.html">Sewing Machine</a></li> 
								<li><a href="products.html">Heaters &amp; Fans</a></li>
							</ul> 
						</div>	
						<div class="clearfix"> </div>
					</div>
					<div id="w3sec2" class="container-fluid sitemap-text">
						<h3 class="w3sitemap-title"><i class="fa fa-slideshare"></i> Fashion Store</h3>  
						<div class="col-md-3 sitemap-text-grids">  
							<h5 class="sitemap-text-title"><a href="products1.html">GIRLS' CLOTHING</a></h5>   
							<ul>  
								<li><a href="products1.html">Ethnic wear </a></li>
								<li><a href="products1.html">Maternity wear</a></li>
								<li><a href="products1.html">inner & nightwear </a></li>
								<li><a href="products1.html">casual wear </a></li>
								<li><a href="products1.html">formal wear</a></li>
								<li><a href="products1.html">Sports wear</a></li>
							</ul>
							<h5 class="sitemap-text-title"><a href="products1.html">BOYS' CLOTHING</a></h5>  
							<ul>  
								<li><a href="products1.html">Jeans</a></li>
								<li><a href="products1.html">Ethnic wear </a></li>
								<li><a href="products1.html">Casual wear</a></li>
								<li><a href="products1.html">Night wear</a></li> 
								<li><a href="products1.html">T-Shirts</a></li> 
							</ul>
						</div> 	
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products1.html">JACKETS</a></h5> 
							<ul> 
								<li><a href="products1.html">Blazers</a></li>
								<li><a href="products1.html">Bomber jackets</a></li>
								<li><a href="products1.html">Denim Jackets</a></li>
								<li><a href="products1.html">Duffle Coats</a></li>
								<li><a href="products1.html">Leather Jackets</a></li>
								<li><a href="products1.html">Parkas</a></li>
							</ul> 
							<h5 class="sitemap-text-title"><a href="products1.html">ACCESSORIES</a></h5> 
							<ul> 
								<li><a href="products1.html">Watches </a></li>
								<li><a href="products1.html">Eyewear </a></li>
								<li><a href="products1.html">Jewellery </a></li>
							</ul>
						</div> 
						<div class="col-md-3 sitemap-text-grids"> 
							<h5 class="sitemap-text-title"><a href="products1.html">Footwear </a></h5> 
							<ul> 		 
								<li><a href="products1.html">Ethnic</a></li>  
								<li><a href="products1.html">Casual wear</a></li>
								<li><a href="products1.html">Sports Shoes</a></li>
								<li><a href="products1.html">Boots</a></li>
								<li><a href="products1.html">Running</a></li> 
								<li><a href="products1.html">Personal Grooming</a></li>
								<li><a href="products1.html">Handbags</a></li>
							</ul>
						</div> 
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products1.html">BEAUTY</a></h5> 
							<ul>  
								<li><a href="products1.html">Perfumes & Deos</a></li>
								<li><a href="products1.html">Lipsticks & Nail Polish</a></li>
								<li><a href="products1.html">Beauty Gift Hampers</a></li> 
								<li><a href="products1.html">Personal Grooming</a></li>
								<li><a href="products1.html">Travel bags</a></li>
							</ul>
							<h5 class="sitemap-text-title"><a href="products1.html">PERSONAL CARE</a></h5>  
							<ul> 
								<li><a href="products1.html">Face Care</a></li>
								<li><a href="products1.html">Skin Care</a></li>
								<li><a href="products1.html">Hair Care</a></li> 
								<li><a href="products1.html">Bath & Spa</a></li>   
							</ul>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div id="w3sec3" class="container-fluid sitemap-text">
						<h3 class="w3sitemap-title"><i class="fa fa-child"></i> Kids Fashion & Toys</h3>
						<div class="col-md-3 sitemap-text-grids"> 
							<h5 class="sitemap-text-title"><a href="products2.html">KIDS CLOTHING</a></h5> 
							<ul>  
								<li><a href="products2.html">Ethnic wear </a></li> 
								<li><a href="products2.html">inner & Sleepwear </a></li>
								<li><a href="products2.html">Dresses & Frocks </a></li>
								<li><a href="products2.html">Winter wear</a></li>
								<li><a href="products2.html">Diaper & Accessories</a></li>
							</ul>
							<h5 class="sitemap-text-title"><a href="products2.html">KIDS FASHION</a></h5> 
							<ul>  
								<li><a href="products2.html">Footwear</a></li> 
								<li><a href="products2.html">Sunglasses </a></li>
								<li><a href="products2.html">School & Stationery</a></li>
								<li><a href="products2.html">Jewellery</a></li>
								<li><a href="products2.html">Hair bands & Clips</a></li>
							</ul>
						</div> 	
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products2.html">Baby Care</a></h5>
							<ul>   
								<li><a href="products2.html">Lotions, Oil & Powder </a></li> 
								<li><a href="products2.html">Soaps, Shampoo </a></li>
								<li><a href="products2.html">Bath Towels</a></li> 
								<li><a href="products2.html">Toddlers' Rooms</a></li>
							</ul> 
							<h5 class="sitemap-text-title"><a href="products2.html">Baby Feeding</a></h5>
							<ul>  
								<li><a href="products2.html">Baby Food </a></li>
								<li><a href="products2.html">Bottle Feeding </a></li>
								<li><a href="products2.html">Breast Feeding</a></li>   
							</ul> 
						</div> 
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products2.html">TOYS</a></h5>  
							<ul> 
								<li><a href="products2.html">Art & Crafts</a></li> 
								<li><a href="products2.html">Educational Toys </a></li>
								<li><a href="products2.html">Baby Toys</a></li> 
								<li><a href="products2.html">Outdoor Play </a></li>
								<li><a href="products2.html">Soft Toys </a></li>
								<li><a href="products2.html">Water Toys</a></li> 
							</ul> 
						</div> 
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products2.html">KID'S GAMES</a></h5>
							<ul>
								<li><a href="products2.html">Toy Tips & Trends</a></li> 
								<li><a href="products2.html">Preschool Toys</a></li>
								<li><a href="products2.html">Musical Instruments</a></li> 
								<li><a href="products2.html">Bikes & Ride-Ons</a></li>
								<li><a href="products2.html">Video Games</a></li>
								<li><a href="products2.html">PC & Digital Gaming</a></li>
							</ul>
						</div>
						<div class="clearfix"> </div> 	
					</div>
					<div id="w3sec4" class="container-fluid sitemap-text">
						<h3 class="w3sitemap-title"><i class="fa fa-home"></i> Home & Furniture</h3> 
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products3.html">Kitchen Uses</a></h5> 
							<ul>  
								<li><a href="products3.html">Dinner Sets </a></li> 
								<li><a href="products3.html">Cookware & Bakeware </a></li>
								<li><a href="products3.html">Containers & Jars </a></li>
								<li><a href="products3.html">Kitchen Tools </a></li>
								<li><a href="products3.html">Food Storage</a></li>
								<li><a href="products3.html">Casseroles</a></li>
							</ul>
							<h5 class="sitemap-text-title"><a href="products3.html">Garage Storage</a></h5>  
							<ul>  
								<li><a href="products3.html">Baskets & Bins </a></li>  
								<li><a href="products3.html">Free Standing Shelves </a></li>
								<li><a href="products3.html">Floor cleaning</a></li>
								<li><a href="products3.html">Tool Kits</a></li>
							</ul>
						</div> 	
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products3.html">Furniture</a></h5> 
							<ul>  
								<li><a href="products3.html">Bedroom </a></li> 
								<li><a href="products3.html">Dining Room </a></li>
								<li><a href="products3.html">Kids' Furniture </a></li>
								<li><a href="products3.html">Living Room</a></li>
								<li><a href="products3.html">Office</a></li>
								<li><a href="products3.html">Mattresses</a></li>
							</ul>
						</div> 
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products3.html">Home Decor </a></h5> 
							<ul>  
								<li><a href="products3.html">Lighting</a></li> 
								<li><a href="products3.html">Painting</a></li>
								<li><a href="products3.html">Curtains & Blinds</a></li>
								<li><a href="products3.html">Patio Furniture</a></li>
								<li><a href="products3.html">Wardrobes & Cabinets</a></li>
								<li><a href="products3.html">Mattresses</a></li>
							</ul> 
						</div> 
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products3.html">Gardening & Lawn </a></h5> 
							<ul>    
								<li><a href="products3.html">Gardening </a></li> 
								<li><a href="products3.html">Landscaping </a></li>
								<li><a href="products3.html">Sheds</a></li>
								<li><a href="products3.html">Outdoor Storage  </a></li>
								<li><a href="products3.html">Garden & Ideas </a></li>
								<li><a href="products3.html">Patio Tips</a></li>
							</ul>
						</div>
						<div class="clearfix"> </div> 
					</div>
					<div id="w3sec5" class="container-fluid sitemap-text">
						<h3 class="w3sitemap-title"><i class="fa fa-shopping-basket"></i> Sports & Fitness</h3>
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products4.html">Single Sports </a></h5> 
							<ul>  
								<li><a href="products4.html">Bikes </a></li> 
								<li><a href="products4.html">Fishing  </a></li>
								<li><a href="products4.html">Cycling </a></li>
								<li><a href="products4.html">Musical Instruments</a></li>
								<li><a href="products4.html">Archery </a></li>
							</ul>
							<h5 class="sitemap-text-title"><a href="products4.html">Other</a></h5>  
							<ul> 
								<li><a href="products4.html">Riding Gears & More </a></li> 
								<li><a href="products4.html">Body Massagers </a></li>
								<li><a href="products4.html">Health Monitors </a></li>
								<li><a href="products4.html">Health Drinks </a></li> 
							</ul>
						</div> 	
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products4.html">Team Sports</a></h5> 
							<ul>  
								<li><a href="products4.html">Cricket </a></li> 
								<li><a href="products4.html">Badminton </a></li>
								<li><a href="products4.html">Swimming Gear </a></li>
								<li><a href="products4.html">Sports Apparel </a></li>
								<li><a href="products4.html">Indoor games</a></li>
							</ul> 
						</div> 
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products4.html">Fitness </a></h5> 
							<ul> 
								<li><a href="products4.html">Fitness Accessories </a></li> 
								<li><a href="products4.html">Exercise Machines </a></li>
								<li><a href="products4.html">Ellipticals </a></li>
								<li><a href="products4.html">Home Gyms</a></li> 
							</ul>
						</div> 
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products4.html">Camping </a></h5> 
							<ul> 
								<li><a href="products4.html">Air Beds</a></li> 
								<li><a href="products4.html">Tents </a></li>
								<li><a href="products4.html">Gazebo's & Shelters</a></li>
								<li><a href="products4.html">Coolers </a></li>
								<li><a href="products4.html">Canopies</a></li>
								<li><a href="products4.html">Sleeping Bags</a></li> 
								<li><a href="products4.html">Shooting </a></li> 
								<li><a href="products4.html">Knives & Tools </a></li>
								<li><a href="products4.html">Optics & Binoculars </a></li>
								<li><a href="products4.html">Lights & Lanterns </a></li>
								<li><a href="products4.html">Hunting Clothing </a></li> 
							</ul>
						</div>
						<div class="clearfix"> </div>  
					</div>
					<div id="w3sec6" class="container-fluid sitemap-text">
						<h3 class="w3sitemap-title"><i class="fa fa-shopping-basket"></i> Grocery Store</h3>
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products5.html">Veggies & Fruits </a></h5> 
							<ul>  
								<li><a href="products5.html">Vegetables </a></li> 
								<li><a href="products5.html">Fruits </a></li>
								<li><a href="products5.html">Dry Fruits</a></li> 
								<li><a href="products5.html">Snacks & Cookies </a></li>
								<li><a href="products5.html">Breakfast & Cereal</a></li> 
							</ul>
							<h5 class="sitemap-text-title"><a href="products5.html">Food Shops </a></h5> 
							<ul>  	
								<li><a href="products5.html">Fresh Food</a></li> 
								<li><a href="products5.html">Food Gifts </a></li>
								<li><a href="products5.html">Frozen Food </a></li>
								<li><a href="products5.html">Organic </a></li>
								<li><a href="products5.html">Gluten Free </a></li> 
							</ul>  	
						</div>	
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products5.html">Packet Food</a></h5> 
							<ul> 
								<li><a href="products5.html">Beverages </a></li> 
								<li><a href="products5.html">Baking </a></li>
								<li><a href="products5.html">Emergency Food </a></li>
								<li><a href="products5.html">Candy & Gum </a></li>
								<li><a href="products5.html">Meals & Pasta </a></li>
							</ul>
						</div> 
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products5.html">Shop All Pets </a></h5> 
							<ul class="is-hidden">  
								<li><a href="products5.html">Dogs </a></li>  
								<li><a href="products5.html">Fish </a></li>												
								<li><a href="products5.html">Cats</a></li>
								<li><a href="products5.html">Birds </a></li>
								<li><a href="products5.html">Pet Food </a></li>
							</ul>
						</div> 
						<div class="col-md-3 sitemap-text-grids"> 
							<h5 class="sitemap-text-title"><a href="products5.html">Household Essentials </a></h5> 
							<ul>  
								<li><a href="products5.html">Laundry Room </a></li> 
								<li><a href="products5.html">Paper & Plastic</a></li>
								<li><a href="products5.html">Pest Control </a></li>
								<li><a href="products5.html">Batteries </a></li> 
							</ul>
							<h5 class="sitemap-text-title"><a href="products5.html">Tips </a></h5>  
							<ul>  
								<li><a href="products5.html">Pets Growth</a></li> 
								<li><a href="products5.html">Recipes </a></li>
								<li><a href="products5.html">Snacks</a></li>
								<li><a href="products5.html">Nutrition</a></li> 
							</ul>
						</div>
						<div class="clearfix"> </div>  
					</div>
					<div id="w3sec7" class="container-fluid sitemap-text">
						<h3 class="w3sitemap-title"><i class="fa fa-gift"></i> Photo, Gifts &amp; Office</h3>
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products6.html">Trending Now</a></h5> 
							<ul>  
								<li><a href="products6.html">Best Priced</a></li> 
								<li><a href="products6.html">Chocolates </a></li>
								<li><a href="products6.html">Gift Cards </a></li>
								<li><a href="products6.html">Fashion & Accessories </a></li>
								<li><a href="products6.html">Decorative Plants </a></li>
							</ul>
							<h5 class="sitemap-text-title"><a href="products6.html">Office</a></h5> 
							<ul>  
								<li><a href="products6.html">Calendars</a></li> 
								<li><a href="products6.html">Mousepads</a></li>
								<li><a href="products6.html">Phone Cases</a></li>
								<li><a href="products6.html">Tablet & Laptop Cases</a></li>
								<li><a href="products6.html">Mounted Photos</a></li>
							</ul>
						</div>
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products6.html">Photos </a></h5> 
							<ul>  
								<li><a href="products6.html">Shelf animation </a></li> 
								<li><a href="products6.html">3D-rendered </a></li>
								<li><a href="products6.html">gift builder </a></li>
								<li><a href="products6.html">Frames</a></li>
								<li><a href="products6.html">Wall Decor</a></li>
							</ul>
							<h5 class="sitemap-text-title"><a href="products6.html">Combos</a></h5> 
							<ul>   
								<li><a href="products6.html">Chocolates </a></li> 
								<li><a href="products6.html">Dry Fruits</a></li>
								<li><a href="products6.html">Sweets</a></li>
								<li><a href="products6.html">Snacks</a></li>
								<li><a href="products6.html">Cakes</a></li>
							</ul>
						</div> 
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products6.html">Gifts</a></h5>
							<ul> 
								<li><a href="products6.html">Personalized Gifts </a></li> 
								<li><a href="products6.html">Flowers </a></li>
								<li><a href="products6.html">Cards & Toys</a></li>
								<li><a href="products6.html">Show pieces </a></li>
								<li><a href="products6.html">Photo Books</a></li>
							</ul>
						</div> 
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products6.html">Favourite Brands </a></h5> 
							<ul>  
								<li><a href="products6.html">Archies </a></li> 
								<li><a href="products6.html">Jewel Fuel </a></li>
								<li><a href="products6.html">Ferns N Petals </a></li>
								<li><a href="products6.html">Happily Unmarried</a></li>
								<li><a href="products6.html">Chumbak</a></li>
							</ul>
						</div>
						<div class="clearfix"> </div> 
					</div>
					<div id="w3sec8" class="container-fluid sitemap-text">
						<h3 class="w3sitemap-title"><i class="fa fa-medkit"></i> Health & Beauty</h3>  
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products7.html">Health</a></h5> 
							<ul>  
								<li><a href="products7.html">Home Health Care </a></li> 
								<li><a href="products7.html">Sports Nutrition </a></li>
								<li><a href="products7.html">Vision </a></li> 
								<li><a href="products7.html">Diet & Nutrition </a></li>
							</ul>
							<h5 class="sitemap-text-title"><a href="products7.html">Pharmacy Center </a></h5> 
							<ul>  
								<li><a href="products7.html">Diabetes Shop </a></li> 
								<li><a href="products7.html">Medicine Cabinet </a></li>
								<li><a href="products7.html">Vitamin Selector</a></li>
								<li><a href="products7.html">Pharmacy Help</a></li> 
							</ul>
						</div> 	
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products7.html">Health Tips</a></h5>
							<ul>   
								<li><a href="products7.html">Diet</a></li> 
								<li><a href="products7.html">Exercise Tips  </a></li>
								<li><a href="products7.html">Vitamin Balance</a></li>
								<li><a href="products7.html">Health Insurance</a></li>
								<li><a href="products7.html">Funeral</a></li>
							</ul>
						</div> 
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products7.html">Beauty </a></h5> 
							<ul> 
								<li><a href="products7.html">Massage & Spa </a></li> 
								<li><a href="products7.html">Skin Care </a></li>
								<li><a href="products7.html">Fragrances </a></li>
								<li><a href="products7.html">Makeup </a></li>
								<li><a href="products7.html">Beauty Tips</a></li>
							</ul>
						</div> 
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products7.html">Pharmacy </a></h5> 
							<ul> 
								<li><a href="products7.html">Home Delivery </a></li> 
								<li><a href="products7.html">History & Reports </a></li>
								<li><a href="products7.html">Transfer Prescriptions </a></li>
								<li><a href="products7.html">Health CheckUp</a></li>
								<li><a href="products7.html">Mobile App</a></li>
							</ul>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div id="w3sec9" class="container-fluid sitemap-text">
						<h3 class="w3sitemap-title"><i class="fa fa-car"></i> Automotive</h3>   
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products8.html">All Motors</a></h5> 
							<ul>   
								<li><a href="products8.html">Bikes </a></li> 
								<li><a href="products8.html">Yachts </a></li>
								<li><a href="products8.html">Scooters </a></li>
								<li><a href="products8.html">Autos</a></li>
								<li><a href="products8.html">Bus</a></li>
							</ul>
							<h5 class="sitemap-text-title"><a href="products8.html">Exterior Accessories </a></h5>  
							<ul> 
								<li><a href="products8.html">Wheel covers </a></li> 
								<li><a href="products8.html">Car Lighting </a></li>
								<li><a href="products8.html">Polish & Waxes</a></li>
								<li><a href="products8.html">Cargo Management</a></li>
								<li><a href="products8.html">Car Decoration </a></li>
							</ul>
						</div> 	
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products8.html">Accessories </a></h5> 
							<ul>   
								<li><a href="products8.html">Vehicle Electronics</a></li> 
								<li><a href="products8.html">Stereos & Monitors</a></li>
								<li><a href="products8.html">Bluetooth Devices</a></li>
								<li><a href="products8.html">GPS Navigation</a></li>
								<li><a href="products8.html">Speakers & Tweeters</a></li>
							</ul>
							<h5 class="sitemap-text-title"><a href="products8.html">Car Care</a></h5>  
							<ul>  
								<li><a href="products8.html">Auto Tips & Advice </a></li> 
								<li><a href="products8.html">Car Washes & Cleaners </a></li>
								<li><a href="products8.html">Car Wax & Polish</a></li>
								<li><a href="products8.html">Cleaning Tools</a></li>
								<li><a href="products8.html">Detailing Kits </a></li>
							</ul>
						</div> 
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products8.html">Safety & Security</a></h5> 
							<ul>  
								<li><a href="products8.html">Anti-Theft Devices </a></li> 
								<li><a href="products8.html">Helmets</a></li>
								<li><a href="products8.html">Sensors</a></li>
								<li><a href="products8.html">Auto Repair Tools </a></li>
								<li><a href="products8.html">Antifreeze & Coolants </a></li>
							</ul>
						</div> 
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products8.html">Car Interiors</a></h5> 
							<ul>   
								<li><a href="products8.html">Stereos </a></li> 
								<li><a href="products8.html">Floor Mats </a></li>
								<li><a href="products8.html">Seat Covers</a></li>
								<li><a href="products8.html">Chargers </a></li>
								<li><a href="products8.html">Audio Finder </a></li>
							</ul>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div id="w3sec10" class="container-fluid sitemap-text">
						<h3 class="w3sitemap-title"><i class="fa fa-book"></i> Books, Music & Movies</h3>  
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products9.html">Books</a></h5> 
							<ul>    
								<li><a href="products9.html">Academic Text </a></li>
								<li><a href="products9.html">Romance Books </a></li>
								<li><a href="products9.html">Journals </a></li>
								<li><a href="products9.html">Children's & Teen Books </a></li> 
							</ul>
							<h5 class="sitemap-text-title"><a href="products9.html">Exam books </a></h5>
							<ul> 
								<li><a href="products9.html">CAT/MAT/XAT</a></li>
								<li><a href="products9.html">Civil Services</a></li>
								<li><a href="products9.html">AFCAT</a></li>
								<li><a href="products9.html">New Releases</a></li>
							</ul> 
						</div> 	
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products9.html">Music</a></h5> 
							<ul> 
								<li><a href="products9.html">New Releases </a></li> 
								<li><a href="products9.html">Country Music </a></li>
								<li><a href="products9.html">Musical Instruments </a></li>
								<li><a href="products9.html">Collections</a></li>
								<li><a href="products9.html">Boxed Sets </a></li> 
								<li><a href="products9.html">Pop </a></li>  
								<li><a href="products9.html">Album Songs</a></li> 
								<li><a href="products9.html">Music DVDs </a></li> 
							</ul>
						</div> 
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products9.html">Movies</a></h5> 
							<ul>  
								<li><a href="products9.html">New Releases </a></li> 
								<li><a href="products9.html">Children & Family </a></li>
								<li><a href="products9.html">Action</a></li>
								<li><a href="products9.html">Classic Movies </a></li>
								<li><a href="products9.html">Bollywood Movies </a></li>
								<li><a href="products9.html">Hollywood Movies </a></li>   
								<li><a href="products9.html">Animated</a></li>
								<li><a href="products9.html">Adventure</a></li>
							</ul>
						</div> 
						<div class="col-md-3 sitemap-text-grids">
							<h5 class="sitemap-text-title"><a href="products9.html">TV Shows</a></h5>  
							<ul>   
								<li><a href="products9.html">Serials</a></li> 
								<li><a href="products9.html">Best Programs</a></li>
								<li><a href="products9.html">Celebrations</a></li>
								<li><a href="products9.html">Top Shows</a></li> 
							</ul>
						</div>
						<div class="clearfix"> </div>
					</div>  
				</div>
				<script>
				$(document).ready(function(){
				  // Add scrollspy to <body>
				  $('body').scrollspy({target: ".sitemap-tabs", offset: 50});
	
				  // Add smooth scrolling on all links inside the navbar
				  $("#myNavbar a").on('click', function(event) {
					// Make sure this.hash has a value before overriding default behaviour
					if (this.hash !== "") {
					  // Prevent default anchor click behaviour
					  event.preventDefault();
	
					  // Store hash
					  var hash = this.hash;
	
					  // Using jQuery's animate() method to add smooth page scroll
					  // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
					  $('html, body').animate({
						scrollTop: $(hash).offset().top
					  }, 800, function(){
				   
						// Add hash (#) to URL when done scrolling (default click behaviour)
						window.location.hash = hash;
					  });
					}  // End if
				  });
				});
				</script> 
				<div class="sitemap-row2  sitemap-text"> 
					<h3 class="w3sitemap-title"><i class="fa fa-gears"></i>Smart Bazaar Services</h3>  
					<div class="col-md-4 sitemap-text-grids">
						<ul>  
							<li><a href="marketplace.html">Marketplace</a></li> 
							<li><a href="values.html">Core Values</a></li>
							<li><a href="privacy.html">Privacy Policy</a></li>  
						</ul>
					</div>
					<div class="col-md-4 sitemap-text-grids">
						<ul>  
							<li><a href="about.html">About Us</a></li> 
							<li><a href="contact.html">Contact Us</a></li>  
							<li><a href="login.html">Login</a></li>  
						</ul>
					</div>
					<div class="col-md-4 sitemap-text-grids">
						<ul>  
							<li><a href="signup.html">Sign Up</a></li>  
							<li><a href="login.html">Order Status</a></li> 
							<li><a href="faq.html">FAQ</a></li>  
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
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
		<script src="<%=request.getContextPath()%>/static/js/jquery.menu-aim.js"> </script>
		<script src="<%=request.getContextPath()%>/static/js/main.js"></script>
	    <script src="<%=request.getContextPath()%>/static/js/bootstrap.js"></script>
	</body>
</html>