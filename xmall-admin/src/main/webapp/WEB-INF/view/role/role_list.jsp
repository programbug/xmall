<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap.min.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/font-awesome.min.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/ionicons.min.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/dataTables.bootstrap.min.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/AdminLTE.min.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/_all-skins.min.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
	
		<script src="<%=request.getContextPath() %>/static/js/jquery-3.3.1.min.js"></script>
		<script src="<%=request.getContextPath() %>/static/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/static/js/jquery.dataTables.min.js"></script>
		<script src="<%=request.getContextPath() %>/static/js/dataTables.bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/static/js/jquery.slimscroll.min.js"></script>
		<script src="<%=request.getContextPath() %>/static/js/fastclick.js"></script>
		<script src="<%=request.getContextPath() %>/static/js/adminlte.min.js"></script>
		<script type="text/javascript">
			$(function() {
				$('#roletable').DataTable({
					'paging':true,
					'lengthChange':false,
					'searching':false,
					'ordering':true,
					'info':true,
					'autoWidth':false
				});
			});
		</script>
	</head>
	<body class="hold-transition skin-blue sidebar-mini">
		<section class="content-header">
			<h1>
				后台角色
				<small>后台角色信息列表</small>
			</h1>
		</section>
		<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-body">
							<table id="roletable" class="table table-bordered table-hover">
								<thead>
									<tr>
										<th>序号</th>
										<th>角色名称</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="role" items="${page.list }" varStatus="s">
										<tr>
											<td>${(pageNum - 1) * pageSize + s.index + 1}</td>
											<td>${role.roleName}</td>
											<td>
												<a href="javascript:getAuthcModal();" 
													class="btn btn-success btn-xs"> 
													授权
												</a>
												
												<a href="#" class="btn btn-warning btn-xs">
													修改
												</a>
												
												<a href="#" class="btn btn-danger btn-xs">
													禁用
												</a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
								<tfoot>
									<tr>
										<td align="center" colspan="3">
											<ul class="pagination">
												<li><a href="#">&laquo</a></li>
												<li><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#">5</a></li>
												<li><a href="#">&laquo</a></li>
											</ul>
										</td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>
		</section>
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

















