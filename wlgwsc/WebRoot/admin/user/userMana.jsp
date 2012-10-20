<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" >
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
		
        <script language="javascript">
           function userDel(userId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/userDel.action?userId="+userId;
               }
           }
            function userEdit(userId)
           {
                   window.location.href="<%=path %>/userEditPre.action?userId="+userId;
           }
            function userAdd()
           {
                  var url="<%=path %>/admin/user/userAdd.jsp";
              window.location.href=url;
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
	<form action="userQuery.action" method="post">
	<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="4" background="<%=path %>/images/tbg.gif">&nbsp;查询&nbsp;</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">按会员用户名关键字&nbsp;&nbsp;&nbsp;<input type="text" id="userName" name="userName" />&nbsp;&nbsp;&nbsp;<input type="submit" value="查询"/></td>
				</tr>
	</table>
	</form>
			<table class="table table-striped">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="10" background="<%=path %>/images/tbg.gif">&nbsp;会员管理&nbsp;</td>
				</tr>
				    <thead>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="10%">ID</td>
					<td width="10%">号码</td>
					<td width="10%">密码</td>
					<td width="10%">真实姓名</td>
					<td width="10%">住址</td>
					<td width="10%">性别</td>
					<td width="10%">联系方式</td>
					<td width="10%">E-mail</td>
					<td width="10%">QQ</td>
					<td width="10%">操作</td>
		        </tr>
		          <tbody>	
				<s:iterator value="#request.userList" id="user">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userId"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userName"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#user.userPw"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userRealname"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userAddress"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#user.userSex"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userTel"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userEmail"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#user.userQq"/>
					</td>
					<td  bgcolor="#FFFFFF" align="center">
				
						<a href="#" onclick="userDel(<s:property value="#user.userId"/>)" class="pn-loperator">删除</a>
						<a href="#" onclick="userEdit(<s:property value="#user.userId"/>)" class="pn-loperator">编辑</a>
					</td>
				</tr>
				</s:iterator>
			</table>
						<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
			  <tr>
			    <td>
			      <input type="button" value="添加会员" style="width: 80px;" onclick="userAdd()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
