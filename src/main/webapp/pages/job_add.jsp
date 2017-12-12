<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<div class="page-content">
    <div class="page-bar">
        <ul class="page-breadcrumb">
            <li><a>职位管理</a> <i class="fa fa-circle"></i></li>
            <li><span>添加职位</span></li>
        </ul>
    </div>
    <div class="row margin-top-20">
        <label class="col-sm-1 control-label" for="name">职位名称:</label>
        <div class="col-sm-2">
            <input class="form-control input-sm" id="name" type="text" name="name"/>
        </div>
        <label class="col-sm-1 control-label" for="remark">详细描述:</label>
        <div class="col-sm-4">
            <input class="form-control input-sm" id="remark" type="text" name="remark"/>
        </div>
    </div>

    <div class="raw margin-top-20">
        <div class="col-sm-offset-1">
            <button type="submit" class="btn btn-default" id="btn_submit">添加</button>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/assets/pages/js/table_job_list.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        $('#btn_submit').click(function () {
            addJob();
        });
    });
</script>