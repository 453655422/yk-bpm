<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
<meta http-equiv="description" content="This is my page" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<%=path %>/css/bootstrap.css"
	type="text/css" />
<link rel="stylesheet"
	href="<%=path %>/css/bootstrap-responsive.min.css" type="text/css" />
<link rel="stylesheet" href="<%=path %>/css/docs.css" type="text/css" />



<script language="javascript">
           function adminDel(userId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/adminDel.action?userId="+userId;
               }
           }
           
           function adminAdd()
           {
                 var url="<%=path %>/admin/index/adminAdd.jsp";
				 window.location.href=url;
           }
            function adminEdit(userId)
           {
                   window.location.href="<%=path %>/adminEditPre.action?userId="+userId;
           }
       </script>
</head>

<body leftmargin="2" topmargin="2"
	background='<%=path %>/images/allbg.gif'>
	<form action="adminQuery.action" class="form-search" method="post">

		按用户名关键字：<input type="text" placeholder="用户名" name="userName"
			class="input-medium search-query">
		<button type="submit" class="btn">Search</button>
	</form>


	<form class="bs-docs-example form-horizontal">
		<div class="row">
			<div class="span11">
				<ul style="margin-bottom: 5px;" class="breadcrumb">
					<li><a href="<%=path %>">首页</a> <span class="divider">/</span></li>
					<li class="active">用户列表</li>
				</ul>
			</div>
			<div class="span1">
				<input type="button" class="btn " value="添加" style="width: 80px;"
					onclick="adminAdd()" />
			</div>
		</div>
		<div class="content">
			<table class="table table-bordered show-grid">

				<thead>
					<tr align="center" bgcolor="#FAFAF1" height="22">
						<td width="25%">ID</td>
						<td width="25%">用户名</td>
						<td width="25%">密码</td>
						<td width="25%">操作</td>
					</tr>
				</thead>
				<s:iterator value="#request.adminList" id="admin">
					<tr>
						<td><s:property value="#admin.userId" /></td>
						<td><s:property value="#admin.userName" /></td>
						<td><s:property value="#admin.userPw" /></td>
						<td><img src="#" class="icon-trash"
							onclick="adminDel(<s:property value="#admin.userId"/>)"></img>
							<img src="#" class="icon-edit"
							onclick="adminEdit(<s:property value="#admin.userId"/>)"
							class="pn-loperator" /> </a></td>
					</tr>
				</s:iterator>
			</table>

			<table width='98%' border='0'
				style="margin-top: 8px; margin-left: 5px;">
				<tr>
					<td></td>
				</tr>
			</table>
		</div>
		<div class="pagination">
			<ul>
				<li class="disabled"><a href="#">Prev</a></li>
				<li class="active"><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">Next</a></li>
			</ul>
		</div>
	</form>
</body>
</html>
