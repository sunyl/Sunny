<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>首页</title>
    <jsp:include page="base/commonmeta.jsp"/>
    <jsp:include page="base/commoncss.jsp"/>
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
            <h2 id="title" class="text-center"></h2>
            <p id="content" class="lead text-center"></p>
            <p id="author" class="text-center"></p>
        </div>
    </div>
</div>
<jsp:include page="base/footer.jsp"/>
<jsp:include page="base/commonjs.jsp"/>

<script>
    window.onload = function () {
        $.ajax({
            type: "GET",
            url: "/sunny/notice/getLastNotice",
            dataType: 'json',
            success: function (data) {
                $('#title').text(data.title);
                $('#content').text(data.content);
                $('#author').text(data.createDate + "  " + data.user.userName);
            },
            error: function (data) {
            }
        });
    }
</script>
</body>
</html>