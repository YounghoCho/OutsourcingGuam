// 초기화면 버튼 클릭 시 이벤트
$("#return_main").on("click", function() {
  // location.reload(true);
  location.href = location.href;
  // history.go(0);
});

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

      var connectionResult = -1;

      $.ajax({
        url : "makeReserve",
        method : "post",
        contentType : "application/json",
        data : JSON.stringify(reserveInfo),
        success : function(res){
          connectionResult = 1;
        },
        error : function(err){
          connectionResult = 0;
          alert(err);
        }
      });//end ajax


      //화면의 높이와 너비를 구한다.

      var replaceText = "";

      if(connectionResult === 1){
        replaceText = "<p style = \"color : green;\">신청이 완료 되었습니다.</p>";
      }else{
        replaceText = "<p style = \"color : red;\">예약에 실패했습니다.</p>";
      }

      $(".pop_content > .title > p").replaceWith(replaceText);

      var docHeight = $(document).height();
      var windowWidth = $(window).width();
      var windowHeight = $(window).height();

      var text = "<상품 목록><br>";

      $("tr").each(function(index) {
        if(index > 0){
          text += "======== 선택 " + index + " ========<br>";
          text += "카테고리 : " + $(this).children(".col_1").text() + "<br>";
          text += "상품명 : " + $(this).children(".col_2").text() + "<br>";
          text += "투어날짜 및 시간 : " + $(this).children(".col_3").text() + "<br>";
          text += "인원 : " + $(this).children(".col_4").text() + "<br>";
          text += "예약금 : " + $(this).children(".col_5").text() + "<br>";
          text += "현지지불액 : " + $(this).children(".col_6").text() + "<br>";
        }
      });

      text += "<br><총 요금><br>";
      text += "총액 : " + $("#list > .total > .right > .orange").text() + "<br>";
      text += "상세 : " + $("#list > .total > .right > .dark").text() + "<br>";
      text += "<br>◐ [신청서작성] + [예약금결제OR전액선결제] 후 예약 진행입니다<br>◑ 여행사 사정으로 예약 불가시 100% 환불<br>◐ 환율계산 현금살때 기준입니다<br><br><결제 계좌번호><br>국민은행 392801 - 04 - 187229 유정아(놀다투어)<br><br>■ 이용 주의 사항 및 특약(누구나 읽기 가능)<br>http://cafe.naver.com/kajas/3175<br><br>■ 결제는 여행자가 특약, 이용시 주의 사항을 읽고 동의 후 계약을 진행 하였음으로 간주합니다.";

      result = text.replace(/(<br>|<br\/>|<br \/>)/g, '\r\n');

      $("#pop_background > .pop_box > .pop_content > .content_box > .content > p").text(result);

      //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
      $('#mask').css({'width':windowWidth,'height':docHeight});
      $('#pop_background').css({'width':windowWidth,'height':windowHeight});
      //애니메이션 효과 - 일단 1초동안 까맣게 됐다가 80% 불투명도로 간다.
      $('#mask').fadeIn(1000);
      $('#mask').fadeTo("slow", 1);

      //윈도우 같은 거 띄운다.
      $('#pop_background').show();

    }//end for
  }//end else
});
