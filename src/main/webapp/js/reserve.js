//예약 신청하기
$("#complete_btn").on("click", function(){
	//예약 정보 불러오기
	var loop = global_index;
	for(var i = 1; i < loop; i++){
		var col1 = $("#added"+i+"> .col_1").html();
		var col2 = $("#added"+i+"> .col_2").html();
		var col3 = $("#added"+i+"> .col_3").html();
		var col4 = $("#added"+i+"> .col_4").html();
		var col5 = $("#added"+i+"> .col_5").html();
		var col6 = $("#added"+i+"> .col_6").html();
//		alert(col1+" "+col2+" "+col3+" "+col4+" "+col5+" "+col6+" ");
		//JSON 생성
		var reserveInfo = {
			    korName : $("#korName").val(),
			    engName : $("#engName").val(),
			    phone : $("#phone").val(),
			    email : $("#email").val(),
			
			    bigMidCategory : col1,
			    smallEtcCategory : col2,
			    reserveDateAndTime : col3,
			    reservePeople : col4,
			    preCharge : col5,
			    localCharge : col6
		};
	  $.ajax({
	    url : "makeReserve",
	    method : "post",
	    contentType : "application/json",
	    data : JSON.stringify(reserveInfo),
	    success : function(res){
	      alert("성공");
	    },
	    error : function(err){
	      alert("예약에 실패했습니다.");
	      alert(err);
	    }
	  });
	  
	}

});