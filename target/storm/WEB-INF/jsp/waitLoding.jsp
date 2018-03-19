<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="/storm/static/js/spin.min.js" ></script>
<script src="/storm/static/js/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
#Div{
    width: 100%;
    height: 100%;
    text-align:center;
}

#firstDiv{
    width: 100%;
    height: 50%;
}

#secondDiv{
    width: 50%;
    height: 50%;
    margin:0 auto;
}
#mb{
    display: none;
    height: 100%;
    width: 100%;
    position: fixed;
    *position: absolute;
    *height: 1380px;
    background: blue;
    top:0;
    left: 0;
    opacity:0.6;
}
</style>
<script type="text/javascript">   
var opts = {
  lines: 11, // The number of lines to draw
  length: 0, // The length of each line
  width: 5, // The line thickness
  radius: 19, // The radius of the inner circle
  scale: 1, // Scales overall size of the spinner
  corners: 1, // Corner roundness (0..1)
  color: '#000000', // CSS color or array of colors
  fadeColor: 'transparent', // CSS color or array of colors
  opacity: 0, // Opacity of the lines
  rotate: 5, // The rotation offset
  direction: 1, // 1: clockwise, -1: counterclockwise
  speed: 1.6, // Rounds per second
  trail: 83, // Afterglow percentage
  fps: 20, // Frames per second when using setTimeout() as a fallback in IE 9
  zIndex: 2e9, // The z-index (defaults to 2000000000)
  className: 'spinner', // The CSS class to assign to the spinner
  top: '250%', // Top position relative to parent
  left: '630%', // Left position relative to parent
  position: 'absolute' // Element positioning
};

//var spinner = new Spinner(opts);
var target = document.getElementById('foo');
var spinner = new Spinner(opts).spin(target);
$(document).ready(function () {
   Request();
})

function Request(){
    //请求时spinner出现
    $("#mb").css("display","block");
    var target1 = $(".firstDiv").get(0);
    spinner.spin(target1);
    var target = $("#firstDiv").get(0);
    spinner.spin(target);
}
//隐藏
$("#mb").css("display","none");
spinner.spin();
</script>
</head>
<body>
<div id="Div">
     <div id="firstDiv">
     </div>
     <div id="secondDiv">
         <input id="btnRequest" type="button" value="显示" class="btnStyle" style="display:none" />
     </div>
 </div>
 
<div id="mb"></div>
</body>
</html>