<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<div id="jump_div" class="text-center" style="margin-top: -5%;margin-left: 4%;">
	    <span id="befor" class="glyphicon glyphicon-chevron-left" style="cursor:pointer;">上一课程</span>
		<span id="next" style="margin-left: 75%;cursor:pointer;">下一课程</span>
		<span class="glyphicon glyphicon-chevron-right" ></span>
	</div>
</body>
<script type="text/javascript">

	$('#befor').click(function(){
		var i=0;
		$('.list-group').children();
		var _page = $('.list-group', window.parent.document);
		var _pageLength = _page.children().length;
		for(i;i<_pageLength;i++){
			if($(_page.children()[i]).hasClass('active')){
				if(i == 0){
					_page.children()[0].click();
					break;
				}else{
					_page.children()[i-1].click();
					break;
				}
			}
		}
	});
	
	
	$('#next').click(function(){
		var i=0;
		$('.list-group').children();
		var _page = $('.list-group', window.parent.document);
		var _pageLength = _page.children().length;
		for(var i=0;i<_pageLength;i++){
			if($(_page.children()[i]).hasClass('active')){
				if(i == _pageLength-1){
					_page.children()[_pageLength-1].click();
					break;
				}else{
					_page.children()[i+1].click();
					break;
				}
			}
		}
	});
</script>
</html>