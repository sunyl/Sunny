<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>上传文件</title>
    <jsp:include page="base/commonmeta.jsp"/>
    <jsp:include page="base/commoncss.jsp"/>
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
    <!-- END SIDEBAR -->
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <div class="page-content">
            <div class="modal-body">
                <div class="form-group" id="passwordDiv">
                    <label>选择用户数据文件</label>
                    <input class="form-control" type="file" id="file">
                </div>
                <div class="progress progress-striped active">
                    <div id="progressBar" class="progress-bar progress-bar-info" role="progressbar"
                         aria-valuenow="0" aria-valuemax="100" aria-valuemin="0" style="width:0%;">0%
                    </div>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-default" id="btnUpload" onclick="doUpload()">添加</button>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- END CONTAINER -->
<jsp:include page="base/footer.jsp"/>
<jsp:include page="base/commonjs.jsp"/>
<script src="${pageContext.request.contextPath}/assets/pages/jquery/jquery-3.2.1.min.js"
        type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/pages/js/fileupload.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/pages/js/sidebar.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        //init_sidebar(2, 1);
    });
</script>
</body>
</html>