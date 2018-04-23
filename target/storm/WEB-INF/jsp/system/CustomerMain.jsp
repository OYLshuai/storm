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
	<div class="col-sm-12">
		<div id="newCustomer" class="col-sm-3">
			<div id="customerDataBar" class="btn-group">
				<strong>新增客户</strong>
	        </div>
			<form>
			  <div class="form-group">
			    <label for="cname">客户姓名</label>
			    <input type="text" class="form-control" id="cname" placeholder="客户姓名">
			  </div>
			  <div class="form-group">
			    <label for="idno">证件号码</label>
			    <input type="text" class="form-control" id="idno" placeholder="证件号码">
			  </div>
			  <div class="form-group">
			    <label for="phone">电话号码</label>
			    <input type="text" class="form-control" id="phone" placeholder="电话号码">
			  </div>
			  <div class="form-group">
			    <label for="frequency">累计住房次数</label>
			    <input type="text" class="form-control" id="frequency" placeholder="累计住房次数" value='0'>
			  </div>
			  <div class="form-group">
			    <label for="remark">备注</label>
			    <input type="text" class="form-control" id="remark" placeholder="备注">
			  </div>
			  <div class="form-group">  
                 <label for="sex" class="control-label">性别</label>  
                 <div class="">  
                     <select id="sex" class="selectpicker" data-live-search="false"></select>  
                 </div>  
              </div>
			  <div class="form-group">  
                  <label for="ctype" class="control-label">客户类别</label>  
                  <div class="">  
                      <select  id="ctype" class="selectpicker" data-live-search="false"></select>  
                  </div>  
              </div>
			  
			  <button type="submit" class="btn btn-default">Submit</button>
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
	</div>
</body>
<script type="text/javascript" charset="utf-8">
$(function(){
	uitl.dictEntry("ctype",1007);
	sexInit();
});

function operateFormatter(value, row, index) {
    return '<a class="mod" style="cursor:pointer">修改</a> ' + '<a class="del" style="cursor:pointer">删除</a> ';
}
 
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
}

$(window).on('load', function() {  
    $('#ctype').selectpicker('val', '');   
    $('#sex').selectpicker('val', '');    
    
});

$(".selectpicker").selectpicker({  
       noneSelectedText : '请选择'
}); 

//表格  - 操作 - 事件
window.operateEvents = {
    'click .mod': function(e, value, row, index) {      
          //修改操作
    	console.log("修改客户信息")
     },
    'click .del': function(e, value, row, index) {      
         //开房操作
         console.log("删除客户信息")
     }
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
    pageSize: 6,                        //每页的记录行数（*）
    pageList: [6, 12, 18, 24],          //可供选择的每页的行数（*）
    search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
    showColumns: true,                  //是否显示所有的列
    showRefresh: true,                  //是否显示刷新按钮
    minimumCountColumns: 2,             //最少允许的列数
    clickToSelect: true,                //是否启用点击选中行
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
            events : operateEvents,
            formatter : operateFormatter
	    }]
	});
</script>
</html>