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

  // 환율 변경를 위한 매소드
  $(function () {
    $(".exchange_control_box > button").click(function () {
      var new_exchange = $("#change_exchange_input").val().replace(/[^(0-9)]\./g, "");
      new_exchange = parseFloat(new_exchange).toFixed(0);
      if(new_exchange == ""){
        alert("환율을 입력하세요.");
        return;
      }
      new_exchange = numberWithCommas(new_exchange) + "원";
      $("#now_exchange").text(new_exchange);
    });
  });

  // 분류 추가를 위한 매소드
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


      var add_div = "<div class = \"tr_container\"><div class = \"td_container\">";

      add_div += "<div class = \"td_cell\">"+sel_1+"</div>";
      add_div += "<div class = \"td_cell\">"+sel_2+"</div>";
      add_div += "<div class = \"td_cell\">"+sel_3+"</div>";
      add_div += "<div class = \"td_cell_small\">"+adult_price+"</div>";
      add_div += "<div class = \"td_cell_small\">"+kid_price+"</div>";
      add_div += "<div class = \"td_cell_small\">"+baby_price+"</div>";

      add_div += "</div><div class = \"del_btn_container\"><div class = \"del_text\">삭제</div></div></div>";

      $(".table_container").append(add_div);

      $("#big_divide_select").val("");
      $("#middle_divide_select").val("");
      $("#small_divide_select").val("");
      $("#insert_adult_price").val("");
      $("#insert_kid_price").val("");
      $("#insert_baby_price").val("");
    });
  });


  // 삭제 버튼 클릭 시 해당 라인 삭제
  $(document).on("click",".del_btn_container",function(){
    $(this).parent(".tr_container").remove();
  });

});
