<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户</title>
<jsp:include page="base/commonmeta.jsp" />
<jsp:include page="base/commoncss.jsp" />
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/jquery/jquery-3.2.1.js"></script>
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
					<label class="col-sm-1 control-label" for="username">用户名:</label>
					<div class="col-sm-4">
						<input class="form-control input-sm" id="username" type="text"
							name="username" placeholder="用户名"/>
					</div>
					<label class="col-sm-1 control-label" for="status">状态:</label>
					<div class="col-sm-4">
						<input class="form-control input-sm" id="status" type="number" name="status" placeholder="初始状态"/>
					</div>
				</div>
				<div class="row margin-top-20">
					<label class="col-sm-1 control-label" for="loginname">登录名:</label>
					<div class="col-sm-4">
						<input class="form-control input-sm" id="loginname" type="text"
							name="loginname" placeholder="登录名" />
					</div>
					<label class="col-sm-1 control-label" for="password">密码:</label>
					<div class="col-sm-4">
						<input class="form-control input-sm" id="password" type="password"
							name="password" placeholder="登录密码"/>
					</div>
				</div>

				<div class="raw margin-top-20">
					<div class="col-sm-offset-1">
						<button type="submit" class="btn btn-default" id="btn_submit">提 交</button>
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
	<script src="${pageContext.request.contextPath}/assets/pages/js/table_user_list.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/assets/pages/js/sidebar.js" type="text/javascript"></script>	
	<script>
	$(document).ready(function() {				
		init_sidebar(0,1);
        $('#btn_submit').click(function() {
            addUser();
        });
		});
	</script>
</body>

</html>