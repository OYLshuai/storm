<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>手风琴轮播图</title>
	<style>
		*{margin:0; padding:0;}
		body,html{width:100%; height:100%;}
		.bg {
			position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
		}
		.bg-box-1{
			background: url('/storm/static/reptile_img/1.jpg') no-repeat center/cover;
		}
		.bg-box-2{
			background: url('/storm/static/reptile_img/2.jpg') no-repeat center/cover;
		}
		.bg-box-3{
			background: url('/storm/static/reptile_img/3.jpg') no-repeat center/cover;
		}
		.bg-box-4{
			background: url('/storm/static/reptile_img/4.jpg') no-repeat center/cover;
		}
		#wrap{
			position: absolute;
			overflow: hidden;
			top:0; left:0; right:0; bottom:0;
			margin:auto;
			width: 1000px;
			height: 400px;
		}
		#wrap > ul{
			width: 120%;
			list-style: none;
		}
		#wrap > ul > li{
			float: left;
			width: 100px;
			height: 400px;
			cursor: pointer;
		}
		#wrap > ul > li:nth-child(1){
			background: url('/storm/static/reptile_img/1.jpg') no-repeat center/cover;
		}
		#wrap > ul > li:nth-child(2){
			background: url('/storm/static/reptile_img/2.jpg') no-repeat center/cover;
		}
		#wrap > ul > li:nth-child(3){
			background: url('/storm/static/reptile_img/3.jpg') no-repeat center/cover;
		}
		#wrap > ul > li:nth-child(4){
			background: url('/storm/static/reptile_img/4.jpg') no-repeat center/cover;
			width: 700px;
		}	
		#wrap > ul > li > .text{
			width: 100px;
			height: 100%;
			background: #000;
			opacity: .5;
		}
		#wrap > ul > li > .text p{
			padding: 20px 40px;
			font-family: 'Microsoft yahei';
			color: #fff;
		}
	</style>
</head>
<body>
	<div class="bg bg-box-1"></div>
	<div class="bg bg-box-2"></div>
	<div class="bg bg-box-3"></div>
	<div class="bg bg-box-4"></div>
	<div id="wrap">
		<ul>
			<li>
				<div class="text">
					<p>尼尔1</p>
				</div>
			</li>
			<li>
				<div class="text">
					<p>尼尔2</p>
				</div>
			</li>
			<li>
				<div class="text">
					<p>尼尔3</p>
				</div>
			</li>
			<li class="curr">
				<div class="text">
					<p>尼尔4</p>
				</div>
			</li>
		</ul>
	</div>
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script>
	(function(){
		$('#wrap li').mouseover(function(){
			if(!$(this).hasClass('curr')){
				$('#wrap li').removeClass('curr');
				$(this).addClass('curr');

				// 切换背景
				$('#wrap li').each(function(index){
					if($(this).hasClass('curr')){
						$('.bg').fadeOut(300);
						$('.bg:eq(' + index + ')').fadeIn(500);
					}
				});

				$('.curr').stop().animate({
					width: 700
				}, 500, 'linear');
				$('#wrap li').not('.curr').stop().animate({
					width: 100
				}, 500, 'linear');
			}
		});
	})()
	</script>
</body>
</html>