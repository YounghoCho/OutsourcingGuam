// 금액표기 시 3자리 마다 콤마를 찍는 함수.
function numberWithCommas(x) {
  return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

jQuery(function($) {
  // 우측 메뉴바 이벤트
  $(function () {
    $(".head_menu_icon_area").click(function(){
      if($("#menu_box").css("display") === "none") {
        var targetHeight = $(window).height() - 60;
        $("#menu_box").css({"display": "block", 'height': targetHeight});
      }else{
        $("#menu_box").css("display", "none");
      }
    });
  });

  // 메인화면 예약내용 테이블 클릭 시 상세보기
  $(function () {
    $(".tr_container").click(function () {
      if($(this).children(".hidden_toggle_box").css("display") == "none"){
        $(this).children(".hidden_toggle_box").css("display", "block");
      }else{
        $(this).children(".hidden_toggle_box").css("display", "none");
      }
    });
  });
});
