<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/css/select2.min.css">
<!-- CSS App -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/themes/flat-blue.css">
</head>

<body class="flat-blue login-page"
	style="background: url(${pageContext.request.contextPath}/img/login5.jpg);width: 100%">
	<div class="container">
		<div class="login-box">
			<div>
				<div class="login-form row">
					<div class="col-sm-12 text-center login-header">
						<i class="login-logo fa fa-connectdevelop fa-5x"></i>
						<h4 class="login-title">Flat Admin V2</h4>
					</div>
					<div class="col-sm-12">
						<div class="login-body">
							<div class="progress hidden" id="login-progress">
								<div
									class="progress-bar progress-bar-success progress-bar-striped active"
									role="progressbar" aria-valuenow="100" aria-valuemin="0"
									aria-valuemax="100" style="width: 100%">Log In...</div>
							</div>
							<form action="addyl/login">
								<div class="control">
									<input type="text" name="username" class="form-control" value="admin" />
								</div>
								<div class="control">
									<input type="password"  name="password" class="form-control" value="123456" />
								</div>
								<div class="login-button text-center">
									<input type="submit"  class="btn btn-primary" value="Login">
								</div>
							</form>
						</div>
						<div class="login-footer">
							<span class="text-right"><a href="#" class="color-white">Forgot
									password?</a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Javascript Libs -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/js/jquery.min.js"></script>
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
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/js/select2.full.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/js/ace/ace.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/js/ace/mode-html.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/js/ace/theme-github.js"></script>
	<!-- Javascript -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/app.js"></script>
</body>

</html>
