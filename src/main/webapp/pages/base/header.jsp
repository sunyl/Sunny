/<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<div class="page-header navbar navbar-fixed-top">
    <div class="page-header-inner" >
        <div class="page-logo">
            <a href="###" onclick="showAtRight('/sunny/home')">
                <img src="${pageContext.request.contextPath}/assets/layouts/layout/img/logo.png" alt="logo" class="logo-default"/>
            </a>
            <div class="menu-toggler sidebar-toggler margin-top-30">
                <span></span>
            </div>
        </div>
        <div class="top-menu">
            <ul class="nav navbar-nav pull-right">

                <li class="dropdown dropdown-user">
                    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"  data-hover="dropdown" data-close-others="true">
                        <img alt="" class="img-circle" src="${pageContext.request.contextPath}/assets/layouts/layout/img/avatar3_small.jpg"/>
                        <span class="username username-hide-on-mobile"> Sunny </span> <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-default">
                        <li>
                            <a href="###" onclick="showAtRight('/sunny/redirect_modif_user_info')"> <i class="icon-lock"></i>修改个人信息</a>
                        </li>
                        <li>
                            <a href="/sunny/user/logout"> <i class="icon-key"></i> 注销</a>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>
    </div>
</div>