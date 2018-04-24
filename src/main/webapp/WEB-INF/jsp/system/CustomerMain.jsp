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
		<div id="newCustomer" class="col-sm-3">
			<div id="customerDataBar" class="btn-group">
				<strong>新增客户</strong>
	        </div>
			<form id="newCustomerFrom" style="margin-top: 30px;" role="form">
			  <div class="form-group">
			    <label for="cname">客户姓名</label>
			    <input type="text" class="form-control" id="cname" name="cname" placeholder="客户姓名">
			  </div>
			  <div class="form-group">
			    <label for="idno">证件号码</label>
			    <input type="text" class="form-control" id="idno" name="idno" placeholder="证件号码">
			  </div>
			  <div class="form-group">
			    <label for="phone">电话号码</label>
			    <input type="tel" class="form-control" id="phone" name="phone" placeholder="电话号码">
			  </div>
			  <div class="form-group">
			    <label for="frequency">累计住房次数</label>
			    <input type="text" class="form-control" id="frequency" name="frequency" placeholder="累计住房次数" value='0'>
			  </div>
			  <div class="form-group">
			    <label for="remark">备注</label>
			    <input type="text" class="form-control" id="remark" name="remark" placeholder="备注">
			  </div>
			  <div class="form-group">  
                 <label for="sex" class="control-label">性别</label>  
                 <div class="">  
                     <select id="sex" class=" selectpicker" data-live-search="false" name="sex" ></select>  
                 </div>  
              </div>
			  <div class="form-group">  
                  <label for="ctype" class="control-label">客户类别</label>  
                  <div class="">  
                      <select  id="ctype" class="selectpicker" data-live-search="false" name="ctype" ></select>  
                  </div>  
              </div>
			  <button type="button" class="btn btn-primary" onClick="commit()">提交</button>
			  <button id="resetData" type="reset" class="btn btn-info" >清空</button>
			</form>
		</div>
		
		<div id="customerDataDiv" class="col-sm-9">
			<div id="customerDataBar" class="btn-group">
				<strong>客户信息</strong>
	        </div>
	        <div name="tableDiv">
				<table id="customerData">
					
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
							客户信息修改
						</h4>
					</div>
					<div class="modal-body">
						<form id="cutomerDiv" class="form-horizontal" role="form">
							<div class="form-group">  
	                            <label for="cnameModal" class="col-sm-2 control-label">客户姓名:</label>  
	                            <div class="col-sm-10">  
	                                <input type="text" class="form-control" id="cnameModal" name="cnameModal" readonly="readonly">  
	                            </div>  
	                        </div> 
							<div class="form-group">  
	                            <label for="idnoModal" class="col-sm-2 control-label">证件号码:</label>  
	                            <div class="col-sm-10">  
	                                <input type="text" class="form-control" id="idnoModal" name="idnoModal" readonly="readonly" >  
	                            </div>  
	                        </div>
	                        <div class="form-group">  
	                            <label for="phoneModal" class="col-sm-2 control-label">电话号码:</label>  
	                            <div class="col-sm-10">  
	                                <input  class="form-control"  name="phoneModal" id="phoneModal" > 
	                            </div>  
	                        </div> 
							<div class="form-group">  
	                            <label for="frequencyModal" class="col-sm-2 control-label">累计住房次数:</label>  
	                            <div class="col-sm-10">  
	                                <input type="text" class="form-control" id="frequencyModal" name="frequencyModal" >  
	                            </div>  
	                        </div>
	                        <div class="form-group">  
	                            <label for="remarkModal" class="col-sm-2 control-label">备注:</label>  
	                            <div class="col-sm-10">  
	                                <input  class="form-control"  name="remarkModal" id="remarkModal" > 
	                            </div>  
	                        </div> 
							<div class="form-group">  
	                            <label for="sexModal" class="col-sm-2 control-label">性别: </label>  
	                            <div class="col-sm-10">  
	                                <select id="sexModal" class="selectpicker" data-live-search="false"></select>  
	                            </div>  
	                        </div>
							<div class="form-group">  
	                            <label for="ctypeModal" class="col-sm-2 control-label">客户类别: </label>  
	                            <div class="col-sm-10">  
	                                <select  id="ctypeModal" class="selectpicker" data-live-search="false"></select>  
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
	display: none;
}
</style>
<script type="text/javascript" charset="utf-8">
var pram={
	'rowData':""
};

$(function(){
	uitl.dictEntry("ctype",1007);
	uitl.dictEntry("ctypeModal",1007);
	sexInit();
	
	validator();
	modalValidator();
});

function validator(){
	$("#newCustomerFrom").bootstrapValidator({
		message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },

        fields: {
        	cname: {
                message: '格式错误',
                validators: {
                    notEmpty: {
                        message: '不能为空'
                    }
                }
            },
            idno: {
                message: '格式错误',
                validators: {
                    notEmpty: {
                        message: '不能为空'
                    },
                    regexp: {
                        regexp: /^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/,
                        message: '格式错误'
                    }
                }
            },
            phone: {
                message: '格式错误',
                validators: {
                    notEmpty: {
                        message: '不能为空'
                    },
                    regexp: {
                        regexp: /^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$/,
                        message: '格式错误'
                    }
                }
            }
        }
    });
}

function modalValidator(){
	$("#cutomerDiv").bootstrapValidator({
		message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },

        fields: {
        	phoneModal: {
                message: '格式错误',
                validators: {
                    notEmpty: {
                        message: '不能为空'
                    },
                    regexp: {
                        regexp: /^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$/,
                        message: '格式错误'
                    }
                }
            }
        }
    });
}
//Modal验证销毁重构
$('#myModal').on('hidden.bs.modal', function() {
    $("#cutomerDiv").data('bootstrapValidator').destroy();
    $('#cutomerDiv').data('bootstrapValidator', null);
    modalValidator();
});
function sexFormatter(value, row, index){
	if(row.sex == 1){
		return '男'
	}else{
		return '女'
	}
}

function sexInit(){
	$('#sex').append("<option value='1'>"  
            + "男" + "</option>");  
	$('#sex').append("<option value='0'>"  
            + "女" + "</option>"); 

	$('#sex').selectpicker('val', '');  
	$('#sex').selectpicker('refresh');  
	
	//Modal窗口的sex渲染
	$('#sexModal').append("<option value='1'>"  
            + "男" + "</option>");  
	$('#sexModal').append("<option value='0'>"  
            + "女" + "</option>"); 

	$('#sexModal').selectpicker('val', '');  
	$('#sexModal').selectpicker('refresh'); 
}

$(window).on('load', function() {  
    $('#ctype').selectpicker('val', '');   
    $('#sex').selectpicker('val', '');    
});

$(".selectpicker").selectpicker({  
       noneSelectedText : '请选择'
}); 

function operateFormatter(value, row, index) {
    return '<a class="mod" style="cursor:pointer">修改</a> ' 
         + '<a class="del" style="cursor:pointer">删除</a> ';
}
//表格  - 操作 - 事件
window.operateEvents = {
    'click .mod': function(e, value, row, index) {
        openCustomer(row);
     },
    'click .del': function(e, value, row, index) {
    	 pram.rowData=row;
     }
}
function delCustomer(row){
	var idno = row.idno;
	$.ajax({
	    url:'../customerData/delCustomer.json?idno='+idno,
		type : "POST",
	    contentType: 'application/json;charset=UTF-8',//加上防止415错误
	    success:function(result){
	        //请求成功时
	    	$('#customerData').bootstrapTable('refresh');
	    	$("#resetData").trigger("click");//触发reset按钮
	    },
	    error:function(){
	        //请求失败时
	        alert('请求失败');
	    }
	});
}
$('#customerData').bootstrapTable({
	 url: '../customerData/allCustomer.json',
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
            btnOkClass:"btn btn-danger btn-sm",
            btnCancelClass:"btn btn-default btn-xs but-float",
            btnOkLabel:'确定',
            btnCancelLabel:'取消',
            onConfirm:function () {
                //alert("点击了确定");
            	delCustomer(pram.rowData);
            },
            onCancel: function () { 
            }
        });
      },
    cardView: false,                    //是否显示详细视图
	    columns: [{
	        field: 'cname',
	        title: '客户姓名'
	    }, {
	        field: 'idno',
	        title: '证件号码'
	    }, {
	        field: 'phone',
	        title: '电话号码'
	    }, {
	        field: 'sex',
	        title: '性别',
            formatter : sexFormatter
	    }, {
	        field: 'ctype',
	        title: '客户类别'
	    }, {
	        field: 'frequency',
	        title: '累计住房次数'
	    }, {
	        field: 'remark',
	        title: '备注'
	    }, {
	        field: 'opreter',
	        title: '操作',
            align : 'center',
            width : '15%',
            switchable:false,
            events : operateEvents,
            formatter : operateFormatter
	    }]
});

function commit(){
	
	if($("#idno").val()==''||$("#cname").val()==''||$("#phone").val()==''){
		$("#newCustomerFrom").data('bootstrapValidator').destroy();
	    $('#newCustomerFrom').data('bootstrapValidator', null);
	    validator();
	}
	
	$('#newCustomerFrom').data('bootstrapValidator').validate();  
    if(!$('#newCustomerFrom').data('bootstrapValidator').isValid()){  
        return ;  
    }  
	var data= {
			cname : $("#cname").val(),
			idno : $("#idno").val(),
			ctype : $("#ctype").val(),
			sex : $("#sex").val(),
			remark : $("#remark").val(),
			frequency : $("#frequency").val(),
			phone : $("#phone").val()
	}
	$.ajax({
	    url:'../customerData/addCustomer.json',
		type : "POST",
	    contentType: 'application/json;charset=UTF-8',//加上防止415错误
		dataType : "json",
	    data: JSON.stringify(data),
	    success:function(result){
	        //请求成功时
	    	$('#customerData').bootstrapTable('refresh');
	    	$("#resetData").trigger("click");//触发reset按钮
	    },
	    error:function(){
	        //请求失败时
	        alert('请求失败');
	    }
	});
}

function openCustomer(row){
	$('#myModal').modal('show');
	$('#cnameModal').val(row.cname);
	$('#idnoModal').val(row.idno);
	$('#phoneModal').val(row.phone);
	$('#frequencyModal').val(row.frequency);
	$('#remarkModal').val(row.remark);
 	$('#ctypeModal').selectpicker('val', row.ctype);//设置选中 
 	$('#sexModal').selectpicker('val', row.sex);//设置选中 
}

function commitModData(){
	$('#cutomerDiv').data('bootstrapValidator').validate();  
    if(!$('#cutomerDiv').data('bootstrapValidator').isValid()){  
        return ;  
    }  
	var data= {
			cname : $("#cnameModal").val(),
			idno : $("#idnoModal").val(),
			ctype : $("#ctypeModal").val(),
			sex : $("#sexModal").val(),
			remark : $("#remarkModal").val(),
			frequency : $("#frequencyModal").val(),
			phone : $("#phoneModal").val()
	}
	$.ajax({
	    url:'../customerData/modCustomer.json',
		type : "POST",
	    contentType: 'application/json;charset=UTF-8',//加上防止415错误
		dataType : "json",
	    data: JSON.stringify(data),
	    success:function(result){
	        //请求成功时
			$('#myModal').modal('hide');
	    	$('#customerData').bootstrapTable('refresh');
	    },
	    error:function(){
	        //请求失败时
	        alert('请求失败');
	    }
	});
    
}
</script>
</html>