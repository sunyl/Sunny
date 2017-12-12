<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>添加公告</title>
    <jsp:include page="base/commonmeta.jsp"/>
    <jsp:include page="base/commoncss.jsp"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/jquery/jquery-3.2.1.min.js"></script>
</head>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
<div class="page-wrapper">
    <jsp:include page="base/header.jsp"/>
</div>
<div class="clearfix"></div>

<div class="page-container">
    <div class="page-sidebar-wrapper">
        <jsp:include page="base/sidebar.jsp"/>
    </div>
    <div class="page-content-wrapper">
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

    </div>
</div>

<jsp:include page="base/footer.jsp"/>
<jsp:include page="base/commonjs.jsp"/>
<script src="${pageContext.request.contextPath}/assets/pages/js/notice.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/pages/js/sidebar.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        init_sidebar(4, 1);
        $('#btn_submit').click(function () {
            addNotice();
        });
    });
</script>
</body>
</html>