// 금액표기 시 3자리 마다 콤마를 찍는 함수.
function numberWithCommas(x) {
  return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

$("#add_btn").on("click", function(){
  var v = {
    korName : $("#korName").val(),
    engName : $("#engName").val(),
    phone : $("#phone").val(),
    email : $("#email").val(),
    sel_1 : $("#first_divide_option").text(),
    sel_2 : $("#second_divide_option").text(),
    sel_3 : $("#third_divide_option").text(),
    sel_4 : $("#fourth_divide_option").text(),
    startReserveDate : $("#datepicker1").val(),
    endReserveDate : $("#datepicker2").val(),
    reserveTime : $("#reserveTime").text(),
    adult : $("#adult").html(),
    kid : $("#kid").html(),
    baby : $("#baby").html()
  };

  // 선택항목의 가격을 전달하기 위한 변수 선언
  var local_pay = $("#local_payment").text();
  local_pay = local_pay.replace('$', '');
  local_pay = parseFloat(local_pay);

  var abroad_pay = $("#abroad_payment").text();
  abroad_pay = abroad_pay.replace('$', '');
  abroad_pay = parseFloat(abroad_pay);

  var exchange_value = 1000;    // 입력된 환율로 가정
  var local_pay_won = numberWithCommas(local_pay*exchange_value) + "원";
  var local_pay_dollor = "$" + numberWithCommas(local_pay);
  var abroad_pay_dollor = "$" + numberWithCommas(abroad_pay);

  var insert_people_tr = "";
  if(v.adult > 0){
    insert_people_tr += "성인 :&nbsp;" + v.adult;
  }
  if(v.kid > 0){
    insert_people_tr += "<br>소아 :&nbsp;" + v.kid;
  }
  if(v.baby > 0){
    insert_people_tr += "<br>유아 :&nbsp;" + v.baby;
  }

  // 현재시간 가져오기
  var Now = new Date();
  var NowTime = Now.getFullYear();
  if(Now.getMonth() + 1 < 10){
    NowTime += '-' + "0" + (Now.getMonth() + 1);
  }else{
    NowTime += '-' + (Now.getMonth() + 1);
  }
  if(Now.getDate() >= 10){
    NowTime += '-' + Now.getDate();
  }else{
    NowTime += '-' + "0" + Now.getDate();
  }

  alert(NowTime);


    //validation
 // if(v.korName == "") {alert("한글 이름을 입력해주세요."); event.preventDefault(); $('html,body').animate({scrollTop:$("#korName").offset().top}, 500); return;}
 // else if(v.engName == '')  {alert("영문 이름을 입력해주세요"); return;}
 // else if(v.phone == '')  {alert("휴대폰 번호를 입력해주세요"); return;}
 // else if(v.email == '')  {alert("이메일 주소를 입력해주세요"); return;}
 // else if(v.sel_1 == "대분류 선택")  {alert("대분류를 선택해주세요"); return;}
 // else if(v.sel_2 == "중분류 선택")  {alert("중분류를 선택해주세요"); return;}
 // else if(v.sel_3 == "소분류 선택")  {alert("소분류를 선택해주세요"); return;}
 // else if(v.sel_4 == "기타분류 선택")  {alert("기타분류를 선택해주세요"); return;}
 // // else if(v.startReserveDate == '')  {alert("투어 시작 날짜를 선택해주세요"); return;}
 // // else if(v.endReserveDate == '')  {alert("투어 종료 날짜를 선택해주세요"); return;}
 // else if(v.reserveTime == "투어시간")  {alert("투어 시간을 선택해주세요"); return;}
 // else if(v.adult + v.kid + v.baby == 0) {alert("투어 인원을 선택해주세요"); return;}

  //상품 추가
  var countPeople = parseInt(v.adult) + parseInt(v.kid) + parseInt(v.baby);
  $("#bill > tbody").append(
    "<tr><td class=\'col_1\'>" + v.sel_1 + "/<br>" + v.sel_2 + "</td>" +
    "<td class=\'col_2\'>" + v.sel_3 + "/<br>" + v.sel_4 + "</td>" +
    "<td class=\'col_3\'>" + v.startReserveDate + "&nbsp;~&nbsp;" + v.endReserveDate + "<br>" + v.reserveTime + "</td>" +
    "<td class=\'col_4\'>" + insert_people_tr + "</td>" +
    "<td class=\'col_5\'>" + local_pay_dollor + "<br>(" + local_pay_won + ")</td>" +
    "<td class=\'col_6\'>" + abroad_pay_dollor + "</td></tr>"
  );

  //상품 정보 갱신, 예약자 정보는 유지
  // $("#korName").val('');
  // $("#engName").val('');
  // $("#phone").val('');
  // $("#email").val('');
  $("#first_divide_option > span").text("대분류 선택");
  $("#second_divide_option > span").text("중분류 선택");
  $("#third_divide_option > span").text("소분류 선택");
  $("#fourth_divide_option > span").text("기타분류 선택");
  $("#datepicker1").val(NowTime);
  $("#datepicker2").val(NowTime);
  $("#reserveTime").text("투어시간");
  $(".count").val('0');

  //전체 컬럼을 넘기거나 계산할떄
  //추가 버튼 누를때마다 i++ 하고
  //각 tr의 클래스에 _ + i++ 형태로 고유 클래스를 준다음 넘기거나 계산한다.


});
