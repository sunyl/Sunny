<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="page-content">
    <div class="page-bar">
        <ul class="page-breadcrumb">
            <li><a>个人中心</a> <i class="fa fa-circle"></i></li>
            <li><span>修改个人信息</span></li>
        </ul>
    </div>
    <div class="raw margin-top-20">
        <label class="col-sm-1 control-label" for="user-name">用户名:</label>
        <div class="col-sm-2">
            <input class="form-control input-sm" id="user-name" type="text" name="title"/>
        </div>
        <label class="col-sm-1 control-label" for="login-name">登录名:</label>
        <div class="col-sm-2">
            <input class="form-control input-sm" id="login-name" type="text" name="title"/>
        </div>
    </div>
    <div class="raw margin-top-20">
        <label class="col-sm-1 control-label" for="password">密码:</label>
        <div class="col-sm-2">
            <input class="form-control input-sm" id="password" type="text" name="password"/>
        </div>
    </div>
    <div class="raw margin-top-20">
        <div class="col-sm-offset-1">
            <button type="submit" class="btn btn-default" id="btn_submit">确认</button>
        </div>
    </div>
</div>