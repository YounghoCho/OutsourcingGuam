jQuery(function($){

  $( document ).ready(function() {
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

    $("#datepicker1").attr("value", NowTime);
    $("#datepicker2").attr("value", NowTime);
  });

  $(function() {
    $("#datepicker1, #datepicker2").datepicker({
      dateFormat: 'yy-mm-dd',
      prevText: '이전 달',
      nextText: '다음 달',
      monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
      monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
      dayNames: ['일', '월', '화', '수', '목', '금', '토'],
      dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
      dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
      showMonthAfterYear: true,
      yearSuffix: '년'
    });
  });

  // 투어 인원 +, -시에 발생하는 이벤트
  $(function(){
    $('.bt_up').click(function(){
      var n = $('.bt_up').index(this);
      var num = $(".count:eq("+n+")").val();
      nam = $(".count:eq("+n+")").val(num*1+1);
      num = nam.val();
      $(".a:eq("+n+")").text(num);
      $(".b:eq("+n+")").text(num);
    });
    $('.bt_down').click(function(){
      var n = $('.bt_down').index(this);
      var num = $(".count:eq("+n+")").val();
      if(num!=0) num = $(".count:eq("+n+")").val(num*1-1);
      num = nam.val();
      $(".a:eq("+n+")").text(num);
      $(".b:eq("+n+")").text(num);
    });
  });

  // 예약 종류, 투어 선택 클릭 시 펼쳐지는 토글 이벤트
  $(function () {
    $('.toggle_button').click(function() {

      var documentWidth = $(document).width();
      var documentHeight = $(document).height();

      $('#escape_box').css("display", "block");
      $('#escape_box').css({'width':documentWidth,'height':documentHeight});

      var m = $('.toggle_button').index(this);

      $(".toggle_box:eq("+m+")").css("display", "block");
    });
  });

  // 펼쳐진 토글 창의 목록 중의 컴포넌트 클릭 시 해당 값이 버튼으로 입력 됨
  $(function () {
    $(".toggle_content").click(function () {
      var selected_content = $(this).text();
      var box_number = -1;
      $(".toggle_box").each(function(index) {
        if($(".toggle_box:eq("+index+")").css("display") == "block"){
          box_number = index;
        }
      });
      $(".toggle_button:eq("+box_number+")").children("span").text(selected_content);
      $(".toggle_box:eq("+box_number+")").css("display", "none");
      $("#escape_box").css("display", "none");
    });
  });

 //  펼쳐진 토글 창의 컴포넌트가 아닌 외부를 클릭하여도 벗어날 수 있게함
  $(function () {
    $("#escape_box").click(function () {
      $("#escape_box").css("display", "none");
      $(".toggle_box").each(function(index){
        $(".toggle_box:eq("+index+")").css("display", "none");
      });
    });
  });

  // 상단의 투어, 호텔, 렌트가 클릭 시 해당 기능이 활성화 될 수 있도록 버튼 이벤트를 만듦
  $(function () {
    $("#top_choice > .category > .content").click(function() {
      var a = $('#top_choice > .category > .content').index(this);
      $(".category_list_on").attr("class","category_list_off");
      $(".category_arrow_on").attr("class","category_arrow_off");
      $(".category_list_off:eq("+a+")").attr("class","category_list_on");
      $(".category_arrow_off:eq("+a+")").attr("class","category_arrow_on");
    });
  })

  // 견적 확인 클릭 시 발생하는 이벤트로 카카오톡에 바로 붙여넣을 수 있도록 값을 전달받아 표시함.
  $("#infomation_btn").on("click", function(e) {
    e.preventDefault();
    //화면의 높이와 너비를 구한다.
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
  });

  // 펼쳐진 견적 확인 창을 다시 끄기 위해서 사용하는 버튼이다.
  $("#close_btn").on("click", function(e) {
    //링크 기본동작은 작동하지 않도록 한다.
    e.preventDefault();
    $('#mask, #pop_background').hide();
  });

  // 펼쳐진 견적 확인 창의 외곽 어두운 영역을 클릭해도 끌 수 있도록 한다.
  $('#mask').click(function () {
    $(this).hide();
    $('#pop_background').hide();
  });

  // 신청하기 버튼을 클릭 시 발생하는 이벤트
  $("#complete_btn").on("click", function(){
    if($("#check_one").is(":checked") == false){
      alert("공통특약사항을 확인해주세요.");
      event.preventDefault();
      $('html,body').animate({scrollTop:$(".checkbox_title:eq(0)").offset().top}, 500);
      return ;
    }else if($("#check_two").is(":checked") == false){
      alert("필독사항을 확인해주세요.");
      event.preventDefault();
      $('html,body').animate({scrollTop:$(".checkbox_title:eq(1)").offset().top}, 500);
      return ;
    }else if($("#check_three").is(":checked") == false){
      alert("정보제공에 동의해주세요.");
      event.preventDefault();
      $('html,body').animate({scrollTop:$(".checkbox_title:eq(2)").offset().top}, 500);
      return ;
    }
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

});
