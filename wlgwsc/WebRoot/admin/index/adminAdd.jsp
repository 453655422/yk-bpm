<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 

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
        

    <link rel="stylesheet" href="<%=path %>/css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="<%=path %>/css/bootstrap-responsive.min.css" type="text/css" />
    <link rel="stylesheet" href="<%=path %>/css/docs.css" type="text/css" />
        

     
        <script language="javascript">
            function closeOpen()
		    {
		       window.returnValue=false;
		       window.close();
		    }
		    
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
	<form action="<%=path%>/adminAdd.action" name="formAdd" method="post"
	 class="bs-docs-example form-horizontal">
	<div class="row">
			<div class="span12">
				<ul style="margin-bottom: 5px;" class="breadcrumb">
					<li><a href="<%=path %>">首页</a> <span class="divider">/</span></li>
						<li><a href="<%=path %>/adminManage.action">用户列表</a> <span class="divider">/</span></li>
					<li class="active">添加用户</li>
				</ul>
			</div>
		</div>

		<div id="content">
			<div class="row">
				<div class="span6  offset1">
					<div class="control-group">
						<label class="control-label"> 用户名：</label>
						<div class="controls">
							<input type="text" name="userName" size="20" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label"> 密码：：</label>
						<div class="controls">
							<input type="password" name="userPw" id="userPw" size="22" />
						</div>
					</div>
					<div class="control-group">
					<div class="controls">
						<button type="submit" class="btn btn-primary" onclick="check()">添加</button>
						<button type="reset" class="btn btn-primary" value="重置">
							重置</button>
                          </div>
					</div>
				</div>
			</div>
		</div>


	</form>
</body>
</html>
