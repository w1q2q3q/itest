<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>repot</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
<style type="text/css" media="screen">
body        { font-family: verdana, arial, helvetica, sans-serif; font-size: 80%; }
table       { font-size: 100%; }
pre         { }

/* -- heading ---------------------------------------------------------------------- */
h1 {
	font-size: 16pt;
	color: gray;
}
.heading {
    margin-top: 0ex;
    margin-bottom: 1ex;
}

.heading .attribute {
    margin-top: 1ex;
    margin-bottom: 0;
}

.heading .description {
    margin-top: 4ex;
    margin-bottom: 6ex;
}

/* -- css div popup ------------------------------------------------------------------------ */
a.popup_link {
}

a.popup_link:hover {
    color: red;
}

.popup_window {
    display: none;
    position: relative;
    left: 0px;
    top: 0px;
    /*border: solid #627173 1px; */
    padding: 10px;
    background-color: #E6E6D6;
    font-family: "Lucida Console", "Courier New", Courier, monospace;
    text-align: left;
    font-size: 8pt;
    width: 500px;
}

}
/* -- report ------------------------------------------------------------------------ */
#show_detail_line {
    margin-top: 3ex;
    margin-bottom: 1ex;
}
#result_table {
    width: 80%;
    border-collapse: collapse;
    border: 1px solid #777;
}
#header_row {
    font-weight: bold;
    color: white;
    background-color: #777;
}
#result_table td {
    border: 1px solid #777;
    padding: 2px;
}
#total_row  { font-weight: bold; }
.passClass  { background-color: #6c6; }
.failClass  { background-color: #c60; }
.errorClass { background-color: #c00; }
.passCase   { color: #6c6; }
.failCase   { color: #c60; font-weight: bold; }
.errorCase  { color: #c00; font-weight: bold; }
.hiddenRow  { display: none; }
.testcase   { margin-left: 2em; }


/* -- ending ---------------------------------------------------------------------- */
#ending {
}

</style>

</head>
<body>


<div class='heading'>
<h1>repot</h1>
<p class='attribute'><strong>Start Time:</strong>2017-04-21-15-08-59</p>
<p class='attribute'><strong>Duration:</strong> 0:00:00</p>

<p class='description'>登录</p>
</div>



<p id='show_detail_line'>Show
<a href='javascript:showCase(0)'>Summary</a>
<a href='javascript:showCase(1)'>Failed</a>
<a href='javascript:showCase(2)'>All</a>
</p>
<table id='result_table'>
<colgroup>
<col align='left' />
<col align='right' />
<col align='right' />
<col align='right' />
<col align='right' />
<col align='right' />
</colgroup>
<tr id='header_row'>
    <td>Case No</td>
    <td>Desc</td>
    <td>Date</td>
    <td>Result</td>
    <td>View</td>
</tr>
<c:forEach var="cass" items="${cass}">
<c:if test="${cass.aeer == 0}">
<tr class='passClass'>
</c:if>
<c:if test="${cass.aeer == 1}">
<tr class='failClass'>
</c:if>
		<td>
		<a href="../../itest/addyl/getaddylById?id=${cass.ylid}" target="_top">${cass.ylid}: ${cass.name}</a>
		    
		</td>
		<td> 
		     ${cass.assertc}
		</td>
		<td> 
		     ${cass.data}
		</td>
		<td>
		    <c:if test="${cass.aeer == 0}">
		       pass
		    </c:if>
		    <c:if test="${cass.aeer == 1}">
		       fail
		    </c:if>
		</td>
		<td>
		   <a href = src>url</a>
		</td> 
</tr>
</c:forEach> 


<tr id='total_row'>
    <td>Total</td>
    <td>All:12</td>
    <td>Pass:9</td>
    <td>Fail:3</td>
    <td>Error:0</td>
</tr>
</table>

<div id='ending'>&nbsp;</div>

</body>
</html>
