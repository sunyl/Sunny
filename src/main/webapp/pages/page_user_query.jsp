<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户查询</title>
<jsp:include page="base/commonmeta.jsp" />
<jsp:include page="base/commoncss.jsp" />
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
			<div class="page-content">
				<div class="page-bar">
					<ul class="page-breadcrumb">
						<li><a>用户管理</a> <i class="fa fa-circle"></i></li>
						<li><span>用户查询</span></li>
					</ul>
				</div>
				<div class="portlet" id="div-table-container">
					<!-- 查询、添加、批量删除、导出、刷新 -->
					<div class="row-fluid">
						<div class="pull-right">
							<div class="btn-group">
								<button type="button" class="btn btn-primary btn-sm"
									id="btn-add">
									<i class="fa fa-plus">添加</i>
									<sp:message code="sys.add" />
								</button>
								<button type="button" class="btn btn-primary btn-sm"
									id="btn-delAll">
									<i class="fa fa-remove">批量删除</i>
									<sp:message code="sys.delAll" />
								</button>
								<button type="button" class="btn btn-primary btn-sm"
									id="btn-export">
									<i class="fa fa-sign-in">导出</i>
									<sp:message code="sys.export" />
								</button>
								<button type="button" class="btn btn-primary btn-sm" id="btn-re">
									<i class="fa fa-refresh">刷新</i>
									<sp:message code="sys.refresh" />
								</button>
							</div>
						</div>
						<div class="row">
							<form id="queryForm" action="" method="post">
								<div class="col-xs-2">
									<input type="text" id="keyword" name="keyword" class="form-control input-sm"
										placeholder="">
								</div>
								<button type="button" class="btn btn-primary btn-sm"
									id="btn-query">
									<i class="fa fa-search"></i>
									<sp:message code="sys.query" />
								</button>
							</form>
						</div>
					</div>
					<table
						class="table table-striped table-bordered table-hover table-condensed"
						id="table_user" cellspacing="0" width="100%">
						<thead>
							<tr>
								<th><input type="checkbox" name="cb-check-all"></th>
								<th>ID</th>
								<th>用户名</th>
								<th>登录名</th>
								<td>密码</td>
								<th>状态</th>
								<th>日期</th>
								<th>操作</th>
							</tr>
						</thead>						
					</table>
				</div>
			</div>
		</div>

	</div>
	<!-- END CONTAINER -->
	<jsp:include page="base/footer.jsp" />
	<jsp:include page="base/quicknav.jsp" />
	<jsp:include page="base/commonjs.jsp" />
	<script src="${pageContext.request.contextPath}/assets/pages/js/table_user_list.js" type="text/javascript"></script>
	<%-- 	<script
		src="${pageContext.request.contextPath}/assets/global/scripts/datatable.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/assets/global/plugins/datatables/datatables.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/assets/pages/scripts/table-datatables-managed.min.js"
		type="text/javascript"></script> --%>
	<%-- 	<script
		src="${pageContext.request.contextPath}/assets/pages/scripts/constant.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/assets/pages/scripts/user-manage.js"
		type="text/javascript"></script> --%>
	<script type="text/javascript">
	$(document).ready(function() {    
		dengqiang(); 
	});
	</script>
</body>
</html>