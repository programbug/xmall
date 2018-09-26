<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
	<head>
		<title>B2C后台管理界面</title>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="这是一个 index 页面">
		<meta name="keywords" content="index">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<meta name="apple-mobile-web-app-title" content="Amaze UI" />
		<meta name="viewport" 
				content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/bootstrap.min.css">
		<link rel="icon" type="image/png" href="<%=request.getContextPath()%>/static/assets/i/favicon.png">
		<link rel="apple-touch-icon-precomposed" 
				href="<%=request.getContextPath()%>/static/assets/i/app-icon72x72@2x.png">
		<link rel="stylesheet" 
				href="<%=request.getContextPath()%>/static/assets/css/amazeui.min.css"/>
		<link rel="stylesheet" 
				href="<%=request.getContextPath()%>/static/assets/css/admin.css">
		
		<script src="<%=request.getContextPath()%>/static/assets/js/jquery.min.js"></script>
		<script src="<%=request.getContextPath()%>/static/assets/js/app.js"></script>
		<script src="<%=request.getContextPath()%>/static/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			function openFrame(menuUrl) {
				//组装请求路径，发出请求
				var iframe = "<iframe height='100%' width='100%' onscroll='true' src='<%=request.getContextPath()%>"+ menuUrl +"' style='border:0px;'></iframe>";
				$("#myFrame").html(iframe);
			}
			
			
		</script>
	</head>
	<body>
		<div>
			<header class="am-topbar admin-header">
				<!-- header-left -->
				<div class="am-topbar-brand">
					<img src="<%=request.getContextPath()%>/static/assets/i/logo.png">
				</div>
				<!-- header-right -->
				<div class="am-collapse am-topbar-collapse" id="topbar-collapse">
					<ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">
						<li class="am-hide-sm-only" style="float: right;">
							<a href="javascript:;" id="admin-fullscreen">
								<span class="am-icon-arrows-alt"></span> 
								<span class="admin-fullText">开启全屏</span>
							</a>
						</li>
					</ul>
				</div>
			</header>
			
			<div class="am-cf admin-main"> 
				<div class="nav-navicon admin-main admin-sidebar">
	    			<div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;"> 
	    				欢迎系统管理员：${user.username}
	    			</div>
	    			<div class="sideMenu">
	    				<c:forEach var="menu" items="${menuList}">
	    					<h3 class="am-icon-flag">
		    					<em></em>
		    					<a href="#">
		    						<i class="icon-white icon-home"></i>
	    							${menu.menuName}
		    					</a>
	    					</h3>
	    					<ul>
	    						<c:forEach var="secondmenu" items="${menu.childMenuList}">
	    							<li class="active">
		    							<a href="javascript:openFrame('${secondmenu.menuUrl}')">
		    								<i class="icon-white icon-home"></i>
		    								${secondmenu.menuName}
		    							</a>
		    						</li>
	    						</c:forEach>
	    				    </ul>
	    			    </c:forEach>
	    			    <script type="text/javascript">
							jQuery(".sideMenu").slide({
								titCell:"h3", //鼠标触发对象
								targetCell:"ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
								effect:"slideDown", //targetCell下拉效果
								delayTime:3 , //效果时间
								triggerTime:3, //鼠标延迟触发时间（默认150）
								defaultPlay:true,//默认是否执行效果（默认true）
								returnDefault:true //鼠标从.sideMenu移走后返回默认状态（默认false）
							});
					   	</script> 
			   	  	</div>
			   	</div>
				<div id="myFrame" class="admin"></div>
			</div>
		</div>
		<h2>创建模态框（Modal）</h2>
<!-- 按钮触发模态框 -->
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
	开始演示模态框
</button>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					模态框（Modal）标题
				</h4>
			</div>
			<div class="modal-body">
				在这里添加一些文本
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary">
					提交更改
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
	</body>
</html>










