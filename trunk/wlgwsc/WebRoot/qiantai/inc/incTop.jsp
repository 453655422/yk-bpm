<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
      <script type="text/javascript">
	        function myXinxi()
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            
	            <s:else>
	                var url="<%=path %>/qiantai/userinfo/userXinxi.jsp";
	                var n="";
	                var w="480px";
	                var h="500px";
	                var s="resizable:no;help:no;status:no;scroll:yes";
				    openWin(url,n,w,h,s);
	            </s:else>
	        }
	        function myCart()
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            
	            <s:else>
	                 var s="<%=path %>/myCart.action";
	                 window.location.href=s;
	            </s:else>
	        }
	        
	        function myOrder()
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            
	            <s:else>
	                 var s="<%=path %>/myOrder.action";
	                 window.location.href=s;
	            </s:else>
	        }
	       function dgOrder()
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            
	            <s:else>
	                 var s="<%=path %>/dgOrder.action";
	                 window.location.href=s;
	            </s:else>
	        }
	        function liuyanAll()
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            
	            <s:else>
	                 var url="<%=path %>/liuyanAll.action";
				     window.open(url,"_blank");
	            </s:else>
	        }
      </script>
  </head>
  
  <body>
        <center><img  src="<%=path %>/img/banner.png" width="840"></center>
        
        
        <div class="navbar">
  <div class="navbar-inner">
    <ul class="nav">
      <li class="active">	<A href="<%=path %>/qiantai/default.jsp">商城首页</A></li>
      <li><A href="#" onClick="myXinxi()">我的信息</A></li>
      <li>-<A href="#" onClick="myCart()">我的购物车</A></li>
      <li><A href="#" onClick="myCart()">我的购物车</A></li>
    </ul>
  </div>
</div>

        

		<div class="topmenu cbody1" align="center">
			<ul>
				<li class="thisclass">
					<A href="<%=path %>/qiantai/default.jsp">商城首页</A>
				</li>
				<li class="thisclass">
					<A href="#" onClick="myXinxi()">我的信息</A>
				</li>
				<li class="thisclass">
					<A href="#" onClick="myCart()">我的购物车</A>
				</li>
				<li class="thisclass">
					<A href="#" onClick="myOrder()">我的订单</A>
				</li>
				<li class="thisclass">
					<A href="#" onClick="liuyanAll()">我要留言</A>
				</li>
				
					<li class="thisclass">
						<a target="_blank" href="<%=path %>/login.jsp">后台管理</a>
				</li>
			</ul>
		</div>
		<form id="searchForm" action="<%=path %>/goodSearch.action" method="post">
			<div class="topsearch">
				<div class="title"></div>
	              <div id="page_search_left" >




                  </div>
             
                  
         
				<div id="page_search_left">         
					<input class="inputText" id="goodsName" size="16" onKeyPress="if(event.keyCode==13){searchFormSubmit();return false;}" name="goodsName" type="text" />
				</div>
				<div id="page_search_btn">
					<input type="submit" value="搜索">
				</div>
				<div id="page_search_right">
					<script>
						<!--var day="";
						var month="";
						var ampm="";
						var ampmhour="";
						var myweekday="";
						var year="";
						mydate=new Date();
						myweekday=mydate.getDay();
						mymonth=mydate.getMonth()+1;
						myday= mydate.getDate();
						year= mydate.getFullYear();
						if(myweekday == 0)
						weekday=" 星期日 ";
						else if(myweekday == 1)
						weekday=" 星期一 ";
						else if(myweekday == 2)
						weekday=" 星期二 ";
						else if(myweekday == 3)
						weekday=" 星期三 ";
						else if(myweekday == 4)
						weekday=" 星期四 ";
						else if(myweekday == 5)
						weekday=" 星期五 ";
						else if(myweekday == 6)
						weekday=" 星期六 ";
						document.write(year+"年"+mymonth+"月"+myday+"日 "+weekday);
						//-->
					</script>
				</div>
				<div style="clear: both"></div>
			</div>
		</form>
  </body>
</html>
