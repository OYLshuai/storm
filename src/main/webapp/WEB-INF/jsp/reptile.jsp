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
<title>Insert title here</title>
</head>
<body>
	<div>
		<p style="float: left;">百度首页Logo链接：</p>
		<button type="button" class="btn btn-info" onclick="baiduLogo()">（点击爬取）</button>
	</div>
	<div id="context">
		
	</div>
</body>
<script type="text/javascript">
function baiduLogo(){
	console.log("开始抓取百度Logo");
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
}
</script>
</html>