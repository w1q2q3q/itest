<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
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
                        <span class="title">用例组</span>
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
                                    
                                    
                                <!--
                                	作者：offline
                                	时间：2017-10-26
                                	描述：添加组
                                -->    	
                                    <div class="modal fade modal-info in" id="modalInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                           <form action="../jump/addzhu" method="post"> 
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">添加组</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                     
                                                          <div class="sub-title" >名称：</div>
                                                              <div>
                                                                 <input name="zname" type="text" class="form-control" placeholder="name">
                                                                      </div>
                                                               <div class="sub-title">描述：</div>
                                                                 <div>
                                                                     <textarea name="zdescribev" class="form-control" rows="4"></textarea>
                                                                 </div>                                
                                                    
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                        <button type="Submit" class="btn btn-info">OK</button>
                                                    </div>
                                                </div>
                                               </div>
                                            </form>
                                        </div>	
                                    <!--end -->	
                                   	
                                    
                                    
                                   
                                    </div>
                                    </div>
                                </div>
                               <form action="../cassgroup/zhurun" id="formid" method="post">
                                   <!--
                                	作者：offline
                                	时间：2017-10-26
                                	描述：添加任务
                                -->   
                               <div class="modal fade modal-info in" id="model" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">添加任务</h4>
                                                    </div>
                                                    
                                                    <div class="radio" style="margin-left:210px;margin-top: 30px">
													<label> <input type="radio" name="taskcheck" id="task" value="0" checked="checked">普通任务</label> 
													<label> <input type="radio" name="taskcheck" id="tasktime" value="1">定时任务
													</label>
												    </div>
												    
                                                    <div class="modal-body" id="taskadd">
                                                          <div class="sub-title" style="margin-top: 20px;margin-bottom: 10px">名称：</div>
                                                              <div>
                                                                 <input name="name" type="text" class="form-control" placeholder="name">
                                                              </div>
                                                               <div class="sub-title"style="margin-top: 30px;margin-bottom: 10px">描述：</div>
                                                                 <div>
                                                                     <textarea name="describev" class="form-control" rows="4"></textarea>
                                                                </div>  
                                                                                        
                                                    </div>
                                                     <div class="modal-body" id="tasktimeadd" style="display: none">
                                                          <div class="sub-title"style="margin-top: 30px;margin-bottom: 10px" >定时任务名称：</div>
                                                              <div>
                                                                 <input name="jobName" type="text" class="form-control">
                                                              </div>
                                                          <div class="sub-title" style="margin-top: 30px;margin-bottom: 10px">定时任务组：</div>
                                                               <div>
                                                                 <input name="jobGroupName" type="text" class="form-control" >
                                                              </div>
                                                          <div class="sub-title"style="margin-top: 30px;margin-bottom: 10px" >定时任务时间：</div>
                                                               <div>
                                                                 <input name="cron" type="text" class="form-control" >
                                                              </div>
                               
                                                    </div>
                                                    
                                                    
                                                    
                                                    
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                        <button type="button" onClick="zhurun()" class="btn btn-info">OK</button>
                                                    </div>
                                                </div>
                                               </div>                               
                                        </div>	
                                 <!-- end -->        
                                <div class="card-body">
                                    <table class="mytable table table-striped" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                             <!--    <th><input name="checkbox" type="checkbox" id="1"></th> -->
                                                <th><input id="checkAll" name="checkAll" type="checkbox"> ID</th>
                                                <th>名称</th>
                                                <th>描述</th>
                                                <th>用例数量</th>
                                                <th>创建时间</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                        <% List<zhu> zhufind=(List<zhu>)request.getAttribute("cs");
										for(int i=0;i<zhufind.size();i++){      
                                           %>
                                            <tr>  
                                                <td><input id="checkbox" name="zhucheck" type="checkbox" value="<%=zhufind.get(i).getId()%>"><%=zhufind.get(i).getId()%></td>
                                                <td><%=zhufind.get(i).getZname() %></td>
                                                <td><%=zhufind.get(i).getZdescribev() %></td>
                                                <td><%=zhufind.get(i).getNumber()%></td>
                                                <td><%=zhufind.get(i).getDate()%></td>
                                                <td><button type="button" onclick="location.href='../cassgroup/findcass?id=<%=zhufind.get(i).getId()%>'"class="btn btn-success btn-xs"><i class="glyphicon glyphicon-eye-open"></i></button>
                                                  <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                                  <button type="button" onclick="location.href='../jump/zdeleat?id=<%=zhufind.get(i).getId() %>'" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i></button></td>
                                            </tr>
                                            <%}%>
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
    $("#task").click(function() {
	    $("#taskadd").show();
	    $("#tasktimeadd").hide();	
    })
    $("#tasktime").click(function() {
	    $("#taskadd").hide();
	    $("#tasktimeadd").show();	
    }) 
   </script>
</body>

</html>
