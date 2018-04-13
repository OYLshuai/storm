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

var target = document.getElementById('foo');

var spinner = new Spinner(opts).spin(target);

var loding = {
	"Request":function(){
	    //请求时spinner出现
	    $("#mb").css("display","block");
	    var target1 = $("#md").get(0);
	    spinner.spin(target1);
	    var target = $("#firstDiv").get(0);
	    spinner.spin(target);
	},
	"Repost":function(){
		spinner.spin();
	    $("#mb").css("display","none");
	}
}