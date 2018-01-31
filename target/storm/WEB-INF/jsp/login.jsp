<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--引入样式 -->
<link href="/storm/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<!--引入JQuery -->
<script src="/storm/static/js/uitl.js"></script>
<script src="/storm/static/js/jquery.min.js"></script>
<script src="/storm/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<title>瞎搞</title>
</head>
<body class="text-center jumbotron">
<div class="col-md-3"><input type="hidden" name="field＿name" value="value"> </div>
<div class="alert alert-danger col-md-6" id="errmessage" role="alert" style = "display:none">
	账号或者密码错误,注册或者找回密码请点击    <a href="#" onclick="register();" class="alert-link">搞事？算我一个！</a>
</div>
	<form class="form-horizontal container-fluid">
		<div class="container">
			<br /><br /><br /><br /><br />
			<h1 class="text-center">Welcome</h1>
			<br />
			<div id = "id_input" class="form-group col-md-offset-8">
				<label for="inputEmail3" class="col-md-4 control-label ">账    号</label>
				<div class="col-md-4 text-center">
					<input type="text" class="form-control" id="inputId" placeholder="账    号">
				</div>
			</div>
			<div id= "password_input" class="form-group text-center">
				<label for="inputPassword3" class="col-md-4 control-label">密   码</label>
				<div class="col-md-4">
					<input type="password" class="form-control" id="inputPassword" placeholder="密   码">
				</div>
			</div>
			<br /><br /><br />
			<p class="text-center">
				<a class="btn btn-primary btn-lg" href="#" role="button" onclick="login();">进去耍耍</a>
			</p>
		</div>
	</form>
</body>
<script type="text/javascript" charset="utf-8">
	/* window.onload = function(){
	 var user = "${user}";
	 console.log("user",user);
	 }; */
	function login() {
		checkInput();
		var data = {
			id : $("#inputId").val(),
			password : $("#inputPassword").val()
		}
		console.log("传输数据", data);
		$.ajax({
			url : "main/showMain",
			type : "POST",
			dataType : "json",
			// headers: { "content-Type":"application/json"},
			contentType : "application/json;charset=UTF-8",
			// <!-- 向后端传输的数据 -->
			data : JSON.stringify(data),
			success : function(result) {
				// <!-- 处理后端返回的数据 -->
				var message = JSON.stringify(result.message);
				console.log("查询结果", result.message);
				if(result.falg == 2){
					$("#errmessage").hide(500);
					window.location.href = uitl.getRootPath() + "/index.jsp?" + result.row.username;
				}else {
					$("#errmessage").show(500);
				}
			},
			error : function(result) {
				var message = JSON.stringify(result.message);
			}
		});
	}
	 
	function register(){
		window.location.href = uitl.getRootPath() + "/register.jsp"
	} 
	
	function checkInput(){
		id = $("#inputId").val();
		password = $("#inputPassword").val();
		if(id == ""){
			$("#id_input").removeClass("has-success");
			$("#id_input").addClass("has-error");
		}else{
			$("#id_input").removeClass("has-error");
			$("#id_input").addClass("has-success");
		}
		if(password == ""){
			$("#password_input").removeClass("has-success");
			$("#password_input").addClass("has-error");
		}else{
			$("#password_input").removeClass("has-error");
			$("#password_input").addClass("has-success");
		}
	}
</script>
</html>
