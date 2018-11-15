<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page import="com.itest.entity.*" %><br data-filtered="filtered">
<!DOCTYPE html>
<html>
<head>
<title>Flat Admin V.2 - Free Bootstrap Admin Templates</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900'
	rel='stylesheet' type='text/css'>
<!-- CSS Libs -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/css/animate.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/css/bootstrap-switch.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/css/checkbox3.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/css/dataTables.bootstrap.css">
<!--<link rel="stylesheet" type="text/css" href="../../lib/css/select2.min.css">-->
<!-- CSS App -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/themes/flat-blue.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/themes/flat-green.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/index.css">
</head>

<body class="flat-blue">
	<div class="app-container expanded">
		<div class="row content-container">
			<nav id="navbar"
				class="navbar navbar-default navbar-fixed-top navbar-top">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-expand-toggle">
							<i class="fa fa-bars icon"></i>
						</button>
						<ol class="breadcrumb navbar-breadcrumb">
							<li>用例管理</li>
							<li class="active">添加用例</li>
						</ol>
						<button type="button"
							class="navbar-right-expand-toggle pull-right visible-xs">
							<i class="fa fa-th icon"></i>
						</button>
					</div>
					<ul class="nav navbar-nav navbar-right">
						<button type="button"
							class="navbar-right-expand-toggle pull-right visible-xs">
							<i class="fa fa-times icon"></i>
						</button>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"><i
								class="fa fa-comments-o"></i></a>
							<ul class="dropdown-menu animated fadeInDown">
								<li class="title">Notification <span
									class="badge pull-right">0</span>
								</li>
								<li class="message">No new notification</li>
							</ul></li>
						<li class="dropdown danger"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-expanded="false"><i class="fa fa-star-half-o"></i> 4</a>
							<ul class="dropdown-menu danger  animated fadeInDown">
								<li class="title">Notification <span
									class="badge pull-right">4</span>
								</li>
								<li>
									<ul class="list-group notifications">
										<a href="#">
											<li class="list-group-item"><span class="badge">1</span>
												<i class="fa fa-exclamation-circle icon"></i> new
												registration</li>
										</a>
										<a href="#">
											<li class="list-group-item"><span class="badge success">1</span>
												<i class="fa fa-check icon"></i> new orders</li>
										</a>
										<a href="#">
											<li class="list-group-item"><span class="badge danger">2</span>
												<i class="fa fa-comments icon"></i> customers messages</li>
										</a>
										<a href="#">
											<li class="list-group-item message">view all</li>
										</a>
									</ul>
								</li>
							</ul></li>
						<li class="dropdown profile"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-expanded="false">管理员 <span class="caret"></span></a>
							<ul class="dropdown-menu animated fadeInDown">
								<li class="profile-img"><img
									src="${pageContext.request.contextPath}/img/profile/picjumbo.com_HNCK4153_resize.jpg"
									class="profile-img"></li>
								<li>
									<div class="profile-info">
										<h4 class="username">
											<%
												String value = (String) session.getAttribute("username");
											%><%=value%></h4>
										<p>emily_hart@email.com</p>
										<div class="btn-group margin-bottom-2x" role="group">
											<button type="button" class="btn btn-default">
												<i class="fa fa-user"></i>系统管理员
											</button>
											<button type="button" class="btn btn-default">
												<i class="fa fa-sign-out"></i><a onclick="javascrtpt:window.location.href='logout'">退出系统</a>
											</button>
										</div>
									</div>
								</li>
							</ul></li>
					</ul>
				</div>
			</nav>

			<div id="sidebar" class="side-menu sidebar-inverse">
				<nav class="navbar navbar-default" role="navigation">
					<div class="side-menu-container">
						<div class="navbar-header">
							<a class="navbar-brand" href="#">
								<div class="icon fa fa-paper-plane"></div>
								<div class="title">测试平台 V.1</div>
							</a>
							<button type="button"
								class="navbar-expand-toggle pull-right visible-xs">
								<i class="fa fa-times icon"></i>
							</button>
						</div>
						<ul class="nav navbar-nav">
							<li class="active"><a href="../index.html"> <span
									class="icon fa fa-tachometer"></span><span class="title">首页</span>

							</a></li>
							<li class="panel panel-default dropdown"><a
								data-toggle="collapse" href="#dropdown-element"> <span
									class="icon fa fa-desktop"></span><span class="title">用例管理</span>
							</a> <!-- Dropdown level 1 -->
								<div id="dropdown-element" class="panel-collapse collapse">
									<div class="panel-body">
										<ul class="nav navbar-nav">
											<li><a href="../page/views/error">用例组</a></li>
											<li><a href="addyl.jsp">添加用例</a></li>
											<li><a href="yongliku.jsp">用例库</a></li>
										</ul>
									</div>
								</div></li>
							<li class="panel panel-default dropdown"><a
								data-toggle="collapse" href="#dropdown-table"> <span
									class="icon fa fa-table"></span><span class="title">任务管理</span>
							</a> <!-- Dropdown level 1 -->
								<div id="dropdown-table" class="panel-collapse collapse">
									<div class="panel-body">
										<ul class="nav navbar-nav">
											<li><a href="table/table.jsp">定时计划</a></li>
											<li><a href="../cassgroup/findtask">任务内容</a></li>
											<li><a href="table/datatable.jsp">任务日志</a></li>
										</ul>
									</div>
								</div></li>
							<li class="panel panel-default dropdown"><a
								data-toggle="collapse" href="#dropdown-form"> <span
									class="icon fa fa-file-text-o"></span><span class="title">环境设置</span>
							</a> <!-- Dropdown level 1 -->
								<div id="dropdown-form" class="panel-collapse collapse">
									<div class="panel-body">
										<ul class="nav navbar-nav">
											<li><a href="form/ui-kits.jsp">Form UI Kits</a></li>
											<li><a href="form/ui-kits.jsp">Form UI Kits</a></li>
										</ul>
									</div>
								</div></li>

							<!-- Dropdown-->
							<li class="panel panel-default dropdown"><a
								data-toggle="collapse" href="#component-example"> <span
									class="icon fa fa-cubes"></span><span class="title">接口库</span>
							</a> <!-- Dropdown level 1 -->
								<div id="component-example" class="panel-collapse collapse">
									<div class="panel-body">
										<ul class="nav navbar-nav">
											<li><a href="components/pricing-table.html">Pricing
													Table</a></li>
											<li><a href="components/chartjs.html">Chart.JS</a></li>
										</ul>
									</div>
								</div></li>
							<!-- Dropdown-->
							<li class="panel panel-default dropdown"><a
								data-toggle="collapse" href="#dropdown-example"> <span
									class="icon fa fa-slack"></span><span class="title">Page
										Example</span>
							</a> <!-- Dropdown level 1 -->
								<div id="dropdown-example" class="panel-collapse collapse">
									<div class="panel-body">
										<ul class="nav navbar-nav">
											<li><a href="pages/login.html">Login</a></li>
											<li><a href="pages/index.html">Landing Page</a></li>
										</ul>
									</div>
								</div></li>
							<!-- Dropdown-->
							<li class="panel panel-default dropdown"><a
								data-toggle="collapse" href="#dropdown-icon"> <span
									class="icon fa fa-archive"></span><span class="title">Icons</span>
							</a> <!-- Dropdown level 1 -->
								<div id="dropdown-icon" class="panel-collapse collapse">
									<div class="panel-body">
										<ul class="nav navbar-nav">
											<li><a href="icons/glyphicons.html">Glyphicons</a></li>
											<li><a href="icons/font-awesome.html">Font Awesomes</a>
											</li>
										</ul>
									</div>
								</div></li>
							<li><a href="license.html"> <span
									class="icon fa fa-thumbs-o-up"></span><span class="title">License</span>
							</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
			</div>
			<div class="container-fluid">
				<div class="side-body">
					<div class="card">
						<div class="loader-container text-center color-white">
							<div>
								<i class="fa fa-spinner fa-pulse fa-3x"></i>
							</div>
							<div>Loading</div>
						</div>

						<div class="card-header">
							<div class="card-title">
								<div class="title">添加用例</div>
								<input type="button" onClick="baocun()" id="" value="保存" /> 
								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">chakan</button>
								<input type="button" onClick="yunxing()" id="" value="运行" />
							</div>
						</div>
						
						
						
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">New message</h4>
      </div>
      <div id="Mview" class="modal-body">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
  </div>
						
						
						
						
	
						
						<div class="card-body" style="height: 100%;">

							<form action="" id="form" name="form" method="post">
								<div class="row">

									<div style="height: 20px !important; margin-bottom: 30px;">
										<div class="col-lg-2 col-lg-offset-1">
											<label for="exampleInputName2"
												style="float: right; color: #19B5FE;">组：</label>
										</div>
										<div class="col-lg-3">
											<select class="form-control" name="groupid"
												style="height: 30px;">
												<option value="1">1组</option>
												<option value="2">GET</option>
											</select>
										</div>
									</div>
								</div>

								<div class="row">
									<div style="height: 30px !important; margin-bottom: 20px;">
										<div class="col-lg-2 col-lg-offset-1">
											<label for="exampleInputName2"
												style="float: right; color: #19B5FE;">接口名称：</label>
										</div>
										<div class="col-lg-3">
											<input type="text" class="form-control"
												id="exampleInputName2" placeholder="Name" name="name" value="">
										</div>
									</div>
								</div>


								<div class="row">
									<div style="height: 20px !important;">
										<div class="col-lg-2 col-lg-offset-1">
											<label for="exampleInputName2"
												style="float: right; color: #19B5FE;">描述：</label>
										</div>
										<div class="col-lg-3">
											<input type="text" class="form-control"
												id="exampleInputName2" placeholder="Name" name="describev">
										</div>
									</div>
								</div>





								<!--
               	作者：offline
               	时间：2017-10-26                                                                                                                                                                         
               	描述：card
               -->
								<div class="card">
									<div class="card-header"
										style="height: 45px; margin-bottom: 10px;">
										<div class="card-title">
											<h5>请求数据:</h5>
										</div>
									</div>

									<div class="card-body no-padding">
										<div role="tabpanel">
											<!-- Nav tabs -->
											<ul class="nav nav-tabs" role="tablist">
												<li role="presentation" class="active"><a href="#home"
													aria-controls="home" role="tab" data-toggle="tab"
													aria-expanded="true">请求</a></li>
												<li role="presentation" class=""><a href="#profile"
													aria-controls="profile" role="tab" data-toggle="tab"
													aria-expanded="false">断言</a></li>
											</ul>
											<!-- Tab panes -->
											<div class="tab-content ">
												<div role="tabpanel" class="tab-pane active" id="home">
													<div class="container-fluid">
														<div style="margin-left: 40px;">
															<small>网址：</small>
															<div class="row">
																<div style="height: 50px;">
																	<div class="col-lg-2">
																		<div class="form-group" style="float: right;">
																			<select class="form-control" name="methodv" 
																				style="height: 30px;">
																				<option value="0">POST</option>
																				<option value="1">GET</option>
																			</select>
																		</div>
																	</div>
																	<div class="col-lg-4 col-xs-6">
																		<input type="text" class="form-control"
																			id="exampleInputName2" placeholder="URL"
																			style="height: 30px;" name="Url">
																	</div>
																</div>
															</div>
															<small>herder：</small>
															<div class="herder1"
																style="margin-left: 60px; margin-bottom: 15px;">
																<div class="radio">
				
																	<label> <input type="radio" name="herder"
																		id="herder1no" value="0" ${addyl.herder=='0'?'checked':'' }>无
																	</label> <label> <input type="radio" name="herder"
																		id="herder1yes" value="1" ${addyl.herder=='1'?'checked':'' } >添加
																	</label>
																	
																</div>
															</div>
															<!--
            	作者：offline
            	时间：2017-11-14
            	描述：
           -->

															<div id="herder1"
																style="margin-left: 60px; display: none;">
																<table class="table">
																	<thead>
																		<tr>
																			<th>name</th>
																			<th>value</th>
																			<th>描述</th>
																			<th>操作</th>
																		</tr>
																	</thead>
																	<tbody id="herder">
																		<tr id="herderlist">
																			<td class="success" width="25%"><input
																				type="text" class="form-control"
																				id="exampleInputName2" placeholder="Name"
																				style="height: 30px; width: 80%;"
																				name="herder1[0].name"></td>
																			<td class="success" width="30%"><input
																				type="text" class="form-control"
																				id="exampleInputName2" placeholder="value"
																				style="height: 30px; width: 80%;"
																				name="herder1[0].value"></td>
																			<td class="success" width="30%"><input
																				type="text" class="form-control"
																				id="exampleInputName2" placeholder="描述"
																				style="height: 30px; width: 80%;"
																				name="herder1[0].describev"></td>
																			<td class="success" width="10%"><span
																				class="glyphicon glyphicon-minus"
																				onClick="herder(this)" saria-hidden="true"
																				style="font-size: 19px" /></td>
																		</tr>
																	</tbody>
																</table>
																<div id="add"
																	style="height: auto; margin-left: 0px; margin-bottom: 10px;">
																	<span class="glyphicon glyphicon-plus"
																		saria-hidden="true" style="font-size: 15px" /> <font
																		size="2" color="#1ABC9C">添加参数</font>
																</div>
															</div>


															<small>值：</small>
															<div class="cs"
																style="margin-left: 60px; margin-bottom: 15px;">
																<div class="radio">
																	<label> <input type="radio" name="value" id="kong" value="0" ${addyl.value=='0'?'checked':'' } >无</label> 
																	<label> <input type="radio" name="value" id="List" value="1" ${addyl.value=='1'?'checked':'' }>List</label> 
																	<label> <input type="radio" name="value" id="Json" value="2" ${addyl.value=='2'?'checked':'' }>Json
																	</label>
																</div>
															</div>



															<div id="list1" style="display: none;">
																<div class="" style="margin-left: 60px;">
																	<table class="table">
																		<thead>
																			<tr>
																				<th>name</th>
																				<th>value</th>
																				<th>描述</th>
																				<th>操作</th>
																			</tr>
																		</thead>
																		<tbody id="list">
																			<tr id="listl">
																				<td class="success" width="25%"><input
																					type="text" class="form-control"
																					id="exampleInputName2" placeholder="Name"
																					style="height: 30px; width: 80%;"
																					name="listvalue[0].name"></td>
																				<td class="success" width="30%"><input
																					type="text" class="form-control"
																					id="exampleInputName2" placeholder="value"
																					style="height: 30px; width: 80%;"
																					name="listvalue[0].value"></td>
																				<td class="success" width="30%"><input
																					type="text" class="form-control"
																					id="exampleInputName2" placeholder="描述"
																					style="height: 30px; width: 80%;"
																					name="listvalue[0].describev"></td>
																				<td class="success" width="10%"><span
																					class="glyphicon glyphicon-minus"
																					onClick="list(this)" saria-hidden="true"
																					style="font-size: 19px" /></td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<div id="add1"
																	style="height: auto; margin-left: 70px; margin-bottom: 10px;">
																	<span class="glyphicon glyphicon-plus"
																		saria-hidden="true" style="font-size: 15px" /> <font
																		size="2" color="#1ABC9C">添加参数</font>
																</div>
															</div>

															<div id="json1" style="display: none;">
																<div class="row">
																	<div class="col-lg-6" style="margin-left: 60px;">
																		<textarea name="jsonvalue" class="form-control"
																			rows="5"></textarea>
																	</div>
																</div>
															</div>


														</div>
														<!--end-->
													</div>

												</div>
												<div role="tabpanel" class="tab-pane" id="profile">
													<small>断言：</small>

													<div style="margin-left: 60px; margin-bottom: 15px;">
														<div class="radio">
															<label> <input type="radio" name="assertadd"
																id="duanyanno" value="0" checked>无
															</label> <label> <input type="radio" name="assertadd"
																id="duanyanyes" value="1">添加
															</label>
														</div>
													</div>
													<div id="duanyanall"
														style="margin-left: 60px; display: none;">
														<table class="table">
															<thead>
																<tr>
																	<th>响应</th>
																	<th>属性</th>
																	<th>比对</th>
																	<th>value</th>
																	<th>操作</th>
																</tr>
															</thead>
															<tbody id="duanyian">

																<tr id="duanyanlist">
																	<td class="info" width="20%">
																		<div style="width: 80%;">
																			<select class="form-control"
																				name="assertaddv[0].responseid">
																				<option value="0">JSON Body</option>
																				<option value="1">Text Body</option>
																				<option value="2">Status Code</option>
																			</select>
																		</div>
																	</td>
																	<td class="info" width="20%"><input type="text"
																		class="form-control" id="exampleInputName2"
																		placeholder="属性" style="height: 30px; width: 80%;"
																		name="assertaddv[0].attribute"></td>
																	<td class="info" width="20%">
																		<div style="width: 80%;">
																			<select class="form-control"
																				name="assertaddv[0].compare">
																				<option value="0">equals</option>
																				<option value="1">contains</option>
																				<option value="2">正则</option>
																			</select>
																		</div>
																	</td>
																	<td class="info" width="30%"><input type="text"
																		class="form-control" id="exampleInputName2"
																		placeholder="value" style="height: 30px; width: 80%;"
																		name="assertaddv[0].value"></td>
																	<td class="success" width="10%"><span
																		class="glyphicon glyphicon-minus"
																		onClick="duanyan(this)" saria-hidden="true"
																		style="font-size: 19px" /></td>
																</tr>



															</tbody>
														</table>
														<div id="duanyanadd"
															style="height: auto; margin-left: 70px; margin-bottom: 10px;">
															<span class="glyphicon glyphicon-plus"
																saria-hidden="true" style="font-size: 15px" /> <font
																size="2" color="#1ABC9C">添加参数</font>










														</div>

													</div>
												</div>

											</div>
										</div>
									</div>

									<!--end-->






								</div>
							</form>

						</div>

					</div>
				</div>

			</div>

			<footer class="app-footer">
				<div class="wrapper">
					<span class="pull-right">2.1 <a href="#"><i
							class="fa fa-long-arrow-up"></i></a></span> © 2015 Copyright.
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
					src="${pageContext.request.contextPath}/lib/js/ace/ace.js"></script>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/lib/js/ace/mode-html.js"></script>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/lib/js/ace/theme-github.js"></script>
				<!-- Javascript -->
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/js/index1.js"></script>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/js/app.js"></script>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/js/theming.js"></script>
				<!-- Javascript -->
</body>

</html>