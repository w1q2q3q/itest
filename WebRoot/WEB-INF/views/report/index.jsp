<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset //EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="" lang="">

	<head>
		<title>Test Results Report</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
		<meta name="description" content="TestNG unit test results." />
	</head>
	<frameset cols="20%,*">
		<frame src="suites?cassid=${cassid}&id=${id}&number=${number}&method=${method}"  name="suites" />
		<frame src="overview?cassid=${cassid}&id=${id}&number=${number}&method=${method}" name="main" />
	</frameset>

</html>