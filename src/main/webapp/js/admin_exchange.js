/*
 * 환율 조회
 */
$(document).ready(function(){
	$.ajax({
		url : "getRate",
		method : "get",
		success : function(res){
			$("#now_exchange").html(numberWithCommas(res)+"원");
		},
		error : function(err){
			alert("환율 조회 에러");
		}
	});
});
	
/*
 * 환율 변경
 */
$(".exchange_control_box > button").click(function () {
	var new_exchange = $("#change_exchange_input").val().replace(/[^(0-9)]\./g, "");
	new_exchange = parseFloat(new_exchange).toFixed(0);
	if(new_exchange == ""){
		alert("환율을 입력하세요.");
		return;
	}
	var rate = new_exchange;
	new_exchange = numberWithCommas(new_exchange) + "원";

	$.ajax({
		url : "updateExchangeRate?rate="+rate,
		method : "put",
		success : function(){
			$("#now_exchange").text(new_exchange);
		},
		error : function(err){
			alert("updateExchangeRate err");
		}
	});

	
});
