<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户</title>
<jsp:include page="base/commonmeta.jsp" />
<jsp:include page="base/commoncss.jsp" />
<script type="text/javascript" src="../assets/pages/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="../assets/pages/jquery/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#btn_submit').click(function() {
			if ($('#username').val() == "") {
				alert("用户名不能为空");
				return;

			}
			if ($('#status').val() == "") {
				alert("状态不能为空");
				return;
			}
			if ($('#loginname').val() == "") {
				alert("登录名不能为空");
				return;
			}
			if ($('#password').val() == "") {
				alert("密码不能为空");
				return;
			}
			addUser();
		});

	})

	function addUser() {
		var str = {
			"userName" : $('#username').val(),
			"loginName" : $('#loginname').val(),
			"status" : $('#status').val(),
			"password" : $('#password').val()
		};
		$.ajax({
			type : "POST",
			url : "/sunny/user/userAddAction",
			data : JSON.stringify(str),
			dataType : 'json',
			contentType : "application/json;charset=utf-8",
			success : function(data) {
				alert("添加成功！");
			},
			error : function(data) {
				alert("添加失败！");
			}
		});
	}
</script>
</head>

<body
	class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
	<div class="page-wrapper">
		<jsp:include page="base/header.jsp" />
	</div>
	<div class="clearfix"></div>

	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar-wrapper">
			<jsp:include page="base/sidebar.jsp" />
		</div>
		<!-- END SIDEBAR -->
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<!-- BEGIN CONTENT BODY -->
			<div class="page-content">

				<div class="page-bar">
					<ul class="page-breadcrumb">
						<li><a href="">用户管理</a> <i class="fa fa-circle"></i>
						</li>
						<li><span>添加用户</span></li>
					</ul>

				</div>
				<!-- END PAGE BAR -->
				<!-- BEGIN PAGE TITLE-->

				<div class=" row margin-top-20">
					<label class="col-sm-2 control-label" for="username">用户名:</label>
					<div class="col-sm-4">
						<input class="form-control" id="username" type="text"
							name="username" />
					</div>
					<label class="col-sm-2 control-label" for="status">状态:</label>
					<div class="col-sm-4">
						<input class="form-control" id="status" type="number" name="status" />
					</div>
				</div>
				<div class="row margin-top-20">
					<label class="col-sm-2 control-label" for="loginname">登录名:</label>
					<div class="col-sm-4">
						<input class="form-control" id="loginname" type="text"
							name="loginname" />
					</div>
					<label class="col-sm-2 control-label" for="password">密码:</label>
					<div class="col-sm-4">
						<input class="form-control" id="password" type="password"
							name="password" />
					</div>
				</div>

				<div class="raw margin-top-20">
					<div class="col-sm-offset-2">
						<button type="submit" class="btn btn-default" id="btn_submit">提
							交</button>
					</div>
				</div>


				<!-- END CONTENT -->
			</div>
		</div>
		<!-- END CONTAINER -->
	</div>

	<jsp:include page="base/footer.jsp" />
	<%-- <jsp:include page="base/quicknav.jsp" /> --%>
	<jsp:include page="base/commonjs.jsp" />
</body>

</html>