  /*
   * 옵션 추가
   */
var global_for_option = 1;
 
$(function (){
    $(".rectangle_select_box > button").click(function() {

  var sel_1 = $("#big_divide_select").val();
  var sel_2 = $("#middle_divide_select").val();
  var sel_3 = $("#small_divide_select").val();

  var adult_price = $("#insert_adult_price").val().replace(/[^(0-9)\.]/g, "");
  adult_price = parseFloat(adult_price).toFixed(2);
  var kid_price = $("#insert_kid_price").val().replace(/[^(0-9)\.]/g, "");
  kid_price = parseFloat(kid_price).toFixed(2);;
  var baby_price = $("#insert_baby_price").val().replace(/[^(0-9)\.]/g, "");
  baby_price = parseFloat(baby_price).toFixed(2);

  if(sel_1 == ""){
    alert("대분류를 선택하세요.");
    return;
  }
  else if(sel_2 == ""){
    alert("중분류를 선택하세요.");
    return;
  }
  else if(sel_3 == ""){
    alert("소분류를 선택하세요.");
    return;
  }
  else if(adult_price == "NaN"){
    alert("성인 1명 비용을 입력하세요.");
    return;
  }

  adult_price = "$" + numberWithCommas(adult_price);
  if(kid_price == "NaN"){
    kid_price = "선택 불가";
  }else{
    kid_price = "$" + numberWithCommas(kid_price);
  }
  if(baby_price == "NaN"){
    baby_price = "선택 불가";
  }else{
    baby_price = "$" + numberWithCommas(baby_price);
  }


  var add_div = "<div class = \"tr_container\"><div class = \"td_container\" id=\"passOption"+global_for_option+"\">";

  add_div += "<div class = \"td_cell\" id=\"op1\">"+sel_1+"</div>";
  add_div += "<div class = \"td_cell\" id=\"op2\">"+sel_2+"</div>";
  add_div += "<div class = \"td_cell\" id=\"op3\">"+sel_3+"</div>";
  add_div += "<div class = \"td_cell_small\" id=\"op4\">"+adult_price+"</div>";
  add_div += "<div class = \"td_cell_small\" id=\"op5\">"+kid_price+"</div>";
  add_div += "<div class = \"td_cell_small\" id=\"op6\">"+baby_price+"</div>";

  add_div += "</div><div class = \"del_btn_container\"><div class = \"del_text\">삭제</div></div></div>";

  $(".table_container").append(add_div);
 
  global_for_option++;

  $("#big_divide_select").val("");
  $("#middle_divide_select").val("");
  $("#small_divide_select").val("");
  $("#insert_adult_price").val("");
  $("#insert_kid_price").val("");
  $("#insert_baby_price").val("");
  
  //옵션 데이터 DB 전송      
  for(var i=1; i<global_for_option; i++){
	  var options = {
			   op1 : $("#passOption"+i+" > #op1").html(),
			   op2 : $("#passOption"+i+" > #op2").html(),
			   op3 : $("#passOption"+i+" > #op3").html(),
			   op4 : $("#passOption"+i+" > #op4").html(),
			   op5 : $("#passOption"+i+" > #op5").html(),
			   op6 : $("#passOption"+i+" > #op6").html()
	  };
	  $.ajax({
	    url : "insertOptions",
	    method : "post",
	    contentType : "application/json",
	    data : JSON.stringify(options),
	    success : function(res){
	    },
	    error : function(err){
	      alert("옵션 등록에 실패했습니다.");
	      alert(err);
	    }
	  });//end ajax
  } //end for
      
    });
  });
  
  
/*
 * 옵션 읽기
 */
$(document).ready(function(){
	$.ajax({
		url : "getOptionCount",
		method : "get",
		success : function(count){ //loop data is count
			$.ajax({
				url : "getOptionList",
				method : "get",
				success : function(res){
					for(var i=0; i<count; i++){
						$("#containerHead").append(
								  "<div class = \"td_container\" id=\"row"+i+"\">" +
								   "<div class = \"td_cell\">"+res.optionData[i].opBig+"</div>" +
					               "<div class = \"td_cell\">"+res.optionData[i].opMid+"</div>" +
					               "<div class = \"td_cell\">"+res.optionData[i].opSmall+"</div>" +
					               "<div class = \"td_cell_small\">"+res.optionData[i].opAdult+"</div>" +
					               "<div class = \"td_cell_small\">"+res.optionData[i].opKid+"</div>" +
					               "<div class = \"td_cell_small\">"+res.optionData[i].opBaby+"</div>" +
					              "</div>" +
					              "<div class = \"del_btn_container\" id=\"del"+i+"\"><div class = \"del_text\" onclick=\"deleteOptionData("+i+", "+res.optionData[i].opIdx+");\">삭제</div></div>"
					    );       
					} //end for					
				},
				error : function(err){
					alert("error on getReserveList");
				}
			}); //end inner ajax
		},
		error : function(err){
			alert("err getListCount");
		}
	});	//end outer ajax
}); //end ready

function deleteOptionData(index, opIdx){
	var bool = confirm("데이터가 영구적으로 삭제됩니다. 정말 삭제하시겠습니까?");
	if(bool){
		$.ajax({
			type : "delete",
			url : "deleteOptionData?opIdx="+opIdx,
			method : "put",
			success : function(res){
				$("#row"+index).remove();
				$("#del"+index).remove();
			},
			error : function(err){
				alert("err deleteReserveData");
			}
		}); //end delete ajax
	}
} //end deleteRow func