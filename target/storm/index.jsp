<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--引入样式 -->
<link href="/storm/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<!--引入JQuery -->
<script src="/storm/static/js/uitl.js"></script>
<script src="/storm/static/js/jquery.min.js"></script>
<script src="/storm/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<title>hehe </title>
</head>
    <body>
    	<div class="jumbotron">
		  <h1 class="text-center" >Welcome</h1>
		  <p class="text-center"><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
		</div>
    </body>
	<script type="text/javascript" charset="utf-8">
	 window.onload = function(){
		var user = "${user}";
		console.log("user",user);
	 };
	</script>
</html>
