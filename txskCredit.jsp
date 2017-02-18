<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!DOCTYPE html>
<html>
<head>
<%@ include file="/pub/jsp/appHeader.jsp"%>
<title>天行数科</title>
<link rel="stylesheet" type="text/css"
	href="${ctxPath}/pub/css/basicDataInput.css">
<script type="text/javascript"
	src="${ctxPath}/pub/lib/jquery-1.7.2.min.js"></script>
</head>
<body>
<!-- *******************个人详细信息查询结果****************** -->	
	<div class="classNull">
			<table style="width:99%;" >
				<c:if test="${IDENTITYTRANSFERRESULT!=null  && not empty IDENTITYTRANSFERRESULT.errorDesc}">
					<input id="reset_ident" type="button" value="重查" onclick="againQueryIdent('${APPLY_ID}',this)"/>
				</c:if>
				<div id='warningIdent'></div>
				<tr>
				<th style="background-color: #C4E1FF;width: 99%;height: 30px;"  colspan = '4'>个人详细信息查询结果</th>
				</tr>
				<c:if test="${IDENTITYTRANSFERRESULT!=null && not empty IDENTITYTRANSFERRESULT.errorDesc }">
					<tr>
					<th colspan = '4'>
							<font color="#FF0000">
								个人详细信息查询失败原因：${IDENTITYTRANSFERRESULT.errorDesc }
							</font>
					</th>
					</tr>
				</c:if>
			<c:if test="${IDENTITY_DETAIL!=null}">
					<tr align="center">
						<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;" title="姓名">姓名</td>
						<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${IDENTITY_DETAIL.name}</td>					
						<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;" title="身份证号">身份证号</td>
						<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${IDENTITY_DETAIL.identityCard}</td>			
					</tr>
					<tr align="center">
						<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;" title="性别">性别</td>
						<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${IDENTITY_DETAIL.sex}</td>					
						<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;" title="民族">民族</td>
						<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${IDENTITY_DETAIL.nation}</td>			
					</tr>
					<tr align="center">
						<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;" title="出生日期">出生日期</td>
						<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${IDENTITY_DETAIL.birthday}</td>					
						<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;" title="出生地">出生地</td>
						<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${IDENTITY_DETAIL.birthPlace}</td>			
					</tr>
					<tr align="center">
						<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;" title="曾用名">曾用名</td>
						<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${IDENTITY_DETAIL.usedName}</td>					
						<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;" title="所在公司">所在公司</td>
						<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${IDENTITY_DETAIL.company}</td>			
					</tr>
					<tr align="center">
						<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;" title="最高学历">最高学历</td>
						<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${IDENTITY_DETAIL.education}</td>					
						<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;" title="婚姻状态">婚姻状态</td>
						<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${IDENTITY_DETAIL.maritalStatus}</td>			
					</tr>
					<tr align="center">
						<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;" title="籍贯">籍贯</td>
						<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${IDENTITY_DETAIL.nativePlace}</td>					
						<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;" title="地址">地址</td>
						<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${IDENTITY_DETAIL.address}</td>			
					</tr>
					<tr align="center">
						<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;" title="比对结果">比对结果</td>
						<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${IDENTITY_DETAIL.compareStatus}</td>					
						<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;" title="比对结果描述">比对结果描述</td>
						<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${IDENTITY_DETAIL.compareStatusDesc}</td>			
					</tr>

				</c:if>	
				</table>					
			<br>
<!-- ************************************* -->	
			
<!-- *******************企业法人信息****************** -->
<table style="width:99%;" >	
			<c:if test="${ENTERPRISEINFOTRANSFERRESULT!=null && not empty ENTERPRISEINFOTRANSFERRESULT.remark }">
					<input id="reset_enter" type="button" value="重查" onclick="againQueryEnter('${APPLY_ID}',this)"/>
			</c:if>
			<div id='warningEnter'></div>
			<c:if test="${ENTERPRISEINFOTRANSFERRESULT!=null && not empty ENTERPRISEINFOTRANSFERRESULT.remark }">
					<tr>
					<th colspan = '4'>
							<font color="#FF0000">
								企业信息查询失败原因：${ENTERPRISEINFOTRANSFERRESULT.remark }
							</font>
					</th>
					</tr>
			</c:if>
			
			<c:if test="${CORPORATES_LIST!=null && fn:length(CORPORATES_LIST)>0 }">
			<table style="width:99%;" >
				<tr>
				<th style="background-color: #C4E1FF;width: 99%;height: 30px;"  colspan = '4'>企业法人信息</th>
				</tr>
				
				<c:forEach items="${CORPORATES_LIST}" var="corporates" varStatus="i">
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">查询人姓名</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporates.ryName}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">企业(机构)名称</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporates.entName}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">注册号</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporates.regNo}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">企业(机构)类型</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporates.entType}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">企业状态</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporates.entStatus}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">注册资本币种</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporates.regCapCur}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">注册资本(万元)</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">
					<fmt:formatNumber type="number" value="${corporates.regCap}" pattern="0.00" maxFractionDigits="2"/>
					</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;"></td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;"></td>
				</tr>
				</c:forEach>
				
				
			</table>
			<br>
			</c:if>
<!-- ************************************* -->	

<!-- *******************企业股东信息****************** -->				
			<c:if test="${CORPORATESHAREHOLDERS_LIST!=null && fn:length(CORPORATESHAREHOLDERS_LIST)>0 }">
			<table style="width:99%;" >
				<tr>
				<th style="background-color: #C4E1FF;width: 99%;height: 30px;"  colspan = '4'>企业股东信息</th>
				</tr>
				<c:forEach items="${CORPORATESHAREHOLDERS_LIST}" var="corporateShareholders" varStatus="i">
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">查询人姓名</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporateShareholders.ryName}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">企业(机构)名称</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporateShareholders.entName}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">注册号</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporateShareholders.regNo}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">企业(机构)类型</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporateShareholders.entType}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">企业状态</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporateShareholders.entStatus}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">注册资本币种</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporateShareholders.regCapCur}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">注册资本(万元)</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">
					<fmt:formatNumber type="number" value="${corporateShareholders.regCap}" pattern="0.00" maxFractionDigits="2"/>
					</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">认缴出资币种</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporateShareholders.currency}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">认缴出资额(万元)</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">
					<fmt:formatNumber type="number" value="${corporateShareholders.subConam}" pattern="0.00" maxFractionDigits="2"/>
					</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">出资比例</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporateShareholders.fundedRatio}</td>
				</tr>
				
				</c:forEach>
			</table>
			<br>
			</c:if>
<!-- ************************************* -->	

<!-- *******************企业主要管理人员信息****************** -->				
			<c:if test="${CORPORATEMANAGERS_LIST!=null && fn:length(CORPORATEMANAGERS_LIST)>0 }">
			<table style="width:99%;" >
				<tr>
				<th style="background-color: #C4E1FF;width: 99%;height: 30px;"  colspan = '4'>企业主要管理人员信息</th>
				</tr>
				<c:forEach items="${CORPORATEMANAGERS_LIST}" var="corporateManagers" varStatus="i">
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">查询人姓名</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporateManagers.ryName}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">企业(机构)名称</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporateManagers.entName}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">注册号</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporateManagers.regNo}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">企业(机构)类型</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporateManagers.entType}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">企业状态</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporateManagers.entStatus}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">职务</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporateManagers.position}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">注册资本(万元)</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">
					<fmt:formatNumber type="number" value="${corporateManagers.regCap}" pattern="0.00" maxFractionDigits="2"/>
					</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">注册资本币种</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${corporateManagers.regCapCur}</td>
				</tr>
				
				</c:forEach>
				
			</table>
			<br>
			</c:if>
<!-- ************************************* -->	

<!-- *******************失信被执行人信息****************** -->				
			<c:if test="${PUNISHBREAKS_LIST!=null && fn:length(PUNISHBREAKS_LIST)>0 }">
			<table style="width:99%;" >
				<tr>
				<th style="background-color: #C4E1FF;width: 99%;height: 30px;"  colspan = '4'>失信被执行人信息</th>
				</tr>
				<c:forEach items="${PUNISHBREAKS_LIST}" var="punishBreaks" varStatus="i">
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">案号</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punishBreaks.caseCode}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">被执行人姓名/名称</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punishBreaks.name}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">身份证号码</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punishBreaks.cardNum}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">性别</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punishBreaks.sex}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">年龄</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punishBreaks.age}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">省份</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punishBreaks.areaName}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">身份证原始发证地</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punishBreaks.ysfzd}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">执行法院</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punishBreaks.courName}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">立案时间</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punishBreaks.regDate}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">失信被执行人行为具体情形</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punishBreaks.disruptTypeName}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">失信人类型</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punishBreaks.type}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">法定代表人/负责人姓名</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punishBreaks.name}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">公布时间</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punishBreaks.publishDate}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">执行依据文号</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punishBreaks.gistId}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">执行依据单位</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punishBreaks.gistUnit}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">法律文书确定的义务</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${fn:replace(punishBreaks.duty,'\\n', '')}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">已履行</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punishBreaks.performedPart}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">未履行</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punishBreaks.unPerformPart}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">被执行人的履行情况</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punishBreaks.performAnce}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;"> </td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;"> </td>
				</tr>
				</c:forEach>
				
			</table>
			<br>
			</c:if>
<!-- ************************************* -->	

<!-- *******************被执行人信息****************** -->				
			<c:if test="${PUNISHED_LIST!=null && fn:length(PUNISHED_LIST)>0 }">
			<table style="width:99%;" >
				<tr>
				<th style="background-color: #C4E1FF;width: 99%;height: 30px;"  colspan = '4'>被执行人信息</th>
				</tr>
				<c:forEach items="${PUNISHED_LIST}" var="punished" varStatus="i">
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">案号</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punished.caseCode}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">被执行人姓名/名称</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punished.name}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">身份证号码</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punished.cardNum}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">性别</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punished.sex}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">年龄</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punished.age}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">省份</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punished.areaName}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">身份证原始发证地</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punished.ysfzd}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">执行法院</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punished.courtName} </td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">立案时间</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punished.regDate}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">案件状态</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punished.caseState} </td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">执行标的（元）</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${punished.execMoney}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;"> </td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;"> </td>
				</tr>
				</c:forEach>
				
			</table>
			<br>
			</c:if>
<!-- ************************************* -->	

<!-- *******************行政处罚历史信息****************** -->				
			<c:if test="${CASEINFOS_LIST!=null && fn:length(CASEINFOS_LIST)>0 }">
			<table style="width:99%;" >
				<tr>
				<th style="background-color: #C4E1FF;width: 99%;height: 30px;"  colspan = '4'>行政处罚历史信息</th>
				</tr>
				<c:forEach items="${CASEINFOS_LIST}" var="caseInfos" varStatus="i">
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">案发时间</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${caseInfos.caseTime}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">案由</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${caseInfos.caseReason}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">案值</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${caseInfos.caseVal}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">违法行为类型</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${caseInfos.caseType}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">执行类别</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${caseInfos.exeSort}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">案件结果</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${caseInfos.caseResult}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">处罚决定文书</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${caseInfos.penDecNo}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">处罚决定书签发日期</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${caseInfos.penDecIssDate}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">作出行政处罚决定机关名称</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${caseInfos.penAuth}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">主要违法事实</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${caseInfos.illegFact}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">处罚依据</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${caseInfos.penBasis}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">处罚种类</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${caseInfos.penType}</td>
				</tr>
				
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">处罚结果</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${caseInfos.penResult}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">处罚金额</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${caseInfos.penAm}</td>
				</tr>
								
				<tr align="center">
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;">处罚执行情况</td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;">${caseInfos.penExeSt}</td>
					<td width="15%" style="word-break:break-all; word-wrap:break-word;cursor: pointer;"> </td>
					<td width="35%" align="center" style="word-break:break-all; word-wrap:break-word;"> </td>
				</tr>
				</c:forEach>
			</table>
			<br>
			</c:if>
<!-- ************************************* -->
</table>	
</body>
<script type="text/javascript">
function againQueryIdent(applyId,obj){
	$("#reset_ident").attr("disabled",true);
	$.ajax({
		type:'POST',
      	data:{
      		"applyId":applyId
      	},
      	url:'${ctxPath}/app/clic/creditTXSK/IdentityTransferResults/reconnect.do',
      	success : function(data){
      		window.location.reload();
      	},
      	beforeSend: function(){
      		$('#warningIdent').text('正在处理，请稍等！');
      	}
	});
}

function againQueryEnter(applyId,obj){
	$("#reset_enter").attr("disabled",true);
	$.ajax({
		type:'POST',
      	data:{
      		"applyId":applyId
      	},
      	url:'${ctxPath}/app/clic/creditTXSK/EnterpriseInfoTransferResults/reconnect.do',
      	success : function(data){
      		window.location.reload();
      	},
      	beforeSend: function(){
      		$('#warningEnter').text('正在处理，请稍等！');
      	}
	});
}

$(document).ready(function(){
$("#reset_enter").attr("disabled",false);
$("#reset_ident").attr("disabled",false);
});

</script>
</html>
