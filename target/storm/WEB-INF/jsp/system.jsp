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
		  <h2>七家-酒店管理系统</h2>
		  <a href="/storm/system/SystemMain" target="systemIframe" class="list-group-item active">房源信息</a>
		  <a href="#" target="systemIframe" class="list-group-item">客户开房</a>
		  <a href="#" target="systemIframe" class="list-group-item">预约检查</a>
		  <a href="#" target="systemIframe" class="list-group-item">房源详情</a>
		  <a href="/storm/system/CustomerMain" target="systemIframe" class="list-group-item">客户信息</a>
		  <a href="#" target="systemIframe" class="list-group-item">订单信息</a>
		  <a href="#" target="systemIframe" class="list-group-item">客户退房</a>
		  <a href="/storm/system/SystemDict" target="systemIframe" class="list-group-item">数据字典设置</a>
		</div>
		
		<div class="col-md-10" style="padding-left: 0px;padding-right: 0px;">
			<div id="content" class="wrapperXXX jumbotron " style="padding-top: 0px; padding-bottom: 3px;">
				<div class="container-fluid mainXXX ">
					<iframe id="systemIframe" name="systemIframe" src="/storm/system/SystemMain" width="82%" height="100%" frameborder="no" scrolling="yes"> 
						
					</iframe>
				</div>
			</div>
		</div>
	
	</div>
</body>
<script type="text/javascript" charset="utf-8">
	window.onload = function(){
		$('.list-group a').bind('click', function(){	
		    $(this).addClass('active').siblings().removeClass('active');
		});
	 };
</script>
</html>
