
var uitl = {
		"getRootPath":function(){  //  获取web根地址
			//获取当前网址，如： http://localhost:8088/test/test.jsp
			var curPath = window.document.location.href;
			//获取主机地址之后的目录，如： test/test.jsp
			var pathName = window.document.location.pathname;
			var pos = curPath.indexOf(pathName);
			//获取主机地址，如： http://localhost:8088
			var localhostPath = curPath.substring(0, pos);
			//获取带"/"的项目名，如：/test
			var projectName = pathName.substring(0,pathName.substr(1).indexOf('/') + 1);
			//return (localhostPath + projectName + "/WEB-INF/jsp");//发布前用此
			return (localhostPath + projectName);//发布前用此
		},
		 //可能需要包装成一个通用的JS  下拉框获取数据字典
		 "dictEntry":function(selectId,dictEntry){
			//下拉数据加载  
	       $.ajax({  
	             type : 'get',  
	             url : "../dictData/byEntry?entry=" + dictEntry,  
	             dataType : 'json',  
	             success : function(datas) {//返回list数据并循环获取  
	                 var select = $("#"+selectId);  
	                 for (var i = 0; i < datas.length; i++) {  
	                     select.append("<option value='"+datas[i].subprompt+"'>"  
	                             + datas[i].subprompt + "</option>");  
	                 }  
	                 select.selectpicker('val', '');  
	                 select.selectpicker('refresh');  
	             }  
	         }); 
		 }
}