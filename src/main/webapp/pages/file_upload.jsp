<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
<script src="${pageContext.request.contextPath}/assets/pages/js/fileupload.js" type="text/javascript"></script>
