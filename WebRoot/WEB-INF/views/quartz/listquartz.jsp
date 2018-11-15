<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   <%@ page language="java" import="java.util.* " %>
	<%@ page import="com.itest.entity.zhu" %>
	<%@ page import="org.springframework.ui.Model" %>
<!DOCTYPE html>
<html>

<head>
    <title>Flat Admin V.2 - Free Bootstrap Admin Templates</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
    <!-- CSS Libs -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/css/bootstrap-switch.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/css/checkbox3.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/css/dataTables.bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/css/select2.min.css">
    <!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/themes/flat-blue.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/themes/flat-green.css">
<style type="text/css">   
.mytable {   
   table-layout: fixed;   
   width: 98% border:0px;   
   margin: 0px;   
}    
.mytable tr td {   
    text-overflow: ellipsis; /* for IE */  
    -moz-text-overflow: ellipsis; /* for Firefox,mozilla */  
    overflow: hidden;   
    white-space: nowrap;   
    border: 0px solid;   
    text-align: left   
}   
</style> 
    
    
</head>
<body class="flat-blue">
    <div class="app-container expanded">
        <div class="row content-container">
            <nav id="navbar" class="navbar navbar-default navbar-fixed-top navbar-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-expand-toggle">
                            <i class="fa fa-bars icon"></i>
                        </button>
                        <ol class="breadcrumb navbar-breadcrumb">
                            <li>用例管理</li>
                            <li class="active">用例组</li>
                        </ol>
                        <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                            <i class="fa fa-th icon"></i>
                        </button>
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                            <i class="fa fa-times icon"></i>
                        </button>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-comments-o"></i></a>
                            <ul class="dropdown-menu animated fadeInDown">
                                <li class="title">
                                    Notification <span class="badge pull-right">0</span>
                                </li>
                                <li class="message">
                                    No new notification
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown danger">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-star-half-o"></i> 4</a>
                            <ul class="dropdown-menu danger  animated fadeInDown">
                                <li class="title">
                                    Notification <span class="badge pull-right">4</span>
                                </li>
                                <li>
                                    <ul class="list-group notifications">
                                        <a href="#">
                                            <li class="list-group-item">
                                                <span class="badge">1</span> <i class="fa fa-exclamation-circle icon"></i> new registration
                                            </li>
                                        </a>
                                        <a href="#">
                                            <li class="list-group-item">
                                                <span class="badge success">1</span> <i class="fa fa-check icon"></i> new orders
                                            </li>
                                        </a>
                                        <a href="#">
                                            <li class="list-group-item">
                                                <span class="badge danger">2</span> <i class="fa fa-comments icon"></i> customers messages
                                            </li>
                                        </a>
                                        <a href="#">
                                            <li class="list-group-item message">
                                                view all
                                            </li>
                                        </a>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown profile">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">管理员 <span class="caret"></span></a>
                            <ul class="dropdown-menu animated fadeInDown">
                                <li class="profile-img">
                                    <img src="${pageContext.request.contextPath}/img/profile/picjumbo.com_HNCK4153_resize.jpg" class="profile-img">
                                </li>
                                <li>
                                    <div class="profile-info">
                                        <h4 class="username">管理员</h4>
                                        <p>emily_hart@email.com</p>
                                        <div class="btn-group margin-bottom-2x" role="group">
                                            <button type="button" class="btn btn-default"><i class="fa fa-user"></i>系统管理员</button>
                                            <button type="button" class="btn btn-default"><i class="fa fa-sign-out"></i> 退出系统</button>
                                            
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
            <div id="sidebar" class="side-menu sidebar-inverse">
                <nav class="navbar navbar-default" role="navigation">
                	<div class="side-menu-container">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="#">
                                <div class="icon fa fa-paper-plane"></div>
                                <div class="title">测试平台  V.1</div>
                            </a>
                            <button type="button" class="navbar-expand-toggle pull-right visible-xs">
                                <i class="fa fa-times icon"></i>
                            </button>
                        </div>
                        <ul class="nav navbar-nav">
                            <li class="active">
                                <a href="../index.html">
                                    <span class="icon fa fa-tachometer"></span><span class="title">首页</span>
                                </a>
                            </li>
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-element">
                                    <span class="icon fa fa-desktop"></span><span class="title">用例管理</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-element" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                           	<li><a href="../jump/zhu">用例组</a></li>
											<li><a href="../addyl/Interface">添加用例</a></li>
											<li><a href="../jump/yongliku">用例库</a></li>                                       
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-table">
                                    <span class="icon fa fa-table"></span><span class="title">任务管理</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-table" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="table/table.html">定时计划</a>
                                            </li>
                                            <li><a href="../cassgroup/findtask">任务内容</a>
                                            </li>
                                            <li><a href="table/datatable.html">任务日志</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-form">
                                    <span class="icon fa fa-file-text-o"></span><span class="title">环境设置</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-form" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="form/ui-kits.html">Form UI Kits</a>
                                            </li>
                                            <li><a href="form/ui-kits.html">Form UI Kits</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            
                            <!-- Dropdown-->
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#component-example">
                                    <span class="icon fa fa-cubes"></span><span class="title">Components</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="component-example" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="components/pricing-table.html">Pricing Table</a>
                                            </li>
                                            <li><a href="components/chartjs.html">Chart.JS</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <!-- Dropdown-->
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-example">
                                    <span class="icon fa fa-slack"></span><span class="title">Page Example</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-example" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="pages/login.html">Login</a>
                                            </li>
                                            <li><a href="pages/index.html">Landing Page</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <!-- Dropdown-->
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-icon">
                                    <span class="icon fa fa-archive"></span><span class="title">Icons</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-icon" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="icons/glyphicons.html">Glyphicons</a>
                                            </li>
                                            <li><a href="icons/font-awesome.html">Font Awesomes</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="license.html">
                                    <span class="icon fa fa-thumbs-o-up"></span><span class="title">License</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
            </div>
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">任务列表</span>
                        <div class="description">with jquery Datatable for display data with most usage functional. such as search, ajax loading, pagination, etc.</div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                    <div class="title">
                                    <button type="button" class="btn btn-primary btn-info" data-toggle="modal" data-target="#modalInfo">添加组</button>
                                    <button type="button" class="btn btn-primary btn-info" data-toggle="modal" data-target="#model">添加任务</button>
                                </div>
                               </div>
                                </div>
                               <form action="../cassgroup/zhurun" id="formid" method="post">
                               
                                <div class="card-body">
                                    <table class="mytable table table-striped" cellspacing="0" width="100%">
                                        <thead>
                                            <tr  >
                                                    <th class="center" width="13%">定时任务名称</th>
						                            <th class="center" width="13%">任务组名称</th>
						                            <!-- <th class="center">触发器组名称</th>
						                            <th class="center"width="20%">触发器名称</th> -->
						                            <th class="center" width="13%">时间表达式</th>
						                            <th class="center" width="15%">上次运行时间</th>
						                            <th class="center" width="15%">下次运行时间</th>
						                            <th class="center" width="10%" >任务状态</th>
						                            <!-- <th class="center">已经运行时间</th> -->
						                            <!-- <th class="center">持续运行时间</th> -->
						                            <!-- <th class="center">开始时间</th>
						                            <th class="center">结束时间</th>
						                            <th class="center">任务类名</th> -->
						                            <!-- <th class="center">方法名称</th> -->
						                            <!-- <th class="center">jobObject</th> -->
						                            <!-- <th class="center">运行次数</th>  -->
						                            <th class="center" width="20%">操作</th>
						                            
                                            </tr>
                                        </thead>
                                        <tbody>
                                       <c:forEach items="${jobInfos}" var="var" varStatus="vs">
                                          <tr >
                                        <td class='container' style="width: auto;"><div style="margin-top:10px" >${var.jobName}</div></td>
                                        <td class='center' style="width: auto;"><div style="margin-top:10px" >${var.jobGroup}</div></td>
                                        <%-- <td class='center' style="width: auto;">${var.triggerGroupName}</td>
                                        <td class='center' style="width: auto;">${var.triggerName}</td> --%>
                                        <td class='center' style="width: auto;"><div style="margin-top:10px" >${var.cronExpr}</div></td>
                                        <td class='center' style="width: auto;"><div style="margin-top:10px" ><fmt:formatDate value="${var.previousFireTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div></td>
                                        <td class='center' style="width: auto;"><div style="margin-top:10px" ><fmt:formatDate value="${var.nextFireTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div></td>
                                        <td class='center' style="width: auto;">
                                         <div style="margin-top:10px" >   
                                         <c:if test="${var.jobStatus == 'NONE'}">
                                            <span class="label">未知</span>
                                            </c:if>
                                            <c:if test="${var.jobStatus == 'NORMAL'}">
                                            <span class="label label-success arrowed" style="height: 100%">正常运行</span>
                                            </c:if>
                                            <c:if test="${var.jobStatus == 'PAUSED'}">
                                            <span class="label label-warning" style="">暂停状态</span>
                                            </c:if>
                                            <c:if test="${var.jobStatus == 'COMPLETE'}">
                                            <span class="label label-important arrowed-in">完成状态</span>
                                            </c:if>
                                            <c:if test="${var.jobStatus == 'ERROR'}">
                                            <span class="label label-info arrowed-in-right arrowed">错误状态</span>
                                            </c:if>
                                            <c:if test="${var.jobStatus == 'BLOCKED'}">
                                            <span class="label label-inverse">锁定状态</span>
                                            </c:if>
                                            </div>
                                        </td>
                                        <%-- <td class='center' style="width: auto;">${var.runTimes}</td> --%>
                                        <%-- <td class='center' style="width: auto;">${var.duration}</td> --%>
                                        <%-- <td class='center' style="width: auto;"><fmt:formatDate value="${var.startTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                        <td class='center' style="width: auto;"><fmt:formatDate value="${var.endTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td> --%>
                                       <%--  <td class='center' style="width: auto;">${var.jobClass}</td> --%>
                                        <%-- <td class='center' style="width: auto;">${var.jobMethod}</td> --%>
                                        <%-- <td class='center' style="width: auto;">${var.jobObject}</td> --%>
                                        <%-- <td class='center' style="width: auto;">${var.count}</td> --%>
                                        <td class='center' style="width: auto;">
                                            <%-- <a class="btn btn-minier btn-info" onclick="triggerJob('${var.jobName}','${var.jobGroup}');"><i class="icon-edit"></i>运行</a> --%>
                                            <a class="btn btn-minier btn-success" onclick="edit('${var.jobName}','${var.jobGroup}');"><i class="icon-edit"></i>编辑</a>
                                            <a class="btn btn-minier btn-warning" onclick="pauseJob('${var.jobName}','${var.jobGroup}');"><i class="icon-edit"></i>暂停</a>
                                            <a class="btn btn-minier btn-info" onclick="resumeJob('${var.jobName}','${var.jobGroup}');"><i class="icon-edit"></i>恢复</a>
                                            <a class="btn btn-minier btn-danger" onclick="deleteJob('${var.jobName}','${var.jobGroup}','${var.triggerName}','${var.triggerGroupName}');"><i class="icon-edit"></i>删除</a>
                                          <a class="btn btn-minier btn-info" href="findtast?id=${var.jobId}"><i class="icon-edit"></i>查看</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                            
                                        </tbody>
                                    </table>
                                </div>
                                </form>
                            </div>
                            
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <footer class="app-footer">
            <div class="wrapper">
                <span class="pull-right">2.1 <a href="#"><i class="fa fa-long-arrow-up"></i></a></span> © 2015 Copyright.
            </div>
        </footer>
    <div>
    	<!-- Javascript Libs -->
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/lib/js/jquery.min.js"></script>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/js/jquery.fix.clone.js"></script>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/lib/js/bootstrap-select.js"></script>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/lib/js/bootstrap.min.js"></script>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/lib/js/Chart.min.js"></script>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/lib/js/bootstrap-switch.min.js"></script>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/lib/js/jquery.matchHeight-min.js"></script>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/lib/js/jquery.dataTables.min.js"></script>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/lib/js/dataTables.bootstrap.min.js"></script>
				<!--<script type="text/javascript" src="../../lib/js/select2.full.min.js"></script>-->
				<script type="text/javascript"
			        src="${pageContext.request.contextPath}/js/index1.js"></script>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/lib/js/ace/ace.js"></script>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/lib/js/ace/mode-html.js"></script>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/lib/js/ace/theme-github.js"></script>
				<!-- Javascript -->
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/js/app.js"></script>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/js/theming.js"></script>
				<!-- Javascript -->
    <!-- Javascript -->
    <script type="text/javascript">
  	var url = "${pageContext.request.contextPath}";
  	function add(){
  		window.location.href = url + "/quartz/toAdd";
  	}
  	
  	function edit(jobName,jobGroup){
  		window.location.href = url + "/quartz/toEdit?jobName="+jobName+"&jobGroup="+jobGroup;
  	}
  	
  //暂停任务
  	function pauseJob(jobName,jobGroupName){
  		$.post(url + "/quartz/pauseJob",{"jobName":jobName,"jobGroupName":jobGroupName},function(data){
  			if(data.status = 'success'){
  				window.location.href = window.location.href;
  			}else{
  				alert("操作失败，请刷新重新！");
  			}
  		});
  	}
  
  //恢复任务
  	function resumeJob(jobName,jobGroupName){
  		$.post(url + "/quartz/resumeJob",{"jobName":jobName,"jobGroupName":jobGroupName},function(data){
  			if(data.status = 'success'){
  				window.location.href = window.location.href;
  			}else{
  				alert("操作失败，请刷新重新！");
  			}
  		});
  	}
  	//删除
  	function deleteJob(jobName,jobGroupName,triggerName,triggerGroupName){
  		$.post(url + "/quartz/deleteJob",{"jobName":jobName,"jobGroupName":jobGroupName,"triggerName":triggerName,"triggerGroupName":triggerGroupName},
  				function(data){
  			if(data.status = 'success'){
  				window.location.href = window.location.href;
  			}else{
  				alert("操作失败，请刷新重新！");
  			}
  		});
	
  	}
  	
  	/* //执行任务
  	function triggerJob(a,b){
  		var url = "triggerJob";
  		var d = {jobName:a,jobGroupName:b};
  		$.post(url,d,function(data){
  			if(data.status = 'ok'){
  				window.location.href = window.location.href;
  			}
  		});
  	} */
  </script>
</body>

</html>
