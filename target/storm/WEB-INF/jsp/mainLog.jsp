<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--header-start-->
  <header class="header" id="header">
    <div class="container">
      <figure class="logo animated fadeInDown delay-07s">
        <a href="#">
          <img src="/storm/imge/mainPage.png" alt="">
        </a>
      </figure>
      <h1 class="animated fadeInDown delay-07s">瞎搞</h1>
      <ul class="we-create animated fadeInUp delay-1s">
        <li>一个闲的蛋痛的人.</li>
        <br>
        <li>做出来的一个没什么屌用的网站.</li>
      </ul>
      <a class="link animated fadeInUp delay-1s servicelink" href="#">选择菜单去搞事吧</a>
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