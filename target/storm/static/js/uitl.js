
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
		   $("#"+selectId).selectpicker({  
	            noneSelectedText : '请选择'  
	        }); 
		   var async = true;
		   if(selectId == 'paystate'){
			   async = false;
		   }
	       $.ajax({  
	             type : 'get',  
	             async: async,
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
		 },
		 ///获取可住的房间
		 "roomEntry":function(selectId){
			//下拉数据加载  
		   $("#"+selectId).selectpicker({  
	          noneSelectedText : '请选择'  
	       }); 
	       $.ajax({  
	             type : 'get',  
	             url : "../roomData/unCheckRoom",  
	             dataType : 'json',  
	             success : function(datas) {//返回list数据并循环获取  
	                 var select = $("#"+selectId);  
	                 select.append("<option value='"+""+"'>"  
                             + "请选择" + "</option>");  
	                 for (var i = 0; i < datas.length; i++) {  
	                     select.append("<option value='"+datas[i].roomno+"'>"  
	                             + datas[i].roomno + "(" + datas[i].roomtype + ")" +"</option>");  
	                 }  
	                 select.selectpicker('val', '');  
	                 select.selectpicker('refresh');  
	             }  
	         }); 
		 },
		 //获取已预约的房号
		 "orderRoomEntry":function(selectId){
				//下拉数据加载  
			   $("#"+selectId).selectpicker({  
		          noneSelectedText : '请选择'  
		       }); 
		       $.ajax({  
		             type : 'get',  
		             url : "../roomData/orderRoom",  
		             dataType : 'json',  
		             success : function(datas) {//返回list数据并循环获取  
		                 var select = $("#"+selectId);  
		                 select.append("<option value='"+""+"'>"  
	                             + "请选择" + "</option>");  
		                 for (var i = 0; i < datas.length; i++) {  
		                     select.append("<option value='"+datas[i].roomno+"'>"  
		                             + datas[i].roomno + "(" + datas[i].roomtype + ")" + "</option>");  
		                 }  
		                 select.selectpicker('val', '');  
		                 select.selectpicker('refresh');  
		             }  
		         }); 
		 },
		 //获取所有的客户
		 "customerEntry":function(selectId){
			//下拉数据加载  
		   $("#"+selectId).selectpicker({  
	          noneSelectedText : '请选择'
	       }); 
	       $.ajax({  
	             type : 'get',  
	             url : "../customerData/allCustomer",  
	             dataType : 'json',  
	             success : function(datas) {//返回list数据并循环获取  
	                 var select = $("#"+selectId);  
	                 select.append("<option value='"+""+"'>"  
                             + "请选择" + "</option>");  
	                 for (var i = 0; i < datas.length; i++) {  
	                     select.append("<option value='"+datas[i].idno+"'>"  
	                             + datas[i].idno + "(" + datas[i].cname + ")" + "</option>");  
	                 }  
	                 select.selectpicker('val', '');  
	                 select.selectpicker('refresh');  
	             }  
	         }); 
		 },
		 //获取预约的客户
		 "orderCustomerEntry":function(selectId){
				//下拉数据加载  
			   $("#"+selectId).selectpicker({  
		          noneSelectedText : '请选择'
		       }); 
		       $.ajax({  
		             type : 'get',  
		             url : "../checkorderData/orderCustomer",  
		             dataType : 'json',  
		             success : function(datas) {//返回list数据并循环获取  
		                 var select = $("#"+selectId);  
		                 select.append("<option value='"+""+"'>"  
	                             + "请选择" + "</option>");  
		                 for (var i = 0; i < datas.length; i++) {  
		                     select.append("<option value='"+datas[i].idno+"'>"  
		                             + datas[i].idno + "(" + datas[i].cname + ")" + "</option>");  
		                 }  
		                 select.selectpicker('val', '');  
		                 select.selectpicker('refresh');  
		             }  
		         }); 
		 },
		 "sexInit":function(){
		    $('#sex').selectpicker({  
		        noneSelectedText : '请选择'
		    }); 
			$('#sex').append("<option value='1'>"  
		            + "男" + "</option>");  
			$('#sex').append("<option value='0'>"  
		            + "女" + "</option>"); 

			$('#sex').selectpicker('val', '');  
			$('#sex').selectpicker('refresh');  
		 }
}