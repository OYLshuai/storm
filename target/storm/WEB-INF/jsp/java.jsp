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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
.wrapperXXX {
	position: fixed;
	width: 100%;
	height: 100%;
}

.mainXXX {
	height: 100%;
	padding-left: 10px;
	padding-right: 5px;
}

.overflowXXX {  
	 height:600px; 
	 overflow:auto
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="col-md-12">
		<div class="list-group col-md-2" style=" padding-top: 5px;">
		  <a href="/storm/javaPage/javaIntPage" target="javaIframe" class="list-group-item active"> Java 简介 </a>
		  <a href="#" class="list-group-item">Java 开发环境配置</a>
		  <a href="#" class="list-group-item">Java 基础语法</a>
		  <a href="#" class="list-group-item">Java 对象和类</a>
		  <a href="#" class="list-group-item">Java 基本数据类型</a>
		  <a href="#" class="list-group-item">Java 变量类型</a>
		  <a href="#" class="list-group-item">Java 修饰符和运算符</a>
		  <a href="#" class="list-group-item">Java 基本结构</a>
		  <a href="#" class="list-group-item">Java 数组</a>
		  <a href="#" class="list-group-item">Java 方法</a>
		  <a href="#" class="list-group-item">Java 三大特征</a>
		  <a href="#" class="list-group-item">Java 抽象类</a>
		  <a href="#" class="list-group-item">Java 接口</a>
		  <a href="#" class="list-group-item">Java String类</a>
		</div>
		
		<div class="col-md-10" style="padding-left: 0px;padding-right: 0px;">
				<div id="content" class="wrapperXXX jumbotron " style="padding-top: 0px; padding-bottom: 3px;">
				<div class="container-fluid mainXXX ">
					<iframe id="javaIframe" name="javaIframe" src="/storm/javaPage/javaIntPage" width="84%" height="100%" frameborder="no" scrolling="yes"> 
						
					</iframe>
				</div>
	</div>
		</div>
	</div>
</body>
</html>