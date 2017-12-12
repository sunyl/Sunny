<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<div class="page-content">

    <div class="page-bar">
        <ul class="page-breadcrumb">
            <li><a href="">员工管理</a> <i class="fa fa-circle"></i>
            </li>
            <li><span>添加员工</span></li>
        </ul>

    </div>
    <!-- END PAGE BAR -->
    <!-- BEGIN PAGE TITLE-->

    <div class=" row margin-top-20">
        <label class="col-sm-1 control-label" for="name">姓名:</label>
        <div class="col-sm-4">
            <input class="form-control input-sm" id="name" type="text" name="name"/>
        </div>
        <label class="col-sm-2 control-label" for="cardId">身份证号码:</label>
        <div class="col-sm-4">
            <input class="form-control input-sm" id="cardId" type="text" name="cardId"/>
        </div>
    </div>
    <div class="row margin-top-20">
        <label class="col-sm-1 control-label" for="sex-combobox">性别:</label>
        <div class="col-sm-4">
            <select id="sex-combobox" class="selectpicker">
                <option value="-1">请选择性别</option>
                <option value="0">男</option>
                <option value="1">女</option>
            </select>
        </div>
        <label class="col-sm-2 control-label" for="job-combobox">职位:</label>
        <div class="col-sm-4">
            <select id="job-combobox" class="form-control select2">
                <option value="0">请选择职位</option>
            </select>
        </div>
    </div>
    <div class=" row margin-top-20">
        <label class="col-sm-1 control-label" for="education">学历:</label>
        <div class="col-sm-4">
            <input class="form-control input-sm" id="education" type="text" name="education"/>
        </div>
        <label class="col-sm-2 control-label" for="email">邮箱:</label>
        <div class="col-sm-4">
            <input class="form-control input-sm" id="email" type="text" name="email"/>
        </div>
    </div>
    <div class=" row margin-top-20">
        <label class="col-sm-1 control-label" for="phone">手机:</label>
        <div class="col-sm-4">
            <input class="form-control input-sm" id="phone" type="number" name="phone"/>
        </div>
        <label class="col-sm-2 control-label" for="tel">电话:</label>
        <div class="col-sm-4">
            <input class="form-control input-sm" id="tel" type="number" name="tel"/>
        </div>
    </div>
    <div class=" row margin-top-20">
        <label class="col-sm-1 control-label" for="party">政治面貌:</label>
        <div class="col-sm-4">
            <input class="form-control input-sm" id="party" type="text" name="party"/>
        </div>
        <label class="col-sm-2 control-label" for="qqNum">QQ号码:</label>
        <div class="col-sm-4">
            <input class="form-control input-sm" id="qqNum" type="text" name="qqNum"/>
        </div>
    </div>
    <div class=" row margin-top-20">
        <label class="col-sm-1 control-label" for="address">联系地址:</label>
        <div class="col-sm-4">
            <input class="form-control input-sm" id="address" type="text" name="address"/>
        </div>
        <label class="col-sm-2 control-label" for="postCode">邮政编码:</label>
        <div class="col-sm-4">
            <input class="form-control input-sm" id="postCode" type="text" name="postCode"/>
        </div>
    </div>
    <div class=" row margin-top-20">
        <label class="col-sm-1 control-label" for="birthday">出生日期:</label>
        <div class="col-sm-4">
            <input class="form-control input-sm" id="birthday" type="text" name="birthday"/>
        </div>
        <label class="col-sm-2 control-label" for="race">民族:</label>
        <div class="col-sm-4">
            <input class="form-control input-sm" id="race" type="text" name="race"/>
        </div>
    </div>
    <div class=" row margin-top-20">
        <label class="col-sm-1 control-label" for="speciality">所学专业:</label>
        <div class="col-sm-4">
            <input class="form-control input-sm" id="speciality" type="text" name="speciality"/>
        </div>
        <label class="col-sm-2 control-label" for="hobby">爱好:</label>
        <div class="col-sm-4">
            <input class="form-control input-sm" id="hobby" type="text" name="hobby"/>
        </div>
    </div>
    <div class=" row margin-top-20">
        <label class="col-sm-1 control-label" for="remark">备注:</label>
        <div class="col-sm-4">
            <input class="form-control input-sm" id="remark" type="text" name="remark"/>
        </div>
        <label class="col-sm-2 control-label" for="dept-combobox">所属部门:</label>
        <div class="col-sm-4">
            <select id="dept-combobox" class="form-control select2">
                <option value="0">选择部门</option>
            </select>
        </div>
    </div>

    <div class="raw margin-top-20">
        <div class="col-sm-offset-1">
            <button type="button" class="btn btn-primary" id="btn_submit" data-loading-text="提交中...">添加</button>
            <button type="button" class="btn btn-primary" id="btn_cancel">取消</button>
        </div>
    </div>

</div>

<link href="${pageContext.request.contextPath}/assets/pages/css/bootstrap-select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/assets/pages/js/employee.js" type="text/javascript"></script>

<script>
    $(document).ready(function () {
        init_select();
        $('#btn_submit').click(function () {
            add_employee();
        });
        $('#btn_cancel').click(function () {
            clear();
        });
    });
</script>
