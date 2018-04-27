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
	<div id="openRoomDataBar" class="btn-group" style="font-size: 20px;">
		<strong>开房及预约</strong>
    </div>
    <div id="dataDiv" class="col-sm-12">
	    <div id="customerDiv" class="col-sm-4">
	    	<div id="customerDataBar" class="btn-group">
				<strong>入住客户</strong>
	        </div>
			<form id="newCustomerFrom" style="margin-top: 15px;" role="form">
<!-- 			  <div class="form-group">
			    <label for="idno">证件号码</label>
			    <input type="text" class="form-control" id="idno" name="idno" placeholder="证件号码">
			  </div> -->
			  <div class="form-group">  
                  <label for="idno" class="control-label">证件号码</label>  
                  <div class="">  
                      <select  id="idno" class="selectpicker" onchange="selectCustomer(this)" data-live-search="true" name="idno" ></select>  
                  </div>  
              </div>
			  <div class="form-group">  
                 <label for="sex" class="control-label">性别</label>  
                 <div class="">  
                     <select id="sex" class=" selectpicker" data-live-search="false" name="sex" disabled="disabled" ></select>  
                 </div>  
              </div>
			  <div class="form-group">  
                  <label for="ctype" class="control-label">客户类别</label>  
                  <div class="">  
                      <select  id="ctype" class="selectpicker" data-live-search="false" name="ctype" disabled="disabled" ></select>  
                  </div>  
              </div>
			  <div class="form-group">
			    <label for="cname">客户姓名</label>
			    <input type="text" class="form-control" id="cname" name="cname" placeholder="客户姓名" disabled="disabled" >
			  </div>
			  <div class="form-group">
			    <label for="phone">电话号码</label>
			    <input type="tel" class="form-control" id="phone" name="phone" placeholder="电话号码" disabled="disabled" >
			  </div>
			  <div class="form-group">
			    <label for="frequency">累计住房次数</label>
			    <input type="text" class="form-control" id="frequency" name="frequency" placeholder="累计住房次数" value='0' disabled="disabled" >
			  </div>
			  <div class="form-group">
			    <label for="remark">备注</label>
			    <input type="text" class="form-control" id="remark" name="remark" placeholder="备注" disabled="disabled" >
			  </div>
			</form>
	    </div>
	    <div id="roomDiv" class="col-sm-4">
	    	<div id="roomDataBar" class="btn-group">
				<strong>入住客房</strong>
	        </div>
			<form id="newRoomFrom" style="margin-top: 15px;" role="form">
			  <!-- <div class="form-group">
			    <label for="roomno">房间号</label>
			    <input type="text" class="form-control" id="roomno" name="roomno" placeholder="房间号">
			  </div> -->
			  <div class="form-group">  
                 <label for="roomno" class="control-label">房间号</label>  
                 <div class="">  
                     <select id="roomno" class=" selectpicker" onchange="selectRoom(this)" data-live-search="false" name="roomno" ></select>  
                 </div>  
              </div>
			  <div class="form-group">  
                 <label for="roomtype" class="control-label">客房类别</label>  
                 <div class="">  
                     <select id="roomtype" class=" selectpicker" data-live-search="false" name="roomtype" disabled="disabled" ></select>  
                 </div>  
              </div>
			  <div class="form-group">  
                  <label for="rstate" class="control-label">客房状态</label>  
                  <div class="">  
                      <select  id="rstate" class="selectpicker" data-live-search="false" name="rstate" disabled="disabled"></select>  
                  </div>  
              </div>
			  <div class="form-group">
			    <label for="price">价格</label>
			    <input type="text" class="form-control" id="price" name="price" placeholder="价格" disabled="disabled">
			  </div>
			  <div class="form-group">
			    <label for="remak">备注</label>
			    <input type="text" class="form-control" id="remak" name="remak" placeholder="备注" disabled="disabled">
			  </div>
			</form>
	    </div>
	    <div id="dateDiv" class="col-sm-4">
	    	<div id="dateDataBar" class="btn-group">
				<strong>登记时间</strong>
	        </div>
			<form class="form-inline"id="newDateFrom" style="margin-top: 15px;" role="form">
			  <div class="form-group">
			    <label for="reserveDate" class="control-label">预约日期</label>
			    <br/>
			      <div id="zhezhao" style="background-color:#e3e3e3; position:absolute; z-index:9999; top:58px;height: 36px;width: 210px;opacity: 0.5; display:block;">
			      
			      </div>
	              <div id="reserveDateDiv" class="input-group date" style="margin-top: 4px;">
	                  <input id="reserveDate" name="reserveDate" class="form-control" type="text" readonly="readonly">
	                  <span id="reserveSpan" class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span> </span>
	              </div>
			  </div>
			  <div class="form-group" style="margin-top: 24px;margin-left: 7px;">
			  	<input type="checkbox" name="reserve" id="reserve" onClick="reserveCon()">预约住房
			  </div>
			  <br/>
<!-- 			  <div class="form-group" style="margin-top: 16px;">
			    <label for="beginDate" class="control-label">开始日期</label>
			    <br/>
				  <div id="beginDateDiv" class="input-group date" style="margin-top: 4px;">
	                  <input id="beginDate" name="beginDate" class="form-control" type="text" readonly="readonly"> 
	                  <span class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span> </span>
	              </div>
			  </div>
			  <div class="form-group"  style="margin-top: 16px;">
			    <label for="endDate" class="control-label">结束日期</label>
			    <br/>
	              <div id="endDiv" class="input-group date" style="margin-top: 4px;">
	                  <input id="end" name="end" class="form-control" type="text" readonly="readonly">
	                  <span class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span> </span>
	              </div>
			  </div> -->
			  
			  
			  <div class="form-group" style="margin-top: 16px;">
			    <label for="checkDate" class="control-label">入住日期</label>
			    <br/>
				  <div id="checkDateDiv" class="input-group date" style="margin-top: 4px;">
	                  <input id="checkDate" name="checkDate" class="form-control" type="text" readonly="readonly"> 
	                  <span class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span> </span>
	              </div>
			  </div>
			  <div class="form-group" style="margin-top: 16px;">
			    <label for="unCheckDate" class="control-label">退房日期</label>
			    <br/>
	              <div id="unCheckDateDiv" class="input-group date" style="margin-top: 4px;">
	                  <input id="unCheckDate" name="unCheckDate" class="form-control" type="text" readonly="readonly">
	                  <span class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span> </span>
	              </div>
			  </div>
			</form>
			  <div class="form-group" style="margin-top: 16px;">
			    <label for="remark3">备注</label>
			  <br/>
			    <input type="text" class="form-control" id="remark3" name="remark3" placeholder="备注">
			  </div>
			  <br/>
			  <div class="form-group"  style="margin-top: -21px;">  
                 <label for="paystate" class="control-label">支付状态</label>  
                 <div class="">  
                     <select id="paystate" class=" selectpicker" onchange="selectState(this)" data-live-search="false" name="paystate" ></select>  
                 </div>  
              </div>
			  <div class="form-group"  style="">  
                 <label for="orderstate" class="control-label">订单状态</label>  
                 <div class="">  
                     <select id="orderstate" class=" selectpicker" data-live-search="false" name="orderstate" disabled="disabled" ></select>  
                 </div>  
              </div>
	    </div>
    </div>
    <div style="">
    	<div class="col-sm-5">
    	</div>
    	<div class="col-sm-5" style="width: 15%;">
    		<button type="button" class="btn btn-primary btn-block" onClick="commitData()">提交</button>
    	</div>
    </div>
</body>
<script type="text/javascript" charset="utf-8">
$(function(){
	uitl.dictEntry("roomtype",1002);
	uitl.dictEntry("roomtypeModal",1002);
	uitl.dictEntry("rstate",1001);
	uitl.dictEntry("rstateModal",1001);
	uitl.dictEntry("ctype",1007);
	uitl.dictEntry("ctypeModal",1007);
	uitl.dictEntry("paystate",1004);
	uitl.dictEntry("orderstate",1005);
	uitl.sexInit();
	uitl.roomEntry("roomno");
	uitl.customerEntry("idno");
/*  initDateSelect("beginDateDiv");
    initDateSelect("endDiv"); */
    initDateSelect("checkDateDiv");
    initDateSelect("unCheckDateDiv");
    initDateSelect("reserveDateDiv");
/*  $('#beginDateDiv').unbind("change");
    $('#beginDateDiv').change(function(){
        $('#endDiv').datetimepicker('setStartDate', $("#beginDate").val());
    });
    $('#endDiv').unbind("change");
    $('#endDiv').change(function(){
        $('#beginDateDiv').datetimepicker('setEndDate', $("#end").val());
    }); */
    
    $('#checkDateDiv').unbind("change");
    $('#checkDateDiv').change(function(){
        $('#unCheckDateDiv').datetimepicker('setStartDate', $("#checkDate").val());
    });
    $('#unCheckDateDiv').unbind("change");
    $('#unCheckDateDiv').change(function(){
        $('#checkDateDiv').datetimepicker('setEndDate', $("#unCheckDate").val());
    });
    $("#reserve").click();
    $("#reserve").click();
});

function  initDateSelect(divId){
    //输入开始日期和结束日期
    //定位div上的id，不是input上id，否则后面两个小图标会失效
    $("#"+divId).datetimepicker({
        pickerPosition : "bottom-left",
        language : 'zh-CN',
        format:'yyyy-mm-dd hh:ii:ss',
        weekStart : 1,
        todayBtn : 1,
        autoclose : 1,
        todayHighlight : 1,
        startView : 2,
        minView : 0,
        forceParse : 0
    });
}

function reserveCon(){
	console.log($("#reserve")[0].checked);
	if($("#reserve")[0].checked){
	    $("#zhezhao").css("display","none"); 
	    $('#paystate').find('[value=预定金]').show();
	    $('#paystate').selectpicker('refresh');
	    if($('#paystate').val()!="未付"){
		    $('#orderstate').selectpicker('val', "已付");//设置选中 
		    $('#orderstate').selectpicker('refresh');
	    }else{
		    $('#orderstate').selectpicker('val', "未付");//设置选中 
		    $('#orderstate').selectpicker('refresh');
	    }
	}else{
	    $("#zhezhao").css("display","block"); 
	    $('#paystate').find('[value=预定金]').hide();
	    $('#paystate').selectpicker('refresh');
	    if($('#paystate').val()!="未付"){
		    $('#orderstate').selectpicker('val', "进行");//设置选中 
		    $('#orderstate').selectpicker('refresh');
	    }else{
		    $('#orderstate').selectpicker('val', "未付");//设置选中 
		    $('#orderstate').selectpicker('refresh');
	    }
	}
	
	
}
function selectState(data){
	var state = data.options[data.selectedIndex].value;
	if($("#reserve")[0].checked){
		if( state !="未付"){
		    $('#orderstate').selectpicker('val', "已付");//设置选中 
		    $('#orderstate').selectpicker('refresh');
	    }else{
		    $('#orderstate').selectpicker('val', "未付");//设置选中 
		    $('#orderstate').selectpicker('refresh');
	    }
	}else{
		if( state!="未付" ){
		    $('#orderstate').selectpicker('val', "进行");//设置选中 
		    $('#orderstate').selectpicker('refresh');
	    }else{
		    $('#orderstate').selectpicker('val', "未付");//设置选中 
		    $('#orderstate').selectpicker('refresh');
	    }
	}
	
	
}
function selectRoom(data){
	var roomno = data.options[data.selectedIndex].value;
	if(roomno==""){
		$('#price').val("");
		$('#remak').val("");
		$('#roomtype').selectpicker('refresh');  
	 	$('#roomtype').selectpicker('val', "");//设置选中 
	 	$('#rstate').selectpicker('val', "");//设置选中 
	}else{
		$.ajax({
		    url:'../roomData/getRoomByNo.json?roomno='+roomno,
			type : "POST",
		    contentType: 'application/json;charset=UTF-8',//加上防止415错误
		    success:function(result){
		        //请求成功时
				console.log("获取到的信息",result);
		        if(result.flag==1){
					$('#roomno').val(result.room.roomno);
					$('#price').val(result.room.price);
					$('#remak').val(result.room.remak);
				 	$('#roomtype').selectpicker('val', result.room.roomtype);//设置选中 
				 	$('#rstate').selectpicker('val', result.room.rstate);//设置选中 
		        }else{
					$('#price').val("");
					$('#remak').val("");
					$('#roomtype').selectpicker('refresh');  
				 	$('#roomtype').selectpicker('val', "");//设置选中 
				 	$('#rstate').selectpicker('val', "");//设置选中 
		        }
		    },
		    error:function(){
		        //请求失败时
		        alert('请求失败');
		    }
		}); 
	}
}; 

function selectCustomer(data){
	var idno = data.options[data.selectedIndex].value;
	if(idno==""){
		$('#phone').val("");
		$('#cname').val("");
		$('#frequency').val("");
		$('#remark').val("");
	 	$('#ctype').selectpicker('val', "");//设置选中 
	 	$('#sex').selectpicker('val', "");//设置选中 
	}else{
		$.ajax({
		    url:'../customerData/getCustomerById.json?idno='+idno,
			type : "POST",
		    contentType: 'application/json;charset=UTF-8',//加上防止415错误
		    success:function(result){
		        //请求成功时
				console.log("获取到的信息",result);
		        if(result.flag==1){
		    		$('#phone').val(result.customer.phone);
		    		$('#cname').val(result.customer.cname);
		    		$('#frequency').val(result.customer.frequency);
		    		$('#remark').val(result.customer.remark);
		    	 	$('#ctype').selectpicker('val', result.customer.ctype);//设置选中 
		    	 	$('#sex').selectpicker('val', result.customer.sex);//设置选中 
		        }else{
		    		$('#phone').val("");
		    		$('#cname').val("");
		    		$('#frequency').val("");
		    		$('#remark').val("");
		    	 	$('#ctype').selectpicker('val', "");//设置选中 
		    	 	$('#sex').selectpicker('val', "");//设置选中 
		        }
		    },
		    error:function(){
		        //请求失败时
		        alert('请求失败');
		    }
		}); 
	}
}; 

function checkMustDate(){
	var checkDate = $('#checkDate').val();
	var unCheckDate = $('#unCheckDate').val();
	if(checkDate=="" || unCheckDate==""){
		alert("入住时间和退房时间必填");
		return false;
	}
	if($('#idno').val()==""){
		alert("请选择入住用户");
		return false;
	}
	if($('#roomno').val()==""){
		alert("请选择入住房间");
		return false;
	}
	return true;
}

function commitData(){
	if(!checkMustDate())
		return ;	
	var checkDate = $('#checkDate').val();
	var unCheckDate = $('#unCheckDate').val();
	if($("#reserve")[0].checked){
		var reserveVal = $('#reserveDate').val();
		var reserveDate = reserveVal.split(" ")[0];
		var reserveTime = reserveVal.split(" ")[1];
		var orderType = "预约单";
		var cstate = "已预定";
	}else{
		var reserveDate = '0000-00-00';
		var reserveTime = '00:00:00';
		var orderType = "住房单";
		var cstate = "已入住";
	}
	if($('#paystate').val() == '未付'){
		var ordersTate = '未付'
	}else{
		var ordersTate = '已付'
	}
	
	var data = {
		roomno : $('#roomno').val(),
		idno : $('#idno').val(),
		cname : $('#cname').val(),
		phone : $('#phone').val(),
		begindate : '0000-00-00',
		enddate : '0000-00-00',
		checkdate : checkDate.split(" ")[0],
		reservedate : reserveDate,
		leavedate : unCheckDate.split(" ")[0],
		checktime : checkDate.split(" ")[1],
		reservetime : reserveTime,
		leavetime : unCheckDate.split(" ")[1],
		begintime : '00:00:00',
		endtime : '00:00:00',
		orderstate : ordersTate,
		ordertype : orderType,
		paystate : $('#paystate').val(),
		cstate : cstate,
		remark : $('#remark3').val()
	}
	
	$.ajax({
	    url:'../checkorderData/addCheckorder.json',
		type : "POST",
	    contentType: 'application/json;charset=UTF-8',//加上防止415错误
		dataType : "json",
	    data: JSON.stringify(data),
	    success:function(result){
	        //请求成功后跳转到订单信息
	    	alert("开房成功");
	    },
	    error:function(){
	        //请求失败时
	        alert('请求失败');
	    }
	});

}
</script>
</html>