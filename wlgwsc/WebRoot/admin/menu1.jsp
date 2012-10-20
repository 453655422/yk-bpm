<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en" >
  <head>
    <title>My JSP 'menu.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <meta name="viewport" content="width=device-width, initial-scale=1.0">
	   
    <link rel="stylesheet" href="<%=path %>/css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="<%=path %>/css/bootstrap-responsive.min.css" type="text/css" />
    <link rel="stylesheet" href="<%=path %>/css/docs.css" type="text/css" />

	<base target="main" />
  </head>
  
  <body data-spy="scroll" data-target=".bs-docs-sidebar" target="main">
     <div class="container">
     <div class="row">
      <div class="span3 well  bs-docs-sidebar">
              <ul class="nav nav-list bs-docs-sidenav affix">
                <li class="nav-header">基本操作</li>
                <li><a  href='<%=path %>/admin/index/userinfo.jsp' target='main'>密码修改<i class="icon-chevron-right"></i></a></li>
                <li><a href='<%=path %>/adminManage.action' target='main'>管理员维护<i class="icon-chevron-right"></i></a></li>
                <li class="nav-header">留言公告管理</li>
                <li><a href='<%=path %>/liuyanMana.action' target='main'><i class="icon-chevron-right"></i>留言管理</a></li>
                <li><a href='<%=path %>/gonggaoMana.action' target='main'><i class="icon-chevron-right"></i>公告管理</a></li>
                <li class="divider"></li>
                <li><a href='#' onclick='javascript:window.parent.location="<%=path %>/login.jsp"'>安全退出系统</a></li>
              </ul>
         </div>
        </div>
     </div>
  </body>
  <script language="javascript" type="text/javascript" src="<%=path %>/js/jquery-1.8.2.js"></script>
   <script language="javascript" type="text/javascript" src="<%=path %>/js/bootstrap.min.js"></script>
    <script language="javascript" type="text/javascript" src="<%=path %>/js/jquery-ui-1.9.0.custom.min.js"></script>
</html>
