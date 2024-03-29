<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		<link rel="stylesheet" href="<%=path %>/css/bootstrap.css" type="text/css" />
        <link rel="stylesheet" href="<%=path %>/css/bootstrap-responsive.min.css" type="text/css" />
        <link rel="stylesheet" href="<%=path %>/css/docs.css" type="text/css" />
		
		<link href="<%=path %>/css/layout.css" type="text/css" rel="stylesheet" />
		
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
	
	</head>

	<body>
	
	    <div class="container-fluid">
	    <div class="row-fluid">
	
		<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
		</div>
		<div class="page_row">
		    <!--左边的 -->
			<div class="page_main_msg left">
				<!-- 排行榜 -->
				<div class="left_row">
					<div class="list pic_news">
						<div class="list_bar">
							排行榜
						</div>
						<div id="tw" class="list_content">
							<div style="width:100%;overflow:hidden;white-space:nowrap;">
						<!--	<marquee align=middle border=1  scrollamount=2 direction=right>-->
								<table width="100%" align="left" cellpadding="0" cellspacing="0" border="0">
									<tr>
									    <s:iterator value="#request.goodsList" id="goods">
										<td>
											<table width="100%" cellpadding="0" cellspacing="0" border="0">
												<tr>
													<td sytle="height:28px;">
														<dl style="width:100%;height:130px;padding-right:10px;">
															<dd style="margin-left:0;">
																<a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>">
																   <img width="105" height="100" src="<%=path %>/<s:property value="#goods.goodsPic"/>"/>
																</a>
															</dd>
															<dt>
																<s:property value="#goods.goodsName"/>
															</dt>
															<dt>
																￥：<s:property value="#goods.goodsShichangjia"/>
															</dt>
														</dl>
														
													</td>
												</tr>
											</table>
										</td>
										</s:iterator>
									</tr>
								</table>
								<!--</marquee>-->
							</div>
					  </div>
					</div>
				</div>
				<!-- 排行榜 -->
				<!-- 特价 -->
				<div class="left_row">
					<div class="list pic_news">
						<div class="list_bar">
							 <span style="float:left">特价区域</span>
							 <span style="float:right"><a href="<%=path %>/goodsAllYesTejia.action">更多>></a>&nbsp;&nbsp;&nbsp;&nbsp;</span>
						</div>
						<div id="tw" class="list_content">
							<div style="width:100%;overflow:hidden;white-space:nowrap;">
							<!--<marquee align=middle border=1  scrollamount=2>-->
								<table width="100%" align="left" cellpadding="0" cellspacing="0" border="0">
									<tr>
									    <s:iterator value="#request.goodsYesTejiaList" id="goods">
										<td>
											<table width="100%" cellpadding="0" cellspacing="0" border="0">
												<tr>
													<td sytle="height:28px;">
													
														<dl style="width:100%;height:130px;padding-right:10px;">
															<dd style="margin-left:0;">
																<a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>">
																   <img width="105" height="100" src="<%=path %>/<s:property value="#goods.goodsPic"/>"/>
																</a>
															</dd>
															<dt>
																<s:property value="#goods.goodsName"/>
															</dt>
															<dt>
																<s>市场价:<s:property value="#goods.goodsShichangjia"/></s>
																(特价:<s:property value="#goods.goodsTejia"/>)
															</dt>
														</dl>
														
													</td>
												</tr>
											</table>
										</td>
										
										</s:iterator>
									</tr>
								</table>
							<!--	</marquee>-->
							</div>
					  </div>
					</div>
				</div>
				<!-- 特价 -->
				<!-- 新品上市 -->
				<div class="left_row">
					<div class="list pic_news">
						<div class="list_bar">
							 <span style="float:left">新品上市</span>
							 <span style="float:right"><a href="<%=path %>/goodsAllNoTejia.action">更多>></a>&nbsp;&nbsp;&nbsp;&nbsp;</span>
						</div>
						<div id="tw" class="list_content">
							<div style="width:100%;overflow:hidden;white-space:nowrap;">
							<!--<marquee align=middle border=1  scrollamount=2 direction=right>-->
								<table width="100%" align="left" cellpadding="0" cellspacing="0" border="0">
									<tr>
									
									    <s:iterator value="#request.goodsNoTejiaList" id="goods">
										<td>
										
											<table width="100%" cellpadding="0" cellspacing="0" border="0">
												<tr>
													<td sytle="height:28px;">
														<dl style="width:100%;height:130px;padding-right:10px;">
															<dd style="margin-left:0;">
																<a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>">
																   <img width="105" height="100" src="<%=path %>/<s:property value="#goods.goodsPic"/>"/>
																</a>
															</dd>
															<dt>
																<s:property value="#goods.goodsName"/>
															</dt>
															<dt>
																市场价:<s:property value="#goods.goodsShichangjia"/>
															</dt>
														</dl>
													</td>
												</tr>
											</table>
										</td>
										
										</s:iterator>
										
									</tr>
								</table>
							<!--	</marquee>-->
							</div>
					  </div>
					</div>
				</div>
				<!-- 新品上市 -->
			</div>
			<!--左边的 -->
			
			<!-- 右边的用户登录。留言。投票 -->
			<div class="page_other_msg right">
				<div class="left_row">
					<div class="list">
						<div class="list_bar">
							用户登录
						</div>
						<div class="list_content">
							<div id="div">
								<jsp:include flush="true" page="/qiantai/userlogin/userlogin.jsp"></jsp:include>
							</div>
						</div>
					</div>
				</div>
                <div class="left_row">
				    <div class="list">
				        <div class="list_bar">商品分类</div>
				        <div class="list_content">
				            <div id="div"> 
				                   <div style="overflow:hidden;height:auto;">
							             <div id="roll-orig-1607838439">
							            

										     <s:action name="catelogAll" executeResult="true" flush="true"></s:action>
							
							             </div>
						                 <div id="roll-copy-1607838439"></div>
				                   </div>
					        </div>
					    </div>
				    </div>
				</div>
				<div class="left_row">
				    <div class="list">
				        <div class="list_bar">网站公告</div>
				        <div class="list_content">
				            <div id="div"> 
				                   <div style="overflow:hidden;height:150px;">
							             <div id="roll-orig-1607838439 ">
							             <marquee align=middle border=1 direction=up scrollamount=3 onMouseOver="this.stop()"
onMouseOut="this.start()">
										 <s:action name="gonggaoQian5" executeResult="true" flush="true"></s:action>
							             </marquee>
							             </div>
						                 <div id="roll-copy-1607838439"></div>
				                   </div>
					        </div>
					    </div>
				    </div>
				</div>
			</div>
			<div style="clear: both"></div>
			<!-- 右边的用户登录。留言。投票 -->
		</div>
		
		</div>
	</body>
</html>
