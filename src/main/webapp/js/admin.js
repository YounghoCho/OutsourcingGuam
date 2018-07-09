jQuery(function($) {
  // 예약 종류, 투어 선택 클릭 시 펼쳐지는 토글 이벤트
  $(function () {
    $(".td_container").click(function(){
      if ($(this).siblings(".hidden_toggle_box").css("display") === "none"){
        $(this).siblings(".hidden_toggle_box").css("display", "block");
      }
      else {
        $(this).siblings(".hidden_toggle_box").css("display", "none");
      }
    });
  });

  // 삭제 버튼 클릭 시 해당 라인 삭제
  $(function () {
    $(".del_btn_container").click(function(){
      $(this).parent(".tr_container").remove();
    });
  });

});
