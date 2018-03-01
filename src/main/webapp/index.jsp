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
<script src="/storm/static/js/uitl.js"></script>
<script src="/storm/static/js/menu.js"></script>
<script src="/storm/static/js/jquery.min.js"></script>
<script src="/storm/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<style type="text/css">
.wrapperXXX {
	position: fixed;
	width: 102.3%;
	height: 100%;
}

.mainXXX {
	height: 100%;
}
</style>
<title>hehe</title>
</head>
<body>
	<nav class="navbar navbar-default" style="margin-bottom: 5px;">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/storm/page/mainLogPage" target="iframe">${param.name}</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="selectMenuDiv">
			<ul class="nav navbar-nav first_ul">
				<li id="Link_0" class="dropdown active">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
						Java <span class="caret"> </span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="/storm/page/javaPage" target="iframe">Java 基础</a></li>
						<li><a href="#">Java Spring</a></li>
						<li><a href="#">SpringMVC</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Java 测试题</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Java 模块错误反馈</a></li>
					</ul>
				</li>
				<li id="Link_1"><a href="#">Link <span class="sr-only">(current)</span></a></li>
				<li id="Link_2"><a href="#">Link</a></li>
				<li id="Link_3"><a href="#">Link</a></li>
				<li id="Link_4" class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
					Dropdown <span class="caret"> </span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">One more separated link</a></li>
					</ul>
				</li>
			</ul>
			<form class="navbar-form navbar-left">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li>
				<div style="padding-top: 11px;">
				<figure class="logo_link ">
				    <img src="/storm/imge/mainPage.png" alt="LOGO" >
      			</figure>
      			</div>
      			</li>
				<li class="dropdown" id="userMenu"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">用户操作 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">用户中心</a></li>
						<li><a href="#">意见反馈</a></li>
						<li><a href="#">修改密码</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">退出登陆</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</nav>
	<div id="content" class="wrapperXXX jumbotron" style="padding-top: 3px; padding-bottom: 3px;">
		<div class="container-fluid mainXXX" style="padding-left: 1px;"> 
			<iframe id="iframe" name="iframe" src="/storm/page/mainLogPage" width="100%" height="88%" frameborder="no" scrolling="yes"> 
				
			</iframe>
		</div>
	</div>
</body>
<script type="text/javascript" charset="utf-8">
	 window.onload = function(){
		var user = "${param.name}";
		menu.selectStyle();
		$("#Link_0").onclick = function(){
			console.log("onclick",i);
		}
	 };
</script>
</html>
