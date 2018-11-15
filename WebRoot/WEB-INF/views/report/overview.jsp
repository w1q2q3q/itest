<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

	<head>
		<title>Test Results Report - Overview</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
		<meta name="description" content="TestNG unit test results." />
		<link href="reportng.css" rel="stylesheet" type="text/css" /> </head>
      <link rel="stylesheet" type="text/css"
	      href="${pageContext.request.contextPath}/css/reportng.css">
	<body>
		<h1>Test Results Report</h1>
		<table class="overviewTable">
			<tr>
				<th colspan="6" class="header suite">
					<div class="suiteLinks"> </div>Suite </th>
			</tr>
			<tr class="columnHeadings">
				<td>&nbsp;</td>
				<th>Passed</th>
				<th>Skipped</th>
				<th>Failed</th>
				<th>Pass Rate</th>
			</tr>
			<c:forEach var="zhu" items="${zhu}">
			<tr class="test">
				<td class="test">
					<a href="reportview?cassid=${cassid}&number=${number}&zhuid=${zhu[0]}&method=${method}">${zhu[1]}</a>
				</td>
				<td class="passed number">9</td>
				<td class="zero number">0</td>
				<td class="zero number">3</td>
				<td class="passRate"> 100.00% </td>
			</tr>
			</c:forEach>
			
			
			
			
			
		</table>
	</body>

</html>