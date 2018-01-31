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
<script src="/storm/static/js/jquery.min.js"></script>
<script src="/storm/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--header-start-->
  <header class="header" id="header">
    <div class="container">
      <figure class="logo animated fadeInDown delay-07s">
        <a href="#">
          <img src="/storm/imge/mainPage.png" alt="LOGO" >
        </a>
      </figure>
      <h1 class="animated fadeInDown delay-07s">瞎搞</h1>
      <ul class="we-create animated fadeInUp delay-1s">
        <li>一个闲的蛋痛的人.</li>
        <br>
        <li>做出来的一个没什么屌用的网站.</li>
      </ul>
      <a class="link animated fadeInUp delay-1s servicelink" href="#">去导航选择科目搞事吧</a>
    </div>
  </header>
  <!--header-end-->
</body>
<script type="text/javascript" charset="utf-8">
	 window.onload = function(){
		var user = "${row}";
		console.log("row",user);
	 };
</script>
</html>