<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加员工</title>
<jsp:include page="base/commonmeta.jsp" />
<jsp:include page="base/commoncss.jsp" />
<link href="${pageContext.request.contextPath}/assets/pages/css/bootstrap-select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/js/bootstrap-select.js"></script>
<script>
$(function() {
    $("#btn_submit").click(function(){
        $(this).button('loading').delay(1000).queue(function() {
        $(this).button('reset');
        $(this).dequeue(); 
        });
    });
});  
</script>

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
		<!-- END SIDEBAR -->
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<!-- BEGIN CONTENT BODY -->
			<div class="page-content">

				<div class="page-bar">
					<ul class="page-breadcrumb">
						<li><a href="">员工管理</a> <i class="fa fa-circle"></i>
						</li>
						<li><span>添加员工</span></li>
					</ul>

				</div>
				<!-- END PAGE BAR -->
				<!-- BEGIN PAGE TITLE-->

				<div class=" row margin-top-20">
					<label class="col-sm-1 control-label" for="name">姓名:</label>
					<div class="col-sm-4">
						<input class="form-control input-sm" id="name" type="text" name="name" />
					</div>
					<label class="col-sm-2 control-label" for="cardId">身份证号码:</label>
					<div class="col-sm-4">
						<input class="form-control input-sm" id="cardId" type="text" name="cardId" />
					</div>
				</div>
				<div class="row margin-top-20">
					<label class="col-sm-1 control-label" for="sex-combobox">性别:</label>
					<div class="col-sm-4">
						<select id="sex-combobox" class="selectpicker">
						  <option>请选择性别</option>
						  <option value="0">男</option>
						  <option value="1">女</option>
						</select>
					</div>
					<label class="col-sm-2 control-label" for="sex-combobox">职位:</label>
					<div class="col-sm-4">
						<select id="job-combobox" class="selectpicker">
					  		<option>请选择职位</option>
					  		<option value="0">Java工程师</option>
					  		<option value="1">大数据工程师</option>
						</select>
					</div>
				</div>
				<div class=" row margin-top-20">
					<label class="col-sm-1 control-label" for="education">学历:</label>
					<div class="col-sm-4">
						<input class="form-control input-sm" id="education" type="text" name="education" />
					</div>
					<label class="col-sm-2 control-label" for="email">邮箱:</label>
					<div class="col-sm-4">
						<input class="form-control input-sm" id="email" type="text" name="email" />
					</div>
				</div>
				<div class=" row margin-top-20">
					<label class="col-sm-1 control-label" for="party">政治面貌:</label>
					<div class="col-sm-4">
						<input class="form-control input-sm" id="party" type="text" name="party" />
					</div>
					<label class="col-sm-2 control-label" for="qqNum">QQ号码:</label>
					<div class="col-sm-4">
						<input class="form-control input-sm" id="qqNum" type="text" name="qqNum" />
					</div>
				</div>
				<div class=" row margin-top-20">
					<label class="col-sm-1 control-label" for="address">联系地址:</label>
					<div class="col-sm-4">
						<input class="form-control input-sm" id="address" type="text" name="address" />
					</div>
					<label class="col-sm-2 control-label" for="postCode">邮政编码:</label>
					<div class="col-sm-4">
						<input class="form-control input-sm" id="postCode" type="text" name="postCode" />
					</div>
				</div>
				<div class=" row margin-top-20">
					<label class="col-sm-1 control-label" for="birthday">出生日期:</label>
					<div class="col-sm-4">
						<input class="form-control input-sm" id="birthday" type="text" name="birthday" />
					</div>
					<label class="col-sm-2 control-label" for="race">民族:</label>
					<div class="col-sm-4">
						<input class="form-control input-sm" id="race" type="text" name="race" />
					</div>
				</div>
				<div class=" row margin-top-20">
					<label class="col-sm-1 control-label" for="speciality">所学专业:</label>
					<div class="col-sm-4">
						<input class="form-control input-sm" id="speciality" type="text" name="speciality" />
					</div>
					<label class="col-sm-2 control-label" for="hobby">爱好:</label>
					<div class="col-sm-4">
						<input class="form-control input-sm" id="hobby" type="text" name="hobby" />
					</div>
				</div>
				<div class=" row margin-top-20">
					<label class="col-sm-1 control-label" for="remark">备注:</label>
					<div class="col-sm-4">
						<input class="form-control input-sm" id="remark" type="text" name="remark" />
					</div>
					<label class="col-sm-2 control-label" for="dept-combobox">所属部门:</label>
					<div class="col-sm-4">
						<select id="dept-combobox" class="selectpicker">
					  		<option>部门选择</option>
					  		<option value="0">市场部</option>
					  		<option value="1">研发部</option>
					  		<option value="2">测试部</option>
						</select>
					</div>
				</div>
				
				<div class="raw margin-top-20">
					<div class="col-sm-offset-1">
						<button type="button" class="btn btn-primary" id="btn_submit" data-loading-text="提交中...">添加</button>
						<button type="button" class="btn btn-primary" id="btn_cancel" >取消</button>
					</div>
				</div>

				<!-- END CONTENT -->
			</div>
		</div>
		<!-- END CONTAINER -->
	</div>

	<jsp:include page="base/footer.jsp" />
	<jsp:include page="base/commonjs.jsp" />
	<script src="${pageContext.request.contextPath}/assets/pages/js/sidebar.js" type="text/javascript"></script>	
	<script>
	$(document).ready(function() {						
		init_sidebar(3, 1);
		$('#sex-combobox').combobox();		
		});
	</script>
</body>
</html>