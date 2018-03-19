<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--引入样式 -->
<link href="/storm/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="/storm/static/css/style.css" rel="stylesheet">
<!--引入JQuery -->
<script type="text/javascript" src="/storm/static/js/spin.min.js" ></script>
<script src="/storm/static/js/uitl.js"></script>
<script src="/storm/static/js/menu.js"></script>
<script src="/storm/static/js/waitLoding.js"></script>
<script src="/storm/static/js/jquery.min.js"></script>
<script src="/storm/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title>Insert title here</title>
</head>
<body style="padding: 30px;">
<!-- 	<div class="col-md-6">
		<p class="col-md-3" style="float: left;">百度首页Logo链接：</p>
		<button type="button" class="btn btn-info col-md-3" onclick="baiduLogo()">（点击爬取）</button>
	</div> -->
	<div class="text-center jumbotron" style="padding: 10px;">
		<!-- <p class="text-center" style="float: left;">爬虫-图片下载：</p> -->
		<button type="button" class="btn btn-primary btn-lg " style="padding-left: 110px;padding-right: 110px;" onclick="baiduImage()">（点击爬取）</button>
	</div>
	<div id="successImg">
		
	</div>
	<div id="faileImg">
		
	</div>


	<!-- modal -->
	<div class="modal fade" id="mymodal" tabindex="-1" role="dialog" aria-labelledby="mymodallabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="mymodallabel">输入访问的Url</h4>
				</div>
				<div class="modal-body">
					<div id="urlPre" class="input-group">
					  <span class="input-group-addon" id="basic-addon1">url</span>
					  <input id="url" type="text" class="form-control" placeholder=www.baidu.com aria-describedby="basic-addon1">
					</div>
					<br>
					<div id="encodePre" class="input-group">
					  <span class="input-group-addon" id="basic-addon1">编码方式</span>
					  <input id="encode" type="text" class="form-control" value="utf-8" placeholder=utf-8 aria-describedby="basic-addon1">
					</div>
					<br>
					<div id="filepathPre" class="input-group">
					  <span class="input-group-addon" id="basic-addon1">储存地址</span>
					  <input id="filepath" type="text" class="form-control" value="D:\随时可以删除的文件" placeholder=C:/ aria-describedby="basic-addon1">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button id="imgBut" type="button" class="btn btn-primary" onclick="downlodImg()">开始下载</button>
				</div>
			</div>
		</div>
	</div>
	
	<div id="loding_Div">
	     <div id="firstDiv">
	     </div>
	     <div id="secondDiv">
	         <input id="btnRequest" type="button" value="显示" class="btnStyle" style="display:none" />
	     </div>
	 </div>
	<div id="mb">
	    ss
	</div>
</body>
<script type="text/javascript">
window.onload = function(){
    $("#url").blur(function() {  
        var regtitle = /^((ht|f)tps?):\/\/([\w\-]+(\.[\w\-]+)*\/)*[\w\-]+(\.[\w\-]+)*\/?(\?([\w\-\.,@?^=%&:\/~\+#]*)+)?/;  
        var uname = $("#url").val();  
        $("#urlPre").css("background-color", "white");  
        if (uname.length <= 0 || !regtitle.test(uname)) {  
            $("#urlPre").removeClass("has-success");  
            $("#urlPre").addClass("has-error");  
            $("#imgBut").attr("disabled","disabled");
        } else {  
            $("#urlPre").addClass("has-success");
            $("#urlPre").removeClass("has-error");  
            $("#imgBut").removeAttr("disabled");
        }  
    });  
    $("#filepath").blur(function() {  
        var uname = $("#filepath").val();  
        $("#filepathPre").css("background-color", "white");  
        if (uname.length <= 0 || uname =="") {  
            $("#filepathPre").removeClass("has-success");  
            $("#filepathPre").addClass("has-error");  
            $("#imgBut").attr("disabled","disabled");
        } else {  
            $("#filepathPre").addClass("has-success");
            $("#filepathPre").removeClass("has-error");  
            $("#imgBut").removeAttr("disabled");
        }  
    });
    $("#encode").blur(function() {  
        var uname = $("#encode").val();  
        $("#encodePre").css("background-color", "white");  
        if (uname.length <= 0 || uname =="") {  
            $("#encodePre").removeClass("has-success");  
            $("#encodePre").addClass("has-error");  
            $("#imgBut").attr("disabled","disabled");
        } else {  
            $("#encodePre").addClass("has-success");
            $("#encodePre").removeClass("has-error");  
            $("#imgBut").removeAttr("disabled");
        }  
    });
    
}; 

/* function baiduLogo(){
	$.ajax({
		url : "/storm/reptile/reptileBaidu",
		type : "POST",
		dataType : "json",
		contentType : "application/json;charset=UTF-8",
		data : JSON.stringify(),
		success : function(result) {
			var message = JSON.stringify(result.flag);
			$('#context').text(message);
		},
		error : function(result) {
			var message = JSON.stringify(result.flag);
		}
	});
} */

function baiduImage(){
	$('#mymodal').modal('show');
	if((!$("#urlPre").hasClass("has-success")) || (!$("#filepathPre").hasClass("has-success")) || (!$("#encodePre").hasClass("has-success"))){
		$("#imgBut").attr("disabled","disabled");
	}
}

function downlodImg(){
	var url = $('#url').val();
	var encode = $('#encode').val();
	var filepath = $('#filepath').val();
	$('#mymodal').modal('hide');
	loding.Request();
	var data = {
			url : url,
			encode : encode,
			filepath : filepath
		}
	$.ajax({
		url : "/storm/reptile/reptileDownImg",
		type : "POST",
		dataType : "json",
		contentType : "application/json;charset=UTF-8",
		data : JSON.stringify(data),
		success : function(result) {
			$('#successImg').empty();
			$('#faileImg').empty();
			showImg(result.success);
			showUrl(result.faile);
			loding.Repost();
		},
		error : function(result) {
			var message = JSON.stringify(result.flag);
			loding.Repost();
		}
	});
}

function showImg(successImg){
	for(var i=0;i<successImg.length;i++){
		console.log("pageUrl",successImg.pageUrl[i])
 		$('<img />',{  
	        src:successImg.pageUrl[i],  
	        alt:'img!'+i,   
	        click:function(){  
	            //alert("hello,img!!!");  
	        }  
	    }).css({  
	        border:'1px solid red',  
	        cursor:'pointer',  
	        padding:'5px'  
	    }).appendTo('#successImg');  
	}
}

function showUrl(faileImg){
	for(var i=0;i<successImg.length;i++){
		console.log("success",successImg);
	}
}

</script>
</html>