<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<div class="page-content">
    <div class="page-bar">
        <ul class="page-breadcrumb">
            <li><a>部门管理</a> <i class="fa fa-circle"></i></li>
            <li><span>部门查询</span></li>
        </ul>
    </div>
    <table id="table-department" class="table table-striped table-bordered table-hover datatable margin-top-15"
           cellspacing="0" width="100%">
        <thead>
        <tr>
            <th>ID</th>
            <th>部门名称</th>
            <th>详细描述</th>
            <th>操作</th>
        </tr>
        </thead>
    </table>
</div>

<script src="${pageContext.request.contextPath}/assets/pages/js/department.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/global/plugins/datatables/datatables.min.js"
        type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js"
        type="text/javascript"></script>

<script>
    $(document).ready(function () {
        table_department();
    });
</script>