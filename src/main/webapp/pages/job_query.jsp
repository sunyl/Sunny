<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>职位查询</title>
<jsp:include page="base/commonmeta.jsp" />
<jsp:include page="base/commoncss.jsp" />
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/jquery/jquery-3.2.1.js"></script>
</head>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
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
		<div class="page-content-wrapper">
			
			<div class="page-content">
				<div class="page-bar">
					<ul class="page-breadcrumb">
						<li><a>职位管理</a> <i class="fa fa-circle"></i></li>
						<li><span>职位查询</span></li>
					</ul>
				</div>
				<div class="row margin-top-15">
					<form id="queryForm" action="" method="post">
						<div class="col-xs-2">
							<input type="text" id="keyword" name="keyword" class="form-control input-sm"
								placeholder="">
						</div>
						<button type="button" class="btn btn-primary btn-sm" id="btn-query">
						<i class="fa fa-search">查询</i>								
						</button>
					</form>
				</div>
				<table id="table-job" class="table table-striped table-bordered table-hover datatable margin-top-15" cellspacing="0" width="100%">
						<thead>
							<tr>
								<th><input type="checkbox" name="cb-check-all" id="checkAll"></th>
								<th>ID</th>
								<th>职位名称</th>
								<th>详细描述</th>
								<th>操作</th>
							</tr>
						</thead>				
				</table>
			</div>				
		</div>
		<!-- END CONTENT -->		
	</div>
	<!-- END CONTAINER -->
	<jsp:include page="base/footer.jsp" />	
	<jsp:include page="base/commonjs.jsp" />
	
	<script src="${pageContext.request.contextPath}/assets/pages/js/table_job_list.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/assets/global/scripts/datatable.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>	
	<script src="${pageContext.request.contextPath}/assets/pages/js/sidebar.js" type="text/javascript"></script>	
	
	<script>
	$(document).ready(function() {
		table_job();
		init_sidebar(2,0);
	});
	</script>
</body>
</html>