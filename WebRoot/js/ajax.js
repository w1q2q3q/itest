
$(function(){
	$('#submitbtn').click(function(){
		 var a="";
		 var b=""
         var m=$("input[name='name']").val();
         var m1=$("input[name='describe']").val();
         var m2=$("input[name='url']").val();
         var m3=$("select[name='select1']").val();
         a+="{\"name\":\""+m+"\",\"describe\":\""+m1+"\",\"url\":\""+m2+"\",\"select1\":\""+m3+"\"";
        alert(a); 
      a+=",\"herder\": [";    
     $("tbody[name='tbody1']").find("tr").each(function(){
        var tdArr = $(this).children();
        var h1 = tdArr.eq(0).find('input').val();//收入类别
        var h2 = tdArr.eq(1).find('input').val();//收入金额
        var h3 = tdArr.eq(2).find('input').val();//    备注
        var h4 = tdArr.eq(3).find('input').val();//    备注    
        a+="{\"ID\":\""+h1+"\",\"herdername\":\""+h2+"\", \"herdervalue\":\""+h3+"\", \"herderdescribe\":\""+h4+"\"},"
        //alert(history_income_type);
       // alert(history_income_money);
        //alert(history_income_remark);
       // alert(history_income_remark1);  
    });  
     a = a.substring(0,a.length-1);
       a+="]";  
       alert(b);
       
    var c="";
    a+=",\"vlaue\": [";    
    $("tbody[name='tbody']").find("tr").each(function(){
        var tdArr = $(this).children();
        var h1 = tdArr.eq(0).find('input').val();//收入类别
        var h2 = tdArr.eq(1).find('input').val();//收入金额
        var h3 = tdArr.eq(2).find('input').val();//    备注
        var h4 = tdArr.eq(3).find('input').val();//    备注
        a+="{\"ID\":\""+h1+"\",\"name\":\""+h2+"\", \"value\":\""+h3+"\", \"describe\":\""+h4+"\"},"
        //alert(history_income_type);
       // alert(history_income_money);
       // alert(history_income_remark);
       // alert(history_income_remark1);  
    }); 
    a = a.substring(0,a.length-1);
    a+="]}"; 
    a.replace("\\","");
    alert(a);
    
//         var m2=document.getElementByName("describe").value;
//          var m3=document.getElementByName("url").value;
//          var m4=document.getElementByName("select1").value;
//          var m5=document.getElementByName("method").value;
//         var m6=document.getElementByName("method1").value;
//         var display =document.getElementByName("list").css('display');
//        if(display != 'none'){
//        // if(document.getElementByName("list").css("display")!='none')
//           var m7=document.getElementByName("id").value;
//           var m8=document.getElementByName("valuename").value;
//          var m9=document.getElementByName("value").value;
//          var m10=document.getElementByName("describe1").value;
//          }
//          else{
//          	var m11=document.getElementByName("test").value;
//          }
//          var form = new FormData(document.getElementById("tf"));
//             var req = new XMLHttpRequest();
//             req.open("post", "${pageContext.request.contextPath}/public/testupload", false);
//             req.send(form);
            $.ajax({
            	type:"post",
                url:"json", 
                async:false, 
                data:JSON.stringify(a),
                contentType:"application/json",
                success:function(data){ 
                alert("chengong");	
                window.location.href="addperson";
                },
                error:function(e){
                	alert("shibai");	
                    alert(m);  
                }
            })        
        })
})

//$(function(){
//$('#submitbtn').click(function(){
//   $("form").ajaxSubmit(function(data){
//              alert(data);
//         })
//})
//         
//      })