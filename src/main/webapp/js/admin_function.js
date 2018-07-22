/*
 * 예약하기
 */
//예약정보 조회
$(document).ready(function(){
	$.ajax({
		url : "getListCount",
		method : "get",
		success : function(count){ //loop data is count
						
			$.ajax({
				url : "getReserveList",
				method : "get",
				success : function(res){
					for(var i=0; i<count; i++){
						$("#containerHead").append(
								  "<div class = \"td_container\" id=\"row"+i+"\">" +
								   "<div class = \"td_1\">"+res.guamData[i].resIdx+"</div>" +
					               "<div class = \"td_2\">"+res.guamData[i].korName+"/"+res.guamData[i].engName+"</div>" +
					               "<div class = \"td_3\">"+res.guamData[i].phone+"</div>" +
					               "<div class = \"td_4\">"+res.guamData[i].email+"</div>" +
					               "<div class = \"td_5\">"+res.guamData[i].reserveDateAndTime+"</div>" +
					               "<div class = \"td_6\">"+res.guamData[i].currentDate+"</div>" +
					              "</div>" +
					              "<div class = \"del_btn_container\" id=\"del"+i+"\"><div onclick=\"deleteReserveData("+i+", "+res.guamData[i].resIdx+");\">삭제</div></div>"
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

function deleteReserveData(index, resIdx){
	var bool = confirm("데이터가 영구적으로 삭제됩니다. 정말 삭제하시겠습니까?");
	if(bool){
		$.ajax({
			type : "delete",
			url : "deleteReserveData?resIdx="+resIdx,
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