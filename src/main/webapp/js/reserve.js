//예약 신청하기
$("#complete_btn").on("click", function(){
	//validation
	if($("#check_one").is(":checked") == false){
	    alert("공통특약사항을 확인해주세요.");
	    $('html,body').animate({scrollTop:$(".checkbox_title:eq(0)").offset().top}, 500);
	    return;
	}else if($("#check_two").is(":checked") == false){
		alert("필독사항을 확인해주세요.");
		$('html,body').animate({scrollTop:$(".checkbox_title:eq(1)").offset().top}, 500);
	    return;
	}else if($("#check_three").is(":checked") == false){
		alert("정보제공에 동의해주세요.");
		$('html,body').animate({scrollTop:$(".checkbox_title:eq(2)").offset().top}, 500);
	    return;
	}else{		
		var loop = global_index;
		//2nd validation
		if(loop == 1){ 
			alert("상품을 추가해 주세요");
		}
		//예약 정보 불러오기
		for(var i = 1; i < loop; i++){
			var col1 = $("#added"+i+"> .col_1").html();
			var col2 = $("#added"+i+"> .col_2").html();
			var col3 = $("#added"+i+"> .col_3").html();
			var col4 = $("#added"+i+"> .col_4").html();
			var col5 = $("#added"+i+"> .col_5").html();
			var col6 = $("#added"+i+"> .col_6").html();
//			alert(col1+" "+col2+" "+col3+" "+col4+" "+col5+" "+col6+" ");
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
		      alert("신청이 완료 되었습니다.");
		      window.location.href="/";		      
		    },
		    error : function(err){
		      alert("예약에 실패했습니다.");
		      alert(err);
		    }
		  });//end ajax
		}//end for
	}//end else	
});