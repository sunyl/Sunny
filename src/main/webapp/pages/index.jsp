<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sunny</title>
    <jsp:include page="base/commonmeta.jsp"/>
    <jsp:include page="base/commoncss.jsp"/>
    <script src="${pageContext.request.contextPath}/assets/pages/jquery/jquery-3.2.1.min.js" type="text/javascript"></script>
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
    <div id="content" class="page-content-wrapper">
    </div>
</div>
<jsp:include page="base/footer.jsp"/>
<jsp:include page="base/commonjs.jsp"/>
<script src="${pageContext.request.contextPath}/assets/pages/js/common.js" type="text/javascript"></script>

</body>
</html>