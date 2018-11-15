<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/index.js"></script>
		<script src="${pageContext.request.contextPath}/js/ajax.js"></script>
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
		<link href="${pageContext.request.contextPath}/css/index.css" rel='stylesheet' type='text/css' />
	</head>

	<body>
<div class="panel panel-default">
    <div class="panel-body">
		<div class="container-fluid back top">
		<div class="col-lg-9"></div>
		<div class="col-lg-3">
		<h4 style="float:left">管理员名：<%String value= (String)session.getAttribute("username");%><%=value%></h4>
		<input type="button" value="注销" onclick="javascrtpt:window.location.href='logout'"></div>
		</div>
		</div>
		</div>
	
		<div class="container-fluid back top1">
			<div class="row">
				<div class="col-lg-2   back1 left">.col-md-8
				<div class="panel panel-default" style="height:550px">
                     <div class="panel-body col-lg-12 " >
				</div>
				</div>	
				</div>
				
				
				
				<div class="col-lg-10  back2 right">
				
				<div class="panel panel-primary" style="margin: 30px;">
							
	<div class="panel-heading">
		<h3 class="panel-title">用例添加</h3>
	</div>
	<div class="panel-body">
					<div>	
					      <form class="form-horizontal">
                               <div class="form-group" style="margin: 20px 0px 0px 0px;" >
                                  <label for="exampleInputName2" class="col-lg-2 control-label">用例名称：</label>
                                  <div class="col-lg-4">
                                     <input name="name" type="text" class="form-control" id="exampleInputName2">
                                  </div>
                                </div>
                                <div class="form-group" style="margin: 10px 0px 0px 0px;" >
                                  <label for="exampleInputName2" class="col-lg-2 control-label">用例描述：</label>
                                  <div class="col-lg-4">
                                     <input name="describe" type="text" class="form-control" id="exampleInputName2">
                                  </div>
                                </div>
                                <div class="form-group" style="margin: 10px 0px 0px 0px;" >
                                  <label for="exampleInputName2" class="col-lg-2 control-label">URL地址：</label>
                                  <div class="col-lg-4">
                                     <input name="url" type="text" class="form-control" id="exampleInputName2">
                                  </div>
                                  <label for="exampleInputName2" class="col-lg-1 control-label">方法：</label>
                                  <div class="col-lg-1" >
                                        <select name="select1" class="form-control input" style="padding: 0px 0px 0px 0px;">
                                           <option>POST</option>
                                           <option>GET</option>
                                           <option>3</option>
                                           <option>4</option>
                                           <option>5</option>
                                        </select>
                                  </div>  
                                </div>
                                
                        <!--
                        	作者：offline
                        	时间：2017-10-18
                        	描述：herder
                        -->      
                              <div id="deleat"> 
                              <div class="form-group" style="margin: 10px 0px 0px 0px;" >
                              	
                                  <label for="exampleInputName2" class="col-lg-2 control-label">请求头信息：</label>
                                  <div class="col-lg-8" >
                                        <div name="list" id="css1" style="height: 100%; background: #A6E1EC; display: block;">
                                    	<div id="css">
                                       <table class="table table-bordered">
		                                   <thead>
			                                 <tr>
				                                <th>ID</th>
				                                <th>Herder</th>
				                                <th>值</th>
				                                <th>描述</th>
				                                <th style="width: 50px;"><img id="tianjia1" class="image3"/></th>
			                                 </tr>
		                                   </thead>
		                                <tbody name="tbody1" id="tb1">
			                                <tr id="tr1" style="display: none;">
				                                    <td><input type="text" name="NO1" value="1"></td>
				                                    <td><input name="herdername" type="text" class="form-control" id="exampleInputName2"value="1"/></td>
				                                    <td><input name="herdervalue" type="text" class="form-control" id="exampleInputName2"value="1"/></td>
				                                    <td><input name="herderdescribe" type="text" class="form-control" id="exampleInputName2"value="1"/></td>
				                                    <td><img class="image4" onClick="deltr2(this)"/></td>
			                                  </tr>	  		                                    
		                                </tbody>
	                                  </table>	
                                    	</div>	
                                    </div>
                                  </div> 
                              </div>
                              
                              
                              </div>
                              
               <!--
                                     不显示
               -->               
                              <div id="qq"style="display: none;">
                              <div class="form-group" id="2" style="margin: 0px 0px 0px 0px; " >
                                  <label for="exampleInputName2" class="col-lg-2 control-label"></label>
                                 <div id="deleat">
                                  <div class="col-lg-2" >
                                        <select name="method" class="form-control input" style="padding: 0px 0px 0px 0px;">
                                           <option>空</option>
                                           <option>User-Agents</option>            
                                        </select>
                                  </div>  
                                  <div class="col-lg-4">
                                     <input name="method1" type="text" class="form-control" id="exampleInputName2">
                                  </div>
                                  </div>
                                  <div class="col-lg-1">
                                  <div class="image2" onClick="deltr(this)"></div>
                                  </div>  
                              </div>
                              </div> 
                   <!--
                   	
                   -->           
                                 <!--
                                 	作者：offline
                                 	时间：2017-10-18
                                 	描述：
                                 -->
                            <div class="form-group" style="margin: 20px 0px 0px 0px;" >
                            
                                  <label for="exampleInputName2" class="col-lg-2 control-label">请求数据：</label>
                                  <div class="col-lg-8">
                                    <div id="" style="height: 50px; ">
                                     <input  id="LIST" type="button" style="float:left;height: 35px;width: 100px;background: #C7254E; margin: 5px 15px 0px 15px;padding: 8px 12px 10px 20px;" value="LIST"/>
                                     <input id="JSON" type="button" style="float:left;height: 35px;width: 100px;background: #C7254E; margin: 5px 15px 0px 15px;padding: 8px 12px 10px 20px;" value="JSON"/>                                  
                                    </div>
                                    <!--
                                    	作者：offline
                                    	时间：2017-10-17
                                    	描述：LIST
                                    -->
                                    <div id="cse1">
                                    <div name="list" id="css1" style="height: 100%; background: #A6E1EC; display: block;">
                                    	<div id="css">
                                       <table class="table table-bordered">
		                                   <thead>
			                                 <tr>
				                                <th>ID</th>
				                                <th>名称</th>
				                                <th>值</th>
				                                <th>描述</th>
				                                <th style="width: 50px;"><img id="tianjia" class="image3"/></th>
			                                 </tr>
		                                   </thead>
		                                <tbody name="tbody" id="tb">
			                                <tr id="tr" style="display: none;">
				                                    <td><input type="text" name="NO" value="1"></td>
				                                    <td><input name="valuename" type="text" class="form-control" id="exampleInputName2"value="1"/></td>
				                                    <td><input name="value" type="text" class="form-control" id="exampleInputName2"value="1"/></td>
				                                    <td><input name="describe1" type="text" class="form-control" id="exampleInputName2"value="1"/></td>
				                                    <td><img class="image4" onClick="deltr1(this)"/></td>
			                                  </tr>	  		                                    
		                                </tbody>
	                                  </table>	
                                    	</div>	
                                    </div>
                                    </div>
                                   <!--
                                   	作者：offline
                                   	时间：2017-10-17
                                   	描述：JSON
                                   --> 
                                   <div id="cse2">
                                    <div name="json"  id="css2" style="height: 100%; background: #A6E1EC; display: none;">
                                        <textarea name="test" class="form-control" rows="6"></textarea>	
                                    </div>
                                    </div>
                                 </div>
                                </div>                          
                                <button type="button" class="btn btn-default" style="background:#31B0D5;margin: 50px 0px 0px 350px" onclick="test()">提交</button>
                                <button id="submitbtn" type="button" class="btn btn-default" style="background:#31B0D5;margin: 50px 0px 0px 50px">取消</button>
					         </form>
					</div>

				</div>
				</div>
				</div>
				
			</div>
		</div>

	</body>

</html>