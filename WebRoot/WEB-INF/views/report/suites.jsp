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
		<title>Test Results Report - Suites</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
		<meta name="description" content="TestNG unit test results." />
		<link rel="stylesheet" type="text/css"
	      href="${pageContext.request.contextPath}/css/reportng.css">
		<script type="text/javascript" src="reportng.js"></script>
	</head>

	<body style="margin-top: 0;">
		<div id="sidebarHeader">
			<h2>Test Results Report</h2>
			<p>
				<a href="overview?cassid=${cassid}&id=${id}&number=${number}&method=${method}" target="main">Overview</a>
			</p>
		</div>
		<table id="suites">
			<thead>
				<tr>
					<th class="header suite" onclick="toggleElement('tests-1', 'table-row-group'); toggle('toggle-1')"> <span id="toggle-1" class="toggle">&#x25bc;</span>Suite </th>
				</tr>
			</thead>
			<tbody id="tests-1" class="tests">	
					<c:forEach var="zhu" items="${zhu}">
					<tr>
						<td class="test">
							<a href="reportview?cassid=${cassid}&number=${number}&zhuid=${zhu[0]}&method=${method}" target="main">${zhu[1]}</a>
						</td>
					</tr>
					</c:forEach>
			</tbody>
		</table>
	</body>

</html>