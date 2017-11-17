<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加部门</title>
<jsp:include page="base/commonmeta.jsp" />
<jsp:include page="base/commoncss.jsp" />

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/jquery/jquery-3.2.1.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('#btn_submit').click(function() {
			if ($('#name').val() == "") {
				alert("部门名称不能为空");
				return;

			}			
			addDept();
		});

	})

	function addDept() {
		var str = {
			"name" : $('#name').val(),
			"remark" : $('#remark').val()		
		};
		$.ajax({
			type : "POST",
			url : "/sunny/dept/deptAddAction",
			data : JSON.stringify(str),
			dataType : 'json',
			contentType : "application/json;charset=utf-8",
			success : function(data) {
				alert("添加成功！");
				$('#name').val("");
				$('#remark').val("");
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
			
			<div class="page-content">
				<div class="page-bar">				
					<ul class="page-breadcrumb">
					<li><a>职位管理</a> <i class="fa fa-circle"></i></li>
						<li><span>添加部门</span></li>
					</ul>
				</div>
				<div class="row margin-top-20">
					<label class="col-sm-1 control-label" for="name">部门名称:</label>
					<div class="col-sm-2">
						<input class="form-control input-sm" id="name" type="text" name="name"  />
					</div>
					<label class="col-sm-1 control-label" for="remark">详细描述:</label>
					<div class="col-sm-4">
						<input class="form-control input-sm" id="remark" type="text" name="remark" />
					</div>
				</div>
				
				<div class="raw margin-top-20">
					<div class="col-sm-offset-1">
						<button type="submit" class="btn btn-default" id="btn_submit">添加</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END CONTAINER -->
	<jsp:include page="base/footer.jsp" />	
	<jsp:include page="base/commonjs.jsp" />
	<script src="${pageContext.request.contextPath}/assets/pages/js/sidebar.js" type="text/javascript"></script>	
	<script>
	$(document).ready(function() {				
		init_sidebar(1,1);
		});
	</script>
</body>
</html>