<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div>
    <div class="page-content">
        <div class="page-bar">
            <ul class="page-breadcrumb">
                <li><a>用户管理</a> <i class="fa fa-circle"></i></li>
                <li><span>用户查询</span></li>
            </ul>
        </div>
        <div class="portlet" id="div-table-container">
            <!-- 查询、添加、批量删除、导出、刷新 -->
            <div class="row-fluid">
                <div class="pull-right">
                    <div class="btn-group">
                        <button type="button" class="btn btn-primary btn-sm" id="btn-add">
                            <i class="fa fa-plus">添加</i>
                        </button>
                        <button type="button" class="btn btn-primary btn-sm" id="btn-delAll">
                            <i class="fa fa-remove">批量删除</i>
                        </button>
                        <button type="button" class="btn btn-primary btn-sm" id="btn-export">
                            <i class="fa fa-sign-in">导出</i>
                        </button>
                        <button type="button" class="btn btn-primary btn-sm" id="btn-re">
                            <i class="fa fa-refresh">刷新</i>
                        </button>
                    </div>
                </div>
                <div class="row margin-top-15">
                    <form id="queryForm" action="" method="post">
                        <div class="col-xs-2">
                            <input type="text" id="keyword" name="keyword" class="form-control input-sm"
                                   placeholder="">
                        </div>
                        <button type="button" class="btn btn-primary btn-sm" id="btn-query">
                            <i class="fa fa-search">查询</i>
                        </button>
                    </form>
                </div>
            </div>
            <table id="table-user" class="table table-striped table-bordered table-hover datatable" cellspacing="0"
                   width="100%">
                <thead>
                <tr>
                    <th><input type="checkbox" name="cb-check-all" id="checkAll"></th>
                    <th>ID</th>
                    <th>用户名</th>
                    <th>登录名</th>
                    <td>密码</td>
                    <th>状态</th>
                    <th>日期</th>
                    <th>操作</th>
                </tr>
                </thead>
            </table>
        </div>
    </div>
    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        修改用户信息
                    </h4>
                </div>

                <div class="modal-body">
                    <table class="table">
                        <tbody>
                        <tr>
                            <label class="col-sm-2 control-label" for="userName">用户名:</label>
                            <input id="userName" name="userName" type="text" style="width: 250px" class="form-control"/>
                        </tr>

                        <tr>
                            <label class="col-sm-2 control-label" for="loginName">登录名:</label>
                            <input id="loginName" name="loginName" type="text" style="width: 250px"
                                   class="form-control"/>
                        </tr>
                        <tr>
                            <label class="col-sm-2 control-label" for="status">状态:</label>
                            <input id="status" name="status"
                                   type="text" style="width: 250px" class="form-control"/>
                        </tr>
                        <tr>
                            <label class="col-sm-2 control-label" for="status">密码:</label>
                            <input id="password" name="password"
                                   type="text" style="width: 250px" class="form-control"/>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button id="btn-submit" type="button" class="btn btn-primary">提交更改</button>
                </div>
            </div>
        </div>
    </div>
</div>
    <script src="${pageContext.request.contextPath}/assets/pages/js/table_user_list.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/global/scripts/datatable.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            table_user();
        });
    </script>