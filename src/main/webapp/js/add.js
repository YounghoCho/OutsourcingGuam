$("#add_btn").on("click", function(){
  var v = {
    korName : $("#korName").val(),
    engName : $("#engName").val(),
    phone : $("#phone").val(),
    email : $("#email").val(),
    category : $("#category").html(),
    tour : $("#tour").html(),
    reserveDate : $("#reserveDate").val(),
    reserveTime : $("#reserveTime").val(),
    adult : $("#adult").html(),
    kid : $("#kid").html(),
    baby : $("#baby").html()
  };
  //validation
//  if(v.korName == '') {alert("한글 이름을 입력해주세요."); return;}
//  else if(v.engName == '')  {alert("영문 이름을 입력해주세요"); return;}
//  else if(v.phone == '')  {alert("휴대폰 번호를 입력해주세요"); return;}
//  else if(v.email == '')  {alert("이메일 주소를 입력해주세요"); return;}
//  else if(v.category == '')  {alert("예약 종류를 선택해주세요"); return;}
//  else if(v.tour == '')  {alert("투어를 선택해주세요"); return;}
//  else if(v.reserveDate == '')  {alert("투어 날짜를 선택해주세요"); return;}
//  else if(v.reserveTime == '')  {alert("투어 시간을 선택해주세요"); return;}
//  else if(v.adult + v.kid + v.baby == 0) {alert("투어 인원을 선택해주세요"); return;}

  //상품 추가
  var countPeople = parseInt(v.adult) + parseInt(v.kid) + parseInt(v.baby);
  $("#bill > tbody").append(
    "<tr><td class=\'col_1\'>" + v.category + "</td>" +
    "<td class=\'col_2\'>" + v.tour + "</td>" +
    "<td class=\'col_3\'>" + v.reserveDate + "/" + v.reserveTime + "</td>" +
    "<td class=\'col_4\'>" + countPeople + "</td>" +
    "<td class=\'col_5\'>" + "$90" + "<br>(101,900 원)" + "</td>" +
    "<td class=\'col_6\'>" + "$1000" + "</td></tr>"
  );

  //상품 정보 갱신
  $("#korName").val('');
  $("#engName").val('');
  $("#phone").val('');
  $("#email").val('');
  $("#category").html('예약 종류');
  $("#category").css('color', '#999');
  $("#tour").html('투어 선택');
  $("#tour").css('color', '#999');
  $("#reserveDate").val('');
  $("#reserveTime").val('');
  $(".count").val('0');

  //전체 컬럼을 넘기거나 계산할떄
  //추가 버튼 누를때마다 i++ 하고
  //각 tr의 클래스에 _ + i++ 형태로 고유 클래스를 준다음 넘기거나 계산한다.
});
