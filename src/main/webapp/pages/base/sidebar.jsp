<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         isELIgnored="false" pageEncoding="UTF-8" %>

<div class="page-sidebar navbar-collapse collapse">
	<ul class="page-sidebar-menu  page-header-fixed "
		data-keep-expanded="false" data-auto-scroll="true"
		data-slide-speed="200" style="padding-top: 20px">
		<li class="sidebar-toggler-wrapper hide">
			<div class="sidebar-toggler">
				<span></span>
			</div>
		</li>
		<li class="sidebar-search-wrapper">
			<form class="sidebar-search  " action="page_general_search_3.html" method="POST">
				<a href="javascript:;" class="remove"> 
					<i class="icon-close"></i>
				</a>
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search...">
					<span class="input-group-btn"> 
					<a href="javascript:;" class="btn submit"> 
						<i class="icon-magnifier"></i>
					</a>
					</span>
				</div>
			</form>
		</li>
		<li id="user-manager" class="nav-item ">
			<a href="javascript:;"class="nav-link nav-toggle"> 
				<i class="icon-home"></i> 
				<span class="title">用户管理</span>
				<span class="arrow"></span>
			</a>
			<ul class="sub-menu">
				<li id="user-query" class="nav-item">
					<a href="/sunny/redirect_userQuery" class="nav-link"> 
						<i class="icon-bar-chart"></i> 
						<span class="title">用户查询</span>						
					</a>
				</li>
				<li id="user-add" class="nav-item ">
					<a href="/sunny/redirect_userAdd" class="nav-link "> 
						<i class="icon-bulb"></i> 
						<span class="title">添加用户</span> 						
					</a>
				</li>
			</ul>
		</li>
		<li id="dept-manager" class="nav-item">
			<a href="javascript:;" class="nav-link nav-toggle"> 
				<i class="icon-diamond"></i> 
				<span class="title">部门管理</span> 
				<span class="arrow"></span>
			</a>
			<ul class="sub-menu">
				<li id ="dept-query" class="nav-item  ">
					<a href="/sunny/redirect_departmentQuery" class="nav-link "> 
						<span class="title">部门查询</span>
					</a>
				</li>
				<li id ="dept-add" class="nav-item  ">
					<a href="/sunny/redirect_departmentAdd" class="nav-link "> 
						<span class="title">添加部门</span>
					</a>
				</li>
			</ul>
		</li>
		<li id="job-manager" class="nav-item  ">
			<a href="javascript:;" class="nav-link nav-toggle"> 
				<i class="icon-puzzle"></i> 
				<span class="title">职位管理</span> 
				<span class="arrow"></span>
			</a>
			<ul class="sub-menu">
				<li id="job-query" class="nav-item  ">
					<a href="/sunny/redirect_jobQuery" class="nav-link "> 
						<span class="title">职位查询</span>
					</a>
				</li>
				<li id="job-add" class="nav-item  ">
					<a href="/sunny/redirect_jobAdd" class="nav-link "> 
						<span class="title">添加职位</span>
					</a>
				</li>
			</ul>
		</li>
		<li id="employee-manager" class="nav-item  ">
			<a href="javascript:;" class="nav-link nav-toggle"> 
				<i class="icon-settings"></i> 
				<span class="title">员工管理</span> 
				<span class="arrow"></span>
			</a>
			<ul class="sub-menu">
				<li id="employee-query" class="nav-item  ">
					<a href="/sunny/redirect_employeeQuery" class="nav-link "> 
						<span class="title">员工查询</span>
					</a>
				</li>
				<li id="employee-add" class="nav-item  ">
					<a href="/sunny/redirect_employeeAdd" class="nav-link "> 
						<span class="title">添加员工</span>
					</a>
				</li>
			</ul>
		</li>
		<li id="notice-manager" class="nav-item">
			<a href="javascript:;" class="nav-link nav-toggle">
				<i class="icon-bulb"></i>
				<span class="title">公告管理</span>
				<span class="arrow"></span>
			</a>
			<ul class="sub-menu">
				<li id="notice-query" class="nav-item  ">
					<a href="/sunny/redirect_noticeQuery" class="nav-link ">
						<span class="title">公告查询</span>
					</a>
				</li>
				<li id="notice-add" class="nav-item">
					<a href="/sunny/redirect_noticeAdd" class="nav-link ">
						<span class="title">添加公告</span>
					</a>
				</li>
			</ul>
		</li>
		<li id="file-manager" class="nav-item">
			<a href="javascript:;" class="nav-link nav-toggle">
				<i class="icon-briefcase"></i>
				<span class="title">下载中心</span>
				<span class="arrow"></span>
			</a>
			<ul class="sub-menu">
				<li id="file-download" class="nav-item  ">
					<a href="/sunny/redirect_fileDownload" class="nav-link ">
						<span class="title">文档下载</span>
					</a>
				</li>
				<li id="file-upload" class="nav-item  ">
					<a href="/sunny/redirect_fileUpload" class="nav-link ">
						<span class="title">上传文档</span>
					</a>
				</li>
			</ul>
		</li>

	</ul>
</div>
