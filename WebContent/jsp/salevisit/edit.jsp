<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>修改客户拜访记录</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css
	rel=stylesheet>


<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>

<script type="text/javascript">
	$(function(){
		// 页面加载函数就会执行：
		// 页面加载，异步查询字典数据：
		// 异步加载客户信息
		$.post("${pageContext.request.contextPath}/customer_findAllCustomer.action",{},function(data){
			// 遍历json的数据:
			$(data).each(function(i,n){
				$("#customer").append("<option value='"+n.cust_id+"'>"+n.cust_name+"</option>");
			});
		},"json");
		// 异步加载用户信息
		$.post("${pageContext.request.contextPath}/user_findAllUser.action",{},function(data){
			// 遍历json的数据:
			$(data).each(function(i,n){
				$("#user").append("<option value='"+n.user_id+"'>"+n.user_name+"</option>");
			});
		},"json");
	});
</script>

</HEAD>
<BODY>
	<s:form id="form1" name="form1" action="saleVisit_update" namespace="/"
		method="post" enctype="multipart/form-data" theme="simple">
		
		<s:hidden name="visit_id" value="%{model.visit_id}"/>
		<s:fielderror/>
		
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_019.jpg"
						border=0></TD>
					<TD width="100%" background="${pageContext.request.contextPath }/images/new_020.jpg"
						height=20></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_021.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15 background="${pageContext.request.contextPath }/images/new_022.jpg"><IMG
						src="${pageContext.request.contextPath }/images/new_022.jpg" border=0></TD>
					<TD vAlign=top width="100%" bgColor=#ffffff>
						<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
							<TR>
								<TD class=manageHead>当前位置：客户拜访记录管理 &gt; 修改拜访记录</TD>
							</TR>
							<TR>
								<TD height=2></TD>
							</TR>
						</TABLE>
						
						<TABLE cellSpacing=0 cellPadding=5  border=0>
						  
						    
							<TR>
								<td>拜访客户 ：</td>
								<td>
									<select id="customer" name="customer.cust_id">
										<option value="">--请选择--</option>
									</select>
								</td>
								<td>业务员名称 ：</td>
								<td>
									<select id="user" name="user.user_id">
										<option value="">--请选择--</option>
									</select>
								</td>
								
							</TR>
							
							<TR>
								<td>拜访时间：</td>
								<td>
									<s:textfield class="textbox" id="sChannel2"
									style="WIDTH: 180px" maxLength="50" name="visit_time" value="%{model.visit_time}"/>
								</td>
								<td>拜访地点 ：</td>
								<td>
									<s:textfield class="textbox" id="sChannel2"
									style="WIDTH: 180px" maxLength="50" name="visit_addr" value="%{model.visit_addr}"/>
								</td>
							</TR>
							
							<TR>
								<td>拜访详情 ：</td>
								<td>
									<s:textfield class="textbox" id="sChannel2"
									style="WIDTH: 180px" maxLength="50" name="visit_detail" value="%{model.visit_detail}"/>
								</td>
								<td>下次拜访时间 ：</td>
								<td>
									<s:textfield class="textbox" id="sChannel2"
									style="WIDTH: 180px" maxLength="50" name="visit_nexttime" value="%{model.visit_nexttime}"/>
								</td>
							</TR>
							
							<tr>
								<td rowspan=2>
								<INPUT class=button id=sButton2 type=submit
														value=" 修改 " name=sButton2>
								</td>
							</tr>
						</TABLE>
						
						
					</TD>
					<TD width=15 background="${pageContext.request.contextPath }/images/new_023.jpg">
					<IMG src="${pageContext.request.contextPath }/images/new_023.jpg" border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_024.jpg"
						border=0></TD>
					<TD align=middle width="100%"
						background="${pageContext.request.contextPath }/images/new_025.jpg" height=15></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_026.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
	</FORM>
	</s:form>
</BODY>
</HTML>
