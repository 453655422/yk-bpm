<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en"  >
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
		        <link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
		
		<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
		
        <script language="javascript">
            function check()
            {
                 var userPwReal="${sessionScope.admin.userPw}";
                 if(document.formPw.userPw.value !=userPwReal)
                 {
                     alert("原密码不正确");
                     return ;
                 }
                 
                 if(document.formPw.userPw1.value =="")
                 {
                     alert("新密码不能空");
                     return ;
                 }
                 if(document.formPw.userPw1.value != document.formPw.userPw2.value)
                 {
                     alert("两次输入的密码不一致");
                     return ;
                 }
                 
                 document.getElementById("indicator").style.display="block";
                 loginService.adminPwEdit(document.formPw.userPw1.value,callback);
            }
            function callback(data)
            {
                document.getElementById("indicator").style.display="none";
                alert("修改成功");
            }
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
			<form method="post" title="修改用户信息" action="<%=path %>/userPwEdit.action" name="formPw" class="bs-docs-example form-horizontal">
			
	
		  <div id="content">
		  <div class="row">
		  <div class="span6  offset3">
     <div class="control-group">
<label class="control-label"> 登录名：</label>
<div class="controls">
  <input type="text" value="${sessionScope.admin.userName }" name="userName" size="20" disabled="disabled"/>
</div>
</div>
   <div class="control-group">
<label class="control-label" for="inputEmail">原密码：</label>
<div class="controls">
 <input type="password" name="userPw" id="userPw" size="22"/>
</div>
</div>
<div class="control-group">
<label class="control-label" for="inputPassword">新密码：</label>
<div class="controls">
   <input type="password" id="userPw1" name="userPw1" size="22"/>
</div>
</div>


<div class="control-group">
<label class="control-label" for="inputPassword">确认密码</label>
<div class="controls">
   <input type="password" name="userPw2" id="userPw2" size="22"/>
</div>
</div>
   <div class="form-actions control-group">
    <button type="submit" class="btn btn-primary" onclick="check()">修改</button>
    <button type="reset" class="btn btn-primary" value="重置"> 重置</button>
</div>


    

    </div>
</div>
</div>


 
			
			
			
			
			
	<%-- 		<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
				<tr bgcolor="#EEF4EA">
				    <td colspan="2" background="<%=path %>/images/wbg.gif" class='title'><span>密码修改</span></td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				         登录名：
				    </td>
				    <td width="75%" bgcolor="#FFFFFF">
				      
				    </td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				        原密码：
				    </td>
				    <td width="75%" bgcolor="#FFFFFF">
				       
				    </td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				         新密码：
				    </td>
				    <td width="75%" bgcolor="#FFFFFF">
				     
				    </td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				        确认密码：
				    </td>
				    <td width="75%" bgcolor="#FFFFFF">
				        
				    </td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="25%" bgcolor="#FFFFFF" align="right">
				        &nbsp;
				    </td>
			        <td width="75%" bgcolor="#FFFFFF">
			          
			             <img id="indicator" src="<%=path %>/images/loading32.gif" alt="Loading..." style="display:none"/>
			        </td>
				</tr>
			</table> --%>
			</form>
   </body>
</html>
