<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工查询</title>
    <jsp:include page="base/commonmeta.jsp"/>
    <jsp:include page="base/commoncss.jsp"/>
    <link href="${pageContext.request.contextPath}/assets/pages/css/bootstrap-select.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/jquery/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/js/bootstrap-select.js"></script>
</head>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
<div class="page-wrapper">
    <jsp:include page="base/header.jsp"/>
</div>
<div class="clearfix"></div>

<!-- BEGIN CONTAINER -->
<div class="page-container">
    <!-- BEGIN SIDEBAR -->
    <div class="page-sidebar-wrapper">
        <jsp:include page="base/sidebar.jsp"/>
    </div>
    <div class="page-content-wrapper">

        <div class="page-content">
            <div class="page-bar">
                <ul class="page-breadcrumb">
                    <li><a>员工管理</a> <i class="fa fa-circle"></i></li>
                    <li><span>员工查询</span></li>
                </ul>
            </div>
            <div class="row margin-top-15">
                <form id="queryForm" action="" method="post">
                    <label class="col-sm-1 control-label" for="dept-combobox">所属部门:</label>
                    <div class="col-sm-2">
                        <select id="dept-combobox" class="form-control select2">
                            <option value="0">选择部门</option>
                        </select>
                    </div>
                    <label class="col-sm-1 control-label" for="job-combobox">职位:</label>
                    <div class="col-sm-2">
                        <select id="job-combobox" class="form-control select2">
                            <option value="0">请选择职位</option>
                        </select>
                    </div>
                   <label class="col-sm-1 control-label" for="keyword">姓名:</label>
                    <div class="col-xs-2">
                        <input type="text" id="keyword" name="keyword" class="form-control input-sm"
                               placeholder="">
                    </div>
                    <button type="button" class="btn btn-primary btn-sm" id="btn-query">
                        <i class="fa fa-search">查询</i>
                    </button>
                </form>
            </div>
            <table id="table-employee" class="table table-striped table-bordered table-hover datatable margin-top-15"
                   cellspacing="0" width="100%">
                <thead>
                <tr>
                    <th><input type="checkbox" name="cb-check-all" id="checkAll"></th>
                    <th>ID</th>
                    <th>姓名</th>
                    <th>身份证号码</th>
                    <th>性别</th>
                    <th>手机号码</th>
                    <th>邮箱</th>
                    <th>联系地址</th>
                    <th>学历</th>
                    <th>部门</th>
                    <th>职位</th>
                    <th>建档日期</th>
                    <th>操作</th>
                </tr>
                </thead>
            </table>
        </div>
    </div>
    <!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<jsp:include page="base/footer.jsp"/>
<jsp:include page="base/commonjs.jsp"/>

<script src="${pageContext.request.contextPath}/assets/pages/js/employee.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/global/scripts/datatable.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/pages/js/sidebar.js" type="text/javascript"></script>

<script>
    $(document).ready(function () {
        init_sidebar(3, 0);
        init_select();
        table_employee();
    });
</script>
</body>
</html>