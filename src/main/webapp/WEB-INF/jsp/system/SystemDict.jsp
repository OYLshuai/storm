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

<!--引入JQuery -->
<script src="/storm/static/js/uitl.js"></script>
<script src="/storm/static/js/menu.js"></script>
<script src="/storm/static/js/jquery.min.js"></script>
<script src="/storm/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="/storm/static/bootstrap-3.3.7-dist/js/bootstrap-table.min.js"></script>
<script src="/storm/static/bootstrap-3.3.7-dist/js/bootstrap-table-zh-CN.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body style="margin: 20px;">
	<div class="col-md-12">
		<div class="col-md-2">
			<strong>父项数据字典</strong>
			<table id="dictEntryData">
				
			</table>
		</div>
		<div id = "dictionaryDiv"  class="col-md-10" >
			<strong>数据字典</strong>
			<div id="dictionary" class="btn-group">
	            <button id="btn_add" type="button" class="btn btn-default">
	                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
	            </button>
	            <button id="btn_edit" type="button" class="btn btn-default">
	                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
	            </button>
	            <button id="btn_delete" type="button" class="btn btn-default">
	                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
	            </button>
	        </div>
			<table id="dictionaryData">
				
			</table>
		</div>
	</div>
</body>
<script type="text/javascript" charset="utf-8">

$('#dictionaryData').bootstrapTable({
	url: '../dictData/allSysDict.json',
	dataType: "json",
	method: 'get',                      //请求方式（*）
    toolbar: '#dictionary',             //工具按钮用哪个容器
    striped: true,                      //是否显示行间隔色
    cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
    pagination: true,                   //是否显示分页（*）
    sortable: false,                    //是否启用排序
    sortOrder: "asc",                   //排序方式
    pageNumber:1,                       //初始化加载第一页，默认第一页
    pageSize: 15,                        //每页的记录行数（*）
    pageList: [15, 20, 25, 30],          //可供选择的每页的行数（*）
    search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
    showColumns: true,                  //是否显示所有的列
    showRefresh: true,                  //是否显示刷新按钮
    minimumCountColumns: 2,             //最少允许的列数
    height:818,
    clickToSelect: true,                //是否启用点击选中行
    cardView: false,                    //是否显示详细视图
	    columns: [{
	        field: 'dictentry',
	        title: '字典父项'
	    }, {
	        field: 'dictprompt',
	        title: '字典父项名'
	    }, {
	        field: 'subentry',
	        title: '字典子项'
	    }, {
	        field: 'subprompt',
	        title: '字典子项名'
	    },  {
	        field: 'opreter',
	        title: '操作'
	    }]
	});


$('#dictEntryData').bootstrapTable({
	url: '../dictData/allDict.json',
	dataType: "json",
	method: 'get',                      //请求方式（*）
    striped: true,                      //是否显示行间隔色
    cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
    sortable: false,                    //是否启用排序
    sortOrder: "asc",                   //排序方式
    pageNumber:1,                       //初始化加载第一页，默认第一页
    showRefresh: true,                  //是否显示刷新按钮
    minimumCountColumns: 2,             //最少允许的列数
    height:765,
    onClickRow: function(row){ findChildDict(row) },  //单击方法
    clickToSelect: true,                //是否启用点击选中行
	    columns: [{
	        field: 'dictentry',
	        title: '字典父项'
	    }, {
	        field: 'entryport',
	        title: '字典父项名'
	    }]
	});

function findChildDict(row){
	console.log("click:" + row.dictentry)
	$.ajax({
		url : "../dictData/byEntry?entry=" + row.dictentry,
		type : "POST",
		dataType : "json",
		contentType : "application/json;charset=UTF-8",
		// <!-- 向后端传输的数据 -->
		data : JSON.stringify(row),
		success : function(result) {
			//var message = JSON.stringify(result.message);
			console.log(result);
			$("#dictionaryData").bootstrapTable('load',result);
		},
		error : function(result) {
			//var message = JSON.stringify(result.message);
		}
	});
}
</script>
</html>