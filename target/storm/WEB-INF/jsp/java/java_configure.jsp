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
<title>Insert title here</title>
</head>
<body>
	<div style="padding:75px;">
		<div>
			<br/>
		</div>
		<h2>Java 环境配置(Window)</h2>
		<h1>Java 下载</h1>
		<p class="lead">
			首先我们需要下载java开发工具包JDK，下载地址：<a href="http://www.oracle.com/technetwork/java/javase/downloads/index.html" target="Blank ">http://www.oracle.com/technetwork/java/javase/downloads/index.html</a>，点击如下下载按钮：
		</p>
		<img src="/storm/imge/javadownload.jpg" alt="" class="">
		<img src="/storm/imge/javadownload1.jpg" alt="" class="">
		<p>
			下载后JDK的安装根据提示进行，还有安装JDK的时候也会安装JRE，一并安装就可以了。
			安装JDK，安装过程中可以自定义安装目录等信息，例如我们选择安装目录为 C:\Program Files (x86)\Java\jdk1.8.0_91。
		</p>
		<p class="lead">
			后面的去看这个教程吧：<a href="http://www.runoob.com/java/java-environment-setup.html" target="Blank ">Java 环境配置</a>。
		</p>
	</div>
	<%@ include file="/WEB-INF/jsp/jumpPage.jsp" %>
</body>
<style>
    h2{display:none;}
</style>
<script type="text/javascript" charset="utf-8">
	 $(function(){
		 $("h2").fadeIn();
	 });
</script>
</html>