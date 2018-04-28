<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--引入样式 -->
<link href="/storm/static/css/style.css" rel="stylesheet">
<link href="/storm/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="/storm/static/bootstrap-3.3.7-dist/css/bootstrap-table.min.css" rel="stylesheet">
<link href="/storm/static/bootstrap-3.3.7-dist/css/bootstrap-select.min.css" rel="stylesheet">
<link href="/storm/static/bootstrap-3.3.7-dist/css/bootstrapValidator.min.css" rel="stylesheet">
<link href="/storm/static/bootstrap-3.3.7-dist/css/bootstrap-datetimepicker.css" rel="stylesheet">

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
<script src="/storm/static/bootstrap-3.3.7-dist/js/bootstrap-datetimepicker.js"></script>
<script src="/storm/static/bootstrap-3.3.7-dist/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="https://cdn.bootcss.com/bootstrap-confirmation/1.0.7/bootstrap-confirmation.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body style="margin: 20px;">
	<div>
		<div id="checkorderDataBar" class="btn-group">
			<strong>订单列表</strong>
        </div>
        <div id="tableDiv">
			<table id="checkorderData">
				
			</table>
		</div>
	</div>
</body>
<script type="text/javascript" charset="utf-8">

function operateFormatter(value, row, index) {
    return '<a class="details" style="cursor:pointer">详情</a> ' ;
}
//表格  - 操作 - 事件
window.operateEvents = {
    'click .details': function(e, value, row, index) {
        console.log("查看详情");
     }
}

$('#checkorderData').bootstrapTable({
	url: '../checkorderData/allCheckorder.json',
	dataType: "json",
   method: 'get',                      //请求方式（*）
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
	        field: 'roomno',
	        title: '房号'
	    }, {
	        field: 'checkdeta',
	        title: '入住日期'
	    }, {
	        field: 'checktime',
	        title: '入住时间'
	    }, {
	        field: 'leavedate',
	        title: '退房日期'
	    }, {
	        field: 'leavetime',
	        title: '退房时间'
	    },{
	        field: 'reservedate',
	        title: '预定日期'
	    }, {
	        field: 'reservetime',
	        title: '预定时间'
	    },{
	        field: 'orderstate',
	        title: '订单状态'
	    }, {
	        field: 'ordertype',
	        title: '订单类型'
	    },{
	        field: 'paystate',
	        title: '支付状态'
	    }, {
	        field: 'cstate',
	        title: '客户状态'
	    },{
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

</script>
</html>