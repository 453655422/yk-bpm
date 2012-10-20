<%@ page language="java" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
	<title>login.jsp</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
        

		   <link rel="stylesheet" href="<%=path %>/css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="<%=path %>/css/bootstrap-responsive.min.css" type="text/css" />
    <link rel="stylesheet" href="<%=path %>/css/docs.css" type="text/css" />
 
 
 <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
 <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
 <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
      
 <script language="javascript">
 function check()
 {                                                                                         
     if(document.ThisForm.userName.value=="")
	 {
	 	alert("请输入用户名");
		document.ThisForm.userName.focus();
		return false;
	 }
	 if(document.ThisForm.userPw.value=="")
	 {
	 	alert("请输入密码");
		document.ThisForm.userPw.focus();
		return false;
	 }

	 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,0,callback);
 }

 function callback(data)
 {

    if(data=="no")
    {
        alert("用户名或密码错误");
    }
    if(data=="yes")
    {
       
        window.location.href="<%=path %>/admin/index.jsp";
    }
 }
 </script>
</head>
<body>

 
<body>

	<form name="ThisForm" method="POST" title="管理用戶登錄"
		class="bs-docs-example form-horizontal">

		<div
			style="position: relative; top: auto; left: auto; margin: 0 auto 20px; z-index: 1; max-width: 100%;"
			Class="modal">
			<div class="modal-header">
				<h3></h3>
			</div>
			<div class="modal-body">
				<div id="content">
					<div class="row">
						<div class="span2">

							<div class="control-group">
								<label class="control-label"> 用户名：</label>
								<div class="controls">
									<input name="userName" type="text">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label"> 密码：：</label>
								<div class="controls">
									<input name="userPw" type="password">
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary"  data-loading-text="Loading..." onclick="check()">登录</button>
				<button type="reset" class="btn btn-primary" value="重置">重置</button>
			</div>
		</div>
	</form>
</body>
</html>
