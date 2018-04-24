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
<script src="https://cdn.bootcss.com/bootstrap-confirmation/1.0.7/bootstrap-confirmation.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body style="margin: 20px;">
	<div class="col-sm-12">
		<div id="newRoom" class="col-sm-3">
			<div id="roomDataBar" class="btn-group">
				<strong>新增客房</strong>
	        </div>
			<form id="newRoomFrom" style="margin-top: 30px;" role="form">
			  <div class="form-group">
			    <label for="roomno">房间号</label>
			    <input type="text" class="form-control" id="roomno" name="roomno" placeholder="房间号">
			  </div>
			  <div class="form-group">
			    <label for="price">价格</label>
			    <input type="text" class="form-control" id="price" name="price" placeholder="价格">
			  </div>
			  <div class="form-group">
			    <label for="remak">备注</label>
			    <input type="text" class="form-control" id="remak" name="remak" placeholder="备注">
			  </div>
			  <div class="form-group">  
                 <label for="roomtype" class="control-label">客房类别</label>  
                 <div class="">  
                     <select id="roomtype" class=" selectpicker" data-live-search="false" name="roomtype" ></select>  
                 </div>  
              </div>
			  <div class="form-group">  
                  <label for="rstate" class="control-label">客房状态</label>  
                  <div class="">  
                      <select  id="rstate" class="selectpicker" data-live-search="false" name="rstate" ></select>  
                  </div>  
              </div>
			  <button type="button" class="btn btn-primary" onClick="commit()">提交</button>
			  <button id="resetData" type="reset" class="btn btn-info" >清空</button>
			</form>
		</div>
		
		<div id="roomDataDiv" class="col-sm-9">
			<div id="roomDataBar" class="btn-group">
				<strong>客房信息</strong>
	        </div>
	        <div name="tableDiv">
				<table id="roomData">
					
				</table>
			</div>
		</div>
		
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" style="width:720px">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="myModalLabel">
							客房信息修改
						</h4>
					</div>
					<div class="modal-body">
						<form id="roomDiv" class="form-horizontal" role="form">
							<div class="form-group">  
	                            <label for="roomnoModal" class="col-sm-2 control-label">房间号:</label>  
	                            <div class="col-sm-10">  
	                                <input type="text" class="form-control" id="roomnoModal" name="roomnoModal" readonly="readonly">  
	                            </div>  
	                        </div> 
							<div class="form-group">  
	                            <label for="priceModal" class="col-sm-2 control-label">价格:</label>  
	                            <div class="col-sm-10">  
	                                <input type="text" class="form-control" id="priceModal" name="priceModal" >  
	                            </div>  
	                        </div>
	                        <div class="form-group">  
	                            <label for="remakModal" class="col-sm-2 control-label">备注:</label>  
	                            <div class="col-sm-10">  
	                                <input  class="form-control"  name="remakModal" id="remakModal" > 
	                            </div>  
	                        </div> 
							<div class="form-group">  
	                            <label for="roomtypeModal" class="col-sm-2 control-label">客房类别: </label>  
	                            <div class="col-sm-10">  
	                                <select id="roomtypeModal" class="selectpicker" data-live-search="false"></select>  
	                            </div>  
	                        </div>
							<div class="form-group">  
	                            <label for="rstateModal" class="col-sm-2 control-label">客房状态: </label>  
	                            <div class="col-sm-10">  
	                                <select  id="rstateModal" class="selectpicker" data-live-search="false"></select>  
	                            </div>  
	                        </div> 
                		</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button id="commit" type="button" class="btn btn-primary" onClick="commitModData()">
							提交更改
						</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal -->
		</div>
	</div>
</body>
<style type="text/css">
.but-float {
	padding: 0px 3px;
}
</style>
<script type="text/javascript" charset="utf-8">
var pram={
	'rowData':""
};
$(function(){
	uitl.dictEntry("roomtype",1002);
	uitl.dictEntry("roomtypeModal",1002);
	uitl.dictEntry("rstate",1001);
	uitl.dictEntry("rstateModal",1001);
	
	validator();
	modalValidator();
});

function validator(){
	$("#newRoomFrom").bootstrapValidator({
		message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },

        fields: {
        	price: {
                message: '格式错误',
                validators: {
                    notEmpty: {
                        message: '不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]*$/,
                        message: '格式错误'
                    }
                }
            },
        	roomno: {
                message: '格式错误',
                validators: {
                    notEmpty: {
                        message: '不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]*$/,
                        message: '格式错误'
                    }
                }
            }
        }
    });
}


function modalValidator(){
	$("#roomDiv").bootstrapValidator({
		message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },

        fields: {
        	priceModal: {
                message: '格式错误',
                validators: {
                    notEmpty: {
                        message: '不能为空'
                    },
                    regexp: {
                        regexp: /^[0-9]*$/,
                        message: '格式错误'
                    }
                }
            }
        }
    });
}
//Modal验证销毁重构
$('#myModal').on('hidden.bs.modal', function() {
    $("#roomDiv").data('bootstrapValidator').destroy();
    $('#roomDiv').data('bootstrapValidator', null);
    modalValidator();
});
function operateFormatter(value, row, index) {
    return '<a class="mod" style="cursor:pointer">修改</a> ' 
         + '<a class="del" style="cursor:pointer">删除</a> ';
}
//表格  - 操作 - 事件
window.operateEvents = {
    'click .mod': function(e, value, row, index) {
        roomMod(row);
     },
    'click .del': function(e, value, row, index) {
        pram.rowData=row;
     }
}

function roomMod(row){
	$('#myModal').modal('show');
	$('#roomnoModal').val(row.roomno);
	$('#priceModal').val(row.price);
	$('#remakModal').val(row.remak);
 	$('#roomtypeModal').selectpicker('val', row.roomtype);//设置选中 
 	$('#rstateModal').selectpicker('val', row.rstate);//设置选中 
}

function commitModData(){
	$('#roomDiv').data('bootstrapValidator').validate();  
    if(!$('#roomDiv').data('bootstrapValidator').isValid()){  
        return ;  
    }  
	var data= {
			roomno : $("#roomnoModal").val(),
			price : $("#priceModal").val(),
			remak : $("#remakModal").val(),
			roomtype : $("#roomtypeModal").val(),
			rstate : $("#rstateModal").val()
	}
	$.ajax({
	    url:'../roomData/modRoom.json',
		type : "POST",
	    contentType: 'application/json;charset=UTF-8',//加上防止415错误
		dataType : "json",
	    data: JSON.stringify(data),
	    success:function(result){
	        //请求成功时
			$('#myModal').modal('hide');
	    	$('#roomData').bootstrapTable('refresh');
	    },
	    error:function(){
	        //请求失败时
	        alert('请求失败');
	    }
	});
}

function commit(){
	
	if($("#roomno").val()==''||$("#price").val()==''){
		$("#newRoomFrom").data('bootstrapValidator').destroy();
	    $('#newRoomFrom').data('bootstrapValidator', null);
	    validator();
	}
	
	$('#newRoomFrom').data('bootstrapValidator').validate();  
    if(!$('#newRoomFrom').data('bootstrapValidator').isValid()){  
        return ;  
    }

	var data= {
			roomno : $("#roomno").val(),
			price : $("#price").val(),
			remak : $("#remak").val(),
			roomtype : $("#roomtype").val(),
			rstate : $("#rstate").val()
	}
	$.ajax({
	    url:'../roomData/addRoom.json',
		type : "POST",
	    contentType: 'application/json;charset=UTF-8',//加上防止415错误
		dataType : "json",
	    data: JSON.stringify(data),
	    success:function(result){
	        //请求成功时
	    	$('#roomData').bootstrapTable('refresh');
	    	$("#resetData").trigger("click");//触发reset按钮
	    },
	    error:function(){
	        //请求失败时
	        alert('请求失败');
	    }
	});
}

function delRoom(row){
	var roomno = row.roomno;
	$.ajax({
	    url:'../roomData/delRoom.json?roomno='+roomno,
		type : "POST",
	    contentType: 'application/json;charset=UTF-8',//加上防止415错误
	    success:function(result){
	        //请求成功时
	    	$('#roomData').bootstrapTable('refresh');
	    	$("#resetData").trigger("click");//触发reset按钮
	    },
	    error:function(){
	        //请求失败时
	        alert('请求失败');
	    }
	});
}

$('#roomData').bootstrapTable({
   url: '../roomData/allRoom.json',
   dataType: "json",
   method: 'get',                      //请求方式（*）
   toolbar: '#checkToolbar',           //工具按钮用哪个容器
   striped: true,                      //是否显示行间隔色
   cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
   pagination: true,                   //是否显示分页（*）
   sortable: false,                    //是否启用排序
   sortOrder: "asc",                   //排序方式
   pageNumber:1,                       //初始化加载第一页，默认第一页
   pageSize: 18,                        //每页的记录行数（*）
   pageList: [18, 36, 54, 70],          //可供选择的每页的行数（*）
   search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
   showColumns: true,                  //是否显示所有的列
   showRefresh: true,                  //是否显示刷新按钮
   minimumCountColumns: 2,             //最少允许的列数
   clickToSelect: true,                //是否启用点击选中行
   height:818,
   onLoadSuccess: function(data){  //加载成功时执行
   	$(".del").confirmation({
           animation:true,
           placement:"bottom",
           title:"确定要删除吗？",
           btnOkClass:"btn btn-danger btn-xs but-float",
           btnCancelClass:"btn btn-default btn-xs but-float",
           btnOkLabel:'确定',
           btnCancelLabel:'取消',
           onConfirm:function () {
               console.log("点击了确定");
           	   delRoom(pram.rowData);
           },
           onCancel: function () { 
           }
       });
     },
   cardView: false,                    //是否显示详细视图
	    columns: [{
	        field: 'roomno',
	        title: '房间号'
	    }, {
	        field: 'roomtype',
	        title: '客房类型'
	    }, {
	        field: 'rstate',
	        title: '客房状态'
	    }, {
	        field: 'price',
	        title: '价格'
	    }, {
	        field: 'remak',
	        title: '备注'
	    }, {
	        field: 'opreter',
	        title: '操作',
            align : 'center',
            width : '15%',
            events : operateEvents,
            switchable:false,
            formatter : operateFormatter
	    }]
});
</script>
</html>