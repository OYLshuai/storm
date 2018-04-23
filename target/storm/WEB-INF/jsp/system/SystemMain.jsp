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
<link href="/storm/static/bootstrap-3.3.7-dist/css/bootstrap-table.min.css" rel="stylesheet">
<link href="/storm/static/bootstrap-3.3.7-dist/css/bootstrap-select.min.css" rel="stylesheet">
<link href="/storm/static/bootstrap-3.3.7-dist/css/bootstrapValidator.min.css" rel="stylesheet">

<!--引入JQuery -->
<script src="/storm/static/js/uitl.js"></script>
<script src="/storm/static/js/menu.js"></script>
<script src="/storm/static/js/jquery.min.js"></script>
<script src="/storm/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="/storm/static/bootstrap-3.3.7-dist/js/bootstrap-table.min.js"></script>
<script src="/storm/static/bootstrap-3.3.7-dist/js/bootstrap-select.min.js"></script>
<script src="/storm/static/bootstrap-3.3.7-dist/js/bootstrap-table-zh-CN.min.js"></script>
<script src="/storm/static/bootstrap-3.3.7-dist/js/jquery.serializejson.min.js"></script>
<script src="/storm/static/bootstrap-3.3.7-dist/js/bootstrapValidator.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body style="margin: 20px;">
	<div class = "">
		<div id = "unCheckRoom">
			<div id="unCheckToolbar" class="btn-group">
				<strong>可出租房间</strong>
	        </div>
	        <div name="tableDiv" style=" OVERFLOW-Y: auto; OVERFLOW-X:hidden; height:380px;">
				<table id="unCheckRoomData">
					
				</table>
			</div>
		</div>
		<div id = "checkRoom" >
			<div id="checkToolbar" class="btn-group">
				<strong>不可出租房间</strong>
	        </div>
	        <div name="tableDiv" style="OVERFLOW-Y: auto; OVERFLOW-X:hidden;height:380px;">
				<table id="checkRoomData">
					
				</table>
			</div>
		</div>
		
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="myModalLabel">
							房间设置
						</h4>
					</div>
					<div class="modal-body">
						<form id="roomDiv" class="form-horizontal" role="form">
							<div class="form-group">  
	                            <label for="roomno" class="col-sm-2 control-label">房号: </label>  
	                            <div class="col-sm-10">  
	                                <input type="text" class="form-control" id="roomno" name="roomno" readonly="readonly">  
	                            </div>  
	                        </div> 
							<div class="form-group">  
	                            <label for="roomtype" class="col-sm-2 control-label">房间类型: </label>  
	                            <div class="col-sm-10">  
	                                <select id="roomtype" class="selectpicker" data-live-search="false" disabled="disabled"></select>  
	                            </div>  
	                        </div>
							<div class="form-group">  
	                            <label for="rstate" class="col-sm-2 control-label">房间状态: </label>  
	                            <div class="col-sm-10">  
	                                <select  id="rstate" class="selectpicker" data-live-search="false"  disabled="disabled"></select>  
	                            </div>  
	                        </div>
							<div class="form-group">  
	                            <label for="price" class="col-sm-2 control-label">房间价格: </label>  
	                            <div class="col-sm-10">  
	                                <input type="text" class="form-control" id="price" name="price" >  
	                            </div>  
	                        </div>
	                        <div class="form-group">  
	                            <label for="remak" class="col-sm-2 control-label">备注</label>  
	                            <div class="col-sm-10">  
	                                <input  class="form-control"  name="remak" id="remak" > 
	                            </div>  
	                        </div>  
                		</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button id="commit" type="button" class="btn btn-primary" onClick="commit()">
							提交更改
						</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal -->
		</div>
		
	</div>
</body>
<script type="text/javascript" charset="utf-8">

	$(function(){
		uitl.dictEntry("roomtype",1002);
		uitl.dictEntry("rstate",1001);
		 
		 $('form').bootstrapValidator({
					message: 'This value is not valid',
		            feedbackIcons: {
		                valid: 'glyphicon glyphicon-ok',
		                invalid: 'glyphicon glyphicon-remove',
		                validating: 'glyphicon glyphicon-refresh'
		            },

		            fields: {
		            	price: {
		                    message: '价格错误',
		                    validators: {
		                        notEmpty: {
		                            message: '价格不能为空'
		                        },
		                        regexp: {
		                            regexp: /^[0-9]+$/,
		                            message: '价格错误'
		                        }
		                    }
		                }
		            }
		        });
	});

	$(window).on('load', function() {  
	    $('#rstate').selectpicker('val', '');  
	    //$('#rstate').selectpicker('refresh');  
	    $('#roomtype').selectpicker('val', '');  
	    //$('#roomtype').selectpicker('refresh');  
	    
	});

	 $(".selectpicker").selectpicker({  
           noneSelectedText : '请选择'
    });  
	 
/* 	 //可能需要包装成一个通用的JS
	 function dictEntry(selectId,dictEntry){
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
	 } */
	 
	 function modUnCheckRoom(row){
	 	$('#myModal').modal('show');
	 	$('#roomno').val(row.roomno);
	 	$('#price').val(row.price);
	 	$('#remak').val(row.remak);
	 	//$('#roomtype').val(row.roomtype);
	 	$('#roomtype').selectpicker('val', row.roomtype);//设置选中 
	 	$('#roomtype').selectpicker('refresh');
	 	
	 	//$('#rstate').val(row.rstate);
	 	$('#rstate').selectpicker('val', row.rstate);//设置选中 
	 	$('#rstate').selectpicker('refresh');
	 }
	 
	 function operateFormatter(value, row, index) {
		 if(row.rstate == '已住房'){
		        return '<a class="unCheckRoom" style="cursor:pointer">退房</a> ';
		 }else if(row.rstate == '空房'){
		        return '<a class="checkRoom" style="cursor:pointer">开房</a> ' 
	             +'<a class="destineRoom" style="cursor:pointer">预定</a> ' 
	             +'<a class="mod" style="cursor:pointer">修改</a> ' ;
		 }else{
	        return '<a class="mod" style="cursor:pointer">修改</a> ';
	            // + '<a class="del" style="cursor:pointer">删除</a> ';
		 }
	  }
	 
    //表格  - 操作 - 事件
    window.operateEvents = {
        'click .mod': function(e, value, row, index) {      
              //修改操作
        	modUnCheckRoom(row);
         },
        'click .checkRoom': function(e, value, row, index) {      
             //开房操作
             console.log("带小情人开房")
         },
        'click .unCheckRoom': function(e, value, row, index) {      
             //退房操作
             console.log("被掏空退房")
             
         },
        'click .destineRoom': function(e, value, row, index) {      
             //预定操作
             console.log("准备被掏空")
             
         }
     }
	 
	 $('#checkRoomData').bootstrapTable({
		 url: '../roomData/checkRoom.json',
		 dataType: "json",
		 method: 'get',                      //请求方式（*）
         toolbar: '#checkToolbar',           //工具按钮用哪个容器
         striped: true,                      //是否显示行间隔色
         cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
         pagination: true,                   //是否显示分页（*）
         sortable: false,                    //是否启用排序
         sortOrder: "asc",                   //排序方式
         pageNumber:1,                       //初始化加载第一页，默认第一页
         pageSize: 6,                        //每页的记录行数（*）
         pageList: [6, 12, 18, 24],          //可供选择的每页的行数（*）
         search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
         showColumns: true,                  //是否显示所有的列
         showRefresh: true,                  //是否显示刷新按钮
         minimumCountColumns: 2,             //最少允许的列数
         clickToSelect: true,                //是否启用点击选中行
         cardView: false,                    //是否显示详细视图
		    columns: [{
		        field: 'roomno',
		        title: '房间号'
		    }, {
		        field: 'roomtype',
		        title: '房间类型'
		    }, {
		        field: 'rstate',
		        title: '房间状态'
		    }, {
		        field: 'price',
		        title: '房间价格'
		    }, {
		        field: 'remak',
		        title: '备注'
		    }, {
		        field: 'opreter',
		        title: '操作',
                align : 'center',
                width : '15%',
                events : operateEvents,
                formatter : operateFormatter
		    }]
		});
	 
	 $('#unCheckRoomData').bootstrapTable({
		 url: '../roomData/unCheckRoom.json',
		 dataType: "json",
		 method: 'get',                      //请求方式（*）
         toolbar: '#unCheckToolbar',         //工具按钮用哪个容器
         striped: true,                      //是否显示行间隔色
         cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
         pagination: true,                   //是否显示分页（*）
         sortable: false,                    //是否启用排序
         sortOrder: "asc",                   //排序方式
         pageNumber:1,                       //初始化加载第一页，默认第一页
         pageSize: 6,                        //每页的记录行数（*）
         pageList: [6, 12, 18, 24],          //可供选择的每页的行数（*）
         search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
         showColumns: true,                  //是否显示所有的列
         showRefresh: true,                  //是否显示刷新按钮
         minimumCountColumns: 2,             //最少允许的列数
         clickToSelect: true,                //是否启用点击选中行
         cardView: false,                    //是否显示详细视图
		    columns: [{
		        field: 'roomno',
		        title: '房间号'
		    }, {
		        field: 'roomtype',
		        title: '房间类型'
		    }, {
		        field: 'rstate',
		        title: '房间状态'
		    }, {
		        field: 'price',
		        title: '房间价格'
		    }, {
		        field: 'remak',
		        title: '备注'
		    }, {
		        field: 'opreter',
		        title: '操作',
                align : 'center',
                width : '15%',
                events : operateEvents,
                formatter : operateFormatter
		    }]
		});
	 
	 function commit(){
		 //获取表单的值
			var data = {
					roomno : $("#roomno").val(),
					roomtype : $("#roomtype").val(),
					rstate : $("#rstate").val(),
					price : $("#price").val(),
					remak : $("#remak").val()
			}
		 console.log("two",data);
		 $.ajax({
			    url:'../roomData/modRoom.json',
				type : "POST",
			    contentType: 'application/json;charset=UTF-8',//加上防止415错误
				dataType : "json",
			    data: JSON.stringify(data),
			    beforeSend:function(){
			        //请求前
			    	$('#myModal').modal('hide');
			    },
			    success:function(result){
			        //请求成功时
			    	if(result.falg == 1){
			    		//window.location.reload();
			    		$('#unCheckRoomData').bootstrapTable('refresh');
			    		$('#checkRoomData').bootstrapTable('refresh');
					}
			    },
			    complete:function(){
			        //请求结束时
			    },
			    error:function(){
			        //请求失败时
			    }
			});
	 }
</script>
</html>