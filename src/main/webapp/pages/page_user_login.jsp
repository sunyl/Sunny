<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录</title>
    <jsp:include page="base/commoncss.jsp"/>
    <link href="${pageContext.request.contextPath}/assets/pages/css/login.min.css" rel="stylesheet" type="text/css"/>
</head>

<body class="login">
<div class="logo">
    <img src="${pageContext.request.contextPath}/assets/pages/img/logo-big.png"/>
</div>
<div class="content">
    <form class="login-form" action="/sunny/user/loginCheck" method="post">
        <h3 class="form-title font-green">Sign In</h3>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Username</label>
            <input class="form-control form-control-solid placeholder-no-fix"
                   type="text" autocomplete="off" placeholder="用户名" name="name"/>
        </div>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Password</label>
            <input class="form-control form-control-solid placeholder-no-fix"
                   type="password" autocomplete="off" placeholder="密码" name="password"/>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn green btn-block uppercase">登录</button>
        </div>
    </form>

    <div class="copyright">2017 © Metronic. Admin Dashboard Template.</div>
</div>
<jsp:include page="base/commonjs.jsp"/>
</body>

</html>