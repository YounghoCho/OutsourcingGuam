jQuery(function($) {
  // 상단 박스영역의 토글 박스 클릭 시 드롭다운 되는 이벤트
  $(function () {
    $('.big_toggle_component').click(function() {

      var documentWidth = $(document).width();
      var documentHeight = $(document).height();

      $('#escape_box').css("display", "block");
      $('#escape_box').css({'width':documentWidth,'height':documentHeight});

      $(this).children(".toggle_box").css("display", "block");
    });
  });

  // 상단 박스영역의 펼쳐진 토글 박스의 목록 중의 컴포넌트 클릭 시 해당 값이 버튼으로 입력 됨
  $(function () {
    $(".toggle_content").click(function () {
      event.stopPropagation();
      var selected_content = $(this).text();
      $(this).parents(".toggle_box").siblings(".left_area").children(".down_area").children("button").children("span").text(selected_content);
      $(this).parents(".toggle_box").css("display", "none");
      $("#escape_box").css("display", "none");
    });
  });

  // 상단 박스영역의 아이콘 박스 클릭 시 위치가 변경되는 이벤트
  $(function () {
    $('.round_toggle_icon').click(function() {
      if($(this).children(".round_toggle_inner").css("margin-left") == "0px"){
        var ma = $(this).width() - 54;
        $(this).children(".round_toggle_inner").children("p").text("ON");
        $(this).children(".round_toggle_inner").animate({marginLeft:ma, backgroundColor:"#ff6600", color : "#ffffff"},"slow");
      }
      else{
        $(this).children(".round_toggle_inner").children("p").text("OFF");
        $(this).children(".round_toggle_inner").animate({marginLeft:0, backgroundColor:"#eeeeee", color : "#777777"},"slow");
        // delay(400).css("float", "left");
      }
    });
  });

  // 중앙 테이블 영역의 토글 박스 클릭 시 드롭다운 되는 이벤트
  $(function () {
    $(".reservation_status").click(function() {

      var documentWidth = $(document).width();
      var documentHeight = $(document).height();

      $("#escape_box").css("display", "block");
      $("#escape_box").css({'width':documentWidth,'height':documentHeight});
      var m = $(".reservation_status").index(this);

      $(this).css("background-color", "#e9e9e9");
      $(".td_toggle_box:eq("+m+")").css("display", "block");
      $(".reservation_status > span:eq("+m+")").css("color", "white");
      $(".reservation_status:eq("+m+")").css("background-color", "#999999");
    });
  });

  // 중앙 테이블 영역의 펼쳐진 토글 박스의 목록 중의 컴포넌트 클릭 시 해당 값이 버튼으로 입력 됨
  $(function () {
    $(".td_toggle_content").click(function () {
      var selected_context = $(this).text();
      $(this).closest(".td_toggle_box").siblings(".reservation_status").children("span").text(selected_context);
      $(this).closest(".td_toggle_box").siblings(".reservation_status").children("span").css("color", "#777777");
      $(this).parents(".td_toggle_box").siblings(".reservation_status").css("background-color", "white");
      $(this).parents(".td_toggle_box").css("display", "none");
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
      $(".td_toggle_box").each(function(index){
        $(".reservation_status:eq("+index+")").css("background-color", "white");
        $(".reservation_status:eq("+index+")").children("span").css("color", "#777777");
        $(".reservation_status:eq("+index+")").css("background-color", "white");
        $(".td_toggle_box:eq("+index+")").css("display", "none");
      });
    });
  });

  // 발송 버튼 클릭 시 이벤트
  $(function () {
    $(".round_button_orange").click(function() {
      if($(this).attr("class") != "round_button_gray"){
        alert("알림톡을 발송합니다.");
        $(this).children("span").text("발송완료");
        $(this).attr("class", "round_button_gray");
      }
    });
  });

  // 삭제 '확인' 버튼 클릭 시 이벤트
  $(function () {
    $(".delete_button_gray").click(function() {
      $(this).parents(".list_container_tr").remove();
    });
  });
  // $(document).on("click",".delete_button_gray",function(){
  //   $(this).parent(".list_container_tr").remove();
  // });

  // datepicker에 현재날짜 세팅
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

  // datepicker 이벤트
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

  //
});
