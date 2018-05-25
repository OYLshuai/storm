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
<div class="alert alert-danger alert-dismissible" id="errmessage" role="alert" style = "display:none;float: none;">
	<button id="errmessageBtn" type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
</div>
	<div id="openRoomDataBar" class="btn-group" style="font-size: 20px;">
		<strong>退房</strong>
    </div>
    <div id="dataDiv" class="col-sm-12">
	    <div id="customerDiv" class="col-sm-4">
	    	<div id="customerDataBar" class="btn-group">
				<strong>入住客户</strong>
	        </div>
			<form id="newCustomerFrom" style="margin-top: 15px;" role="form">
			  <div class="form-group">  
                  <label for="idno" class="control-label">证件号码</label>  
                  <div class="">  
                      <select  id="idno" class="selectpicker" onchange="selectCustomerData(this)" data-live-search="true" name="idno" ></select>  
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
			  <div class="form-group">  
                 <label for="roomno" class="control-label">房间号</label>  
                 <div class="">  
                     <select id="roomno" class=" selectpicker" onchange="selectRoomData(this)" data-live-search="false" name="roomno" ></select>  
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
				<strong>退房时间</strong>
	        </div>
			<form class="form-inline"id="newDateFrom" style="" role="form">
<!-- 			  <div class="form-group" style="margin-top: 16px;">
			    <label id="chInputFlag" for="checkDate" class="control-label">入住日期</label>
			    <br/>
				  <div id="checkDateDiv" class="input-group date" style="margin-top: 4px;">
	                  <input id="checkDate" name="checkDate" class="form-control" type="text" readonly="readonly"> 
	                  <span class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span> </span>
	              </div>
			  </div> -->
 			  <div class="form-group" style="margin-top: 16px;">
			    <label id="chExitFlag" for="unCheckDate" class="control-label">退房日期</label>
			    <br/>
	              <div id="unCheckDateDiv" class="input-group date" style="margin-top: 4px;">
	                  <input id="unCheckDate" name="unCheckDate" class="form-control" type="text" readonly="readonly">
	                  <span class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span> </span>
	              </div>
			  </div> 
			</form>
			  <div class="form-group" style="margin-top: 16px;">
			    <label for="remark3">预约日期</label>
			  <br/>
			    <input type="text" class="form-control" id="reserveDate" name="reserveDate" placeholder="预约日期" disabled="disabled" >
			  </div>
			  <div class="form-group" style="margin-top: 16px;">
			    <label for="remark3">入住日期</label>
			  <br/>
			    <input type="text" class="form-control" id=checkDate name="checkDate" placeholder="入住日期" disabled="disabled" >
			  </div>
			  <div class="form-group" style="margin-top: 16px;">
			    <label for="remark3">预约入住日期</label>
			  <br/>
			    <input type="text" class="form-control" id="beginDate" name="beginDate" placeholder="预约入住日期" disabled="disabled" >
			  </div>
			  <div class="form-group" style="margin-top: 16px;">
			    <label for="remark3">预约退房日期</label>
			  <br/>
			    <input type="text" class="form-control" id="endDate" name="endDate" placeholder="预约退房日期" disabled="disabled" >
			  </div>
			  <div class="form-group" style="margin-top: 16px;">
			    <label for="remark3">备注</label>
			  <br/>
			    <input type="text" class="form-control" id="remark3" name="remark3" placeholder="备注" disabled="disabled" >
			  </div>
			  <br/>
			  <div class="form-group"  style="margin-top: -21px;">  
                 <label for="paystate" class="control-label">支付状态</label>  
                 <div class="">  
                     <select id="paystate" class=" selectpicker" data-live-search="false" name="paystate" disabled="disabled"></select>  
                 </div>  
              </div>
	    </div>
    </div>
    <div style="">
    	<div class="col-sm-5">
    	</div>
    	<div class="col-sm-5" style="width: 15%;">
    		<button type="button" class="btn btn-primary btn-block" onClick="commitData()">退房</button>
    	</div>
    </div>
</body>
<script type="text/javascript" charset="utf-8">
var impData = {
	//订单编号
	"orderno" : 0,
	//订单类型
	"ordertype": 0
};

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
	uitl.RoomEntry("roomno","CheckingRoom");
	uitl.CustomerEntry("idno","unCheckCustomer");
    initDateSelect("checkDateDiv");
    initDateSelect("unCheckDateDiv");
    
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

	var jump = "${jump}";
	if(jump == "true"){
    	jumpFunction();
	}
});

function jumpFunction(){
		var nextA = $(".active",window.parent.document).next().next();
		$(".active",window.parent.document).removeClass("active");
		nextA.addClass("active");
		var roomno = "${roomno}";
		var idno = "${idno}";
		var destine = "${destine}";
		if(destine == 'check'){
			$("#reserve").click();
		}
		selectRoom(roomno);
		selectCustomer(idno);
}

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

function selectRoomData(data){
	var roomno = data.options[data.selectedIndex].value;
	selectRoom(roomno);
	orderDateInf();
}; 

function selectRoom(roomno){
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
		        if(result.flag==1){
				 	$('#roomno').selectpicker('val', result.room.roomno);//设置选中 
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
		        setErrMessage("请求失败");
		    }
		}); 
	}
}

function selectCustomerData(data){
	var idno = data.options[data.selectedIndex].value;
	selectCustomer(idno);
	selectOrderInf(idno);
	orderDateInf();
}; 

function orderDateInf(){
	var roomno = $('#roomno').val();
	var idno = $('#idno').val();
	if(roomno != "" && idno !=""){
       $.ajax({  
             type : 'get',  
             url : "../checkorderData/oneCheckorder?idno="+idno+"&&roomno="+roomno,  
             dataType : 'json',  
             success : function(datas) {//返回list数据并循环获取  
				if(datas.flag==0){
			        setErrMessage("该客户未定此房");
					$('#checkDate').val(" ");
					$('#reserveDate').val(" ");
					$('#beginDate').val(" ");
					$('#endDate').val(" ");
					$('#remark3').val(" ");
				}else{
					var row = datas.Checkorder;
					impData.orderno = row.orderno;
					impData.ordertype = row.ordertype;
					$('#reserveDate').val(row.reservedate+" "+row.reservetime);
					if(impData.ordertype != "预约单"){
						$('#checkDate').val(row.checkdate+" "+row.checktime);
					}
					$('#beginDate').val(row.begindate+" "+row.begintime);
					$('#endDate').val(row.enddate+" "+row.endtime);
					$('#remark3').val(row.remark);
				 	$('#orderstate').selectpicker('val', row.orderstate);//设置选中 
				 	$('#paystate').selectpicker('val', row.paystate);//设置选中 
				}
             }
         }); 
	}
}
//选择客户的时候   房间信息刷新为该客户的订房信息  
function selectOrderInf(idno){
	if($('#roomno').val()==""){

	}
}

function selectCustomer(idno){
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
		        if(result.flag==1){
		    	 	$('#idno').selectpicker('val', idno);//设置选中 
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
			    setErrMessage("请求失败");
		    }
		}); 
	}
}

function checkMustDate(){
	var checkDate = $('#checkDate').val();
	var unCheckDate = $('#unCheckDate').val();
	if(checkDate=="" || unCheckDate==""){
		setErrMessage("入住时间和退房时间必填");
		return false;
	}
	if($('#idno').val()==""){
		setErrMessage("请选择入住用户");
		return false;
	}
	if($('#roomno').val()==""){
		setErrMessage("请选择入住房间");
		return false;
	}
	return true;
}

function setErrMessage(message){
	if($("#errmessage").find("#message").length=0){
		$("#errmessageBtn").after("<b id='message'>"+message+"</b>");
	}else{
		$("#errmessage").find("#message").remove();
		$("#errmessageBtn").after("<b id='message'>"+message+"</b>");
	}
	$("#errmessage").show(500);
	setTimeout(function(){
        $("#errmessage").hide(500);
    }, 5000);
}

function commitData(){
	if(!checkMustDate())
		return ;	
	var checkDate = $('#checkDate').val();
	var unCheckDate = $('#unCheckDate').val();
	var beginVal = $('#beginDate').val();
	var reserveVal = $('#reserveDate').val();
	var endVal = $('#endDate').val();
	
	var reserveDate = reserveVal.split(" ")[0];
	var reserveTime = reserveVal.split(" ")[1];
	var beginDate = beginVal.split(" ")[0];
	var beginTime = beginVal.split(" ")[1];
	var endDate = endVal.split(" ")[0];
	var endTime = endVal.split(" ")[1];
	var checkdate = checkDate.split(" ")[0];
	var checktime = checkDate.split(" ")[1];
	var leavedate = unCheckDate.split(" ")[0];
	var leavetime = unCheckDate.split(" ")[1];
	var roomState = "空房";
	if(impData.ordertype == "预约单"){
		var orderType = "预约单";
		var cstate = "退预定";
		var ordersTate = "退款";
	}else{
		var orderType = "住房单";
		var cstate = "住房到期";
		var ordersTate = "完成";
	}
	
	var data = {
		roomno : $('#roomno').val(),
		idno : $('#idno').val(),
		cname : $('#cname').val(),
		phone : $('#phone').val(),
		begindate : beginDate,
		enddate : endDate,
		checkdate : checkdate,
		reservedate : reserveDate,
		leavedate : leavedate,
		checktime : checktime,
		reservetime : reserveTime,
		leavetime : leavetime,
		begintime : beginTime,
		endtime : endTime,
		orderstate : ordersTate,
		ordertype : orderType,
		paystate : $('#paystate').val(),
		cstate : cstate,
		remark : $('#remark3').val()
	}
	console.log("数据：",data);
/* 	var _page = $('.list-group', window.parent.document);
	var _pageLength = _page.children().length;

	 $.ajax({
	    url:'../checkorderData/orderChange.json?orderno='+impData.orderno,
		type : "POST",
	    contentType: 'application/json;charset=UTF-8',//加上防止415错误
		dataType : "json",
	    data: JSON.stringify(data),
	    success:function(result){
	        //请求成功后跳转到订单信息
			_page.children()[6].click();
	    },
	    error:function(){
	        //请求失败时
			setErrMessage("请求失败");
	    }
	}); */  

}
</script>
</html>