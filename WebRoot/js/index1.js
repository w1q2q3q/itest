$(function() {
	$("#Json").click(function() {
		$("#list1").hide();
		$("#json1").show();
	});
	$("#List").click(function() {
		$("#json1").hide();
		$("#list1").show();
	});
	$("#kong").click(function() {
		$("#list1").hide();
		$("#json1").hide();
	});
	$("#herder1yes").click(function() {
		$("#herder1").show();
	});
	$("#herder1no").click(function() {
		$("#herder1").hide();
	});

	$("#duanyanyes").click(function() {
		$("#duanyanall").show();
	});
	$("#duanyanno").click(function() {
		$("#duanyanall").hide();
	});

});


$(function() {
	var i = $("#herder #herderlist").length;
	$("#add").click(function() {
		var c = "<tr id=\"herderlist\"><td class=\"success\" width=\"25%\"><input	type=\"text\" class=\"form-control\"	id=\"exampleInputName2\" placeholder=\"Name\"	style=\"height: 30px; width: 80%;\" name=\"herder1[" + i + "].name\"></td><td class=\"success\" width=\"30%\"><input	type=\"text\" class=\"form-control\"	id=\"exampleInputName2\" placeholder=\"value\"	style=\"height: 30px; width: 80%;\" name=\"herder1[" + i + "].value\"></td><td class=\"success\" width=\"30%\"><input	type=\"text\" class=\"form-control\"	id=\"exampleInputName2\" placeholder=\"描述\"	style=\"height: 30px; width: 80%;\" name=\"herder1[" + i + "].describev\"></td><td class=\"success\" width=\"10%\"><span	class=\"glyphicon glyphicon-minus\"	onClick=\"herder(this)\" saria-hidden=\"true\"	style=\"font-size: 19px\" /></td>	</tr>"
		$(c).appendTo("#herder");
		//			var v=$("#yian #tianjia:first-child").html();
		//          $("#yian").append(v);
		//			
		i++;
	});

});

function herder(opp) {
	var length = $("#herder #herderlist").length;
	if (length <= 1) {
		alert("至少保留一行");
	} else {
		$(opp).parent().parent().remove(); //移除当前行
		var herder = $("#herder #herderlist");
		for(var i=0; i<=herder.length; i++) 
		  { 
		  var tr=$("#herder #herderlist").eq(i).find("td"); 
		   $(tr).eq(0).find("input").attr("name","herder1["+i+"].name");
		   $(tr).eq(1).find("input").attr("name","herder1["+i+"].value");
		   $(tr).eq(2).find("input").attr("name","herder1["+i+"].describev");			    
		  } 	
	}
}


$(function() {
	var c = $("#list #listl").length;
	$("#add1").click(function() {
		var a = "<tr id=\"listl\">	<td class=\"success\" width=\"25%\"><input type=\"text\" class=\"form-control\"id=\"exampleInputName2\" placeholder=\"Name\"style=\"height: 30px; width: 80%;\" name=\"listvalue[" + c + "].name\"></td>	<td class=\"success\" width=\"30%\"><input type=\"text\" class=\"form-control\"id=\"exampleInputName2\" placeholder=\"value\"style=\"height: 30px; width: 80%;\" name=\"listvalue[" + c + "].value\"></td>	<td class=\"success\" width=\"30%\"><input type=\"text\" class=\"form-control\"id=\"exampleInputName2\" placeholder=\"描述\"style=\"height: 30px; width: 80%;\" name=\"listvalue[" + c + "].describev\"></td>	<td class=\"success\" width=\"10%\"><span class=\"glyphicon glyphicon-minus\" onClick=\"list(this)\" saria-hidden=\"true\" style=\"font-size: 19px\" /></td></tr>";
		$(a).appendTo("#list"); //在表格后面添加一行
		c++;
	});
});

function list(opp) {
	var length = $("#list #listl").length;
	if (length <= 1) {
		alert("至少保留一行");
	} else {
		$(opp).parent().parent().remove(); //移除当前行
		var list = $("#list #listl");
		for(var i=0; i<=list.length; i++) 
		  { 
		  var tr=$("#list #listl").eq(i).find("td"); 
		   $(tr).eq(0).find("input").attr("name","listvalue["+i+"].name");
		   $(tr).eq(1).find("input").attr("name","listvalue["+i+"].value");
		   $(tr).eq(2).find("input").attr("name","listvalue["+i+"].describev");			    
		  } 		
	}
}


$(function() {
	var t = $("#duanyian #duanyanlist").length;
	$("#duanyanadd").click(function() {
		var c = "<tr id=\"duanyanlist\">	<td class=\"info\" width=\"20%\">	<div style=\"width: 80%;\"><select class=\"form-control\" name=\"assertaddv[" + t + "].responseid\" >	<option value=\"0\">JSON Body</option>	<option value=\"1\">Text Body</option>	<option value=\"2\">Status Code</option></select>	</div></td><td class=\"info\" width=\"20%\"><input type=\"text\"	class=\"form-control\" id=\"exampleInputName2\"	placeholder=\"属性\" style=\"height: 30px; width: 80%;\" name=\"assertaddv[" + t + "].attribute\"></td><td class=\"info\" width=\"20%\">	<div style=\"width: 80%;\"><select class=\"form-control\" name=\"assertaddv[" + t + "].compare\">	<option value=\"0\">equals</option>	<option value=\"1\">contains</option>	<option value=\"2\">正则</option></select>	</div></td><td class=\"info\" width=\"30%\"><input type=\"text\"	class=\"form-control\" id=\"exampleInputName2\"	placeholder=\"value\" style=\"height: 30px; width: 80%;\" name=\"assertaddv[" + t + "].value\"></td><td class=\"success\" width=\"10%\"><span	class=\"glyphicon glyphicon-minus\"	onClick=\"duanyan(this)\" saria-hidden=\"true\"	style=\"font-size: 19px\" /></td>	</tr>";
		$(c).appendTo("#duanyian"); //在表格后面添加一行	 
		t++;
	});
});
function duanyan(opp) {
	var length = $("#duanyian #duanyanlist").length;
	if (length <= 1) {
		alert("至少保留一行");
	} else {
		$(opp).parent().parent().remove(); //移除当前行
		var duanyian = $("#duanyian #duanyanlist");
		for(var i=0; i<=duanyian.length; i++) 
		  { 
		  var td=$("#duanyian #duanyanlist").eq(i).find("td"); 
		   $(td).eq(0).find("select").attr("name","assertaddv["+i+"].responseid");
		   $(td).eq(1).find("input").attr("name","assertaddv["+i+"].attribute");
		   $(td).eq(2).find("select").attr("name","assertaddv["+i+"].compare");	
		   $(td).eq(3).find("input").attr("name","assertaddv["+i+"].value");
		  } 		
	}
}

/**
 *用例页面数据传输
 */
   function baocun() {
			document.form.action = "c";
			document.form.submit();
   }


   function chakan() {
			document.form.action = "v";
			document.form.submit();
   }
   function yunxing() {
			document.form.action = "yunxin";
			document.form.submit();
   }

   function zhurun() {
	   alert("cs");
		//document.form.action = "zhurun";
		document.getElementById("formid").submit();
}




//    function test(){
//       // var form = new FormData(document.getElementById("form"));
////         var req = new XMLHttpRequest();
////         req.open("post", "${pageContext.request.contextPath}/public/testupload", false);
////         req.send(form);
//        $.ajax({
//            url:"cv",
//            type:"post",
//            data:$('#form').serialize(),
//            processData:false,
//            contentType:false,
//            success:function(data){
//             //   window.clearInterval(timer);
//                console.log("over..");
//            },
//            error:function(e){
//                alert("错误！！");
//             //   window.clearInterval(timer);
//            }
//        });        
//       // get();//此处为上传文件的进度条
//    }

function yunxin() {
	$.ajax({
		url : "../itestc/yunxincs", //提交地址
		data : $("#form").serialize(), //将表单数据序列化
		type : "POST",
		dataType : "json",
		success : function(data) {
//			$("#Code").html('');
			 $("#StatusCode").html('');	
			 $("#herderbefore").html('');	
			 $("#herderafter").html('');
			 $("#xiangyin").html('');		 
			$("#Code").show();
			$(data).each(function(i,obj){
				//alert(obj.cs.xiangyintext);
			//  alert(obj.xiangyintext);	
			$("#htmltext").val(obj.xiangyintext);		
			   c=obj.cs;
		    $("#StatusCode").append('<h4>Status Code:'+obj.zhaungtai+'</h4>'); 
		    
		   // $("#Code").append('Status Code:'+JSON.stringify(obj.header)+'<br/>'); 
		   // $("#Code").JSONView(obj.header);
		    
		    var bf=obj.headerbefore;
		    $.each(bf, function (index) {  
		    $("#herderbefore").append(bf[index]+'</br>');})
		   // alert(JSON.stringify(obj.header));
					        
		    var b=obj.header;
		    $.each(b, function (index) {  
		    $("#herderafter").append(b[index]+'</br>');
		    });
		    }) ;
		   // alert(JSON.stringify(obj.header));
            $.each(c, function (index) {  
                //循环获取数据    
                var Id = c[index].zhaungtai;
                if(c[index].zhaungtai==1){
                $("#xiangyin").append('<tr class="success"><td>'+c[index].shuxin+'</td><td>'+c[index].xiangyintext+'</td></tr>');
                }else{
                $("#xiangyin").append('<tr class="danger"><td>'+c[index].shuxin+'</td><td>'+c[index].xiangyintext+'</td></tr>');	 	
                }                
            });		
	         //  $("#Mview").html("").append('<script type=\'text/html\' style=\'display:block\'>'+data+'<script>');
	        //  alert(  data.last());
	        //  $("#chakan").click();
			alert("成功");
		},
		error : function(e) {
			alert("错误！！" + e);

		}
	});
}



$("#checkAll").click(function () {  
	  if ($('#checkAll').is(':checked'))  {  
          $("input[name='zhucheck']").each(function () {  
              $(this).prop("checked", true);  
          });  
      } 
	  else {  
          $("input[name='zhucheck']").each(function () {  
              $(this).attr("checked",false);  
          });  
      }  

  }); 
  

 $("#jsonclick").click(function() {
	  var json=$("#htmltext").val();
	  try{
      $("#json").JSONView(json);
      /* $("#json-collapsed").JSONView(json, { collapsed: true, nl2br: true, recursive_collapser: true }); */
      $('#collapse-btn').on('click', function() {
        $('#jsons').JSONView('collapse');
      });

      $('#expand-btn').on('click', function() {
        $('#jsons').JSONView('expand');
      });

      $('#toggle-btn').on('click', function() {
        $('#jsons').JSONView('toggle');
      });

      $('#toggle-level1-btn').on('click', function() {
        $('#jsons').JSONView('toggle', 1);
      });

      $('#toggle-level2-btn').on('click', function() {
        $('#jsons').JSONView('toggle', 2);
      });
	  }catch(e){

		  alert("解析失败");
	  }
 });
 $("#addjsonclick").click(function() {
	 try{
	 var json=$("#jsonvalue").val();
	 $("#addjsonview").JSONView(json);
     }catch(e){

	  alert("解析失败");
 }
 });
 
 
 
 
