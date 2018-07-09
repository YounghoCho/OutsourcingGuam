//예약버튼 생성시 클래스명 맞추기
$(".button_reserve").on("click", function(){
  var reserveInfo = {
    korName : $("#korName").val(),
    engName : $("#engName").val(),
    phone : $("#phone").val(),
    email : $("#email").val(),
    category : $("#category").val(),
    tour : $("#tour").val(),
    reserveDate : $("#reserveDate").val(),
    reserveTime : $("#reserveTime").val(),
    adult : $("#adult").html(),
    kid : $("#kid").html(),
    baby : $("#baby").html()
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
});
