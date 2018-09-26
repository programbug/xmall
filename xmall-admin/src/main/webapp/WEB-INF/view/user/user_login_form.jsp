<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/style.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/css/body.css"/> 
		<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/jquery-3.3.1.min.js"></script>
	</head>
	<body>
		<div class="container">
			<section id="content">
				<form action="/user/userLogin" method="post">
					<h1>Xamll管理员登录</h1>
					<div>
						<input type="text" name="username" placeholder="账号" required="required" id="username" />
					</div>
					<div>
						<input type="password" name="password" placeholder="密码" required="required" id="password" />
					</div>
				 	<div class="">
						<span class="help-block u-errormessage" id="js-server-helpinfo">&nbsp;</span>			
					</div> 
					<div>
					<!-- <input type="submit" value="Log in" /> -->
						<input type="submit" value="登录" class="btn btn-primary" id="js-btn-login"/>
						<!-- <a href="#">忘记密码?</a> -->
					<!-- <a href="#">Register</a> -->
					</div>
				</form><!-- form -->
			</section><!-- content -->
		</div>
	</body>
</html>