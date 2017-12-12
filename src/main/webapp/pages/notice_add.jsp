<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="page-content">
    <div class="page-bar">
        <ul class="page-breadcrumb">
            <li><a>公告管理</a> <i class="fa fa-circle"></i></li>
            <li><span>添加公告</span></li>
        </ul>
    </div>
    <div class="row margin-top-20">
        <label class="col-sm-1 control-label" for="title">标题:</label>
        <div class="col-sm-2">
            <input class="form-control input-sm" id="title" type="text" name="title"/>
        </div>
        <label class="col-sm-1 control-label" for="content">内容:</label>
        <div class="col-sm-4">
            <input class="form-control input-sm" id="content" type="text" name="content"/>
        </div>
    </div>

    <div class="raw margin-top-20">
        <div class="col-sm-offset-1">
            <button type="submit" class="btn btn-default" id="btn_submit">添加</button>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/assets/pages/js/notice.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        $('#btn_submit').click(function () {
            addNotice();
        });
    });
</script>