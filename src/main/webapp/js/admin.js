// 금액표기 시 3자리 마다 콤마를 찍는 함수.
function numberWithCommas(x) {
  return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

jQuery(function($) {
	//우측 바 메뉴 이벤트
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

  // 분류 선택 버튼
  $(function() {
    $(".each_select_box > button").click(function(){

      var documentWidth = $(document).width();
      var documentHeight = $(document).height();

      $('#escape_box').css("display", "block");
      $('#escape_box').css({'width':documentWidth,'height':documentHeight});

      var m = $('.each_select_box > button').index(this);

      if($(this).siblings(".toggle_box").css("display") === "none"){
        $(this).siblings(".toggle_box").css("display", "block");
      }else{
        $(this).siblings(".toggle_box").css("display", "none");
      }
    });
  });

  // 펼쳐진 토글 창의 목록 중의 컴포넌트 클릭 시 해당 값이 버튼으로 입력 됨
  $(function () {
    $(".toggle_content").click(function () {
      var selected_content = $(this).text();

      $(this).parent(".toggle_box").siblings("button").children("span").text(selected_content);
      $(this).parent(".toggle_box").css("display", "none");
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
    $(".category_control_box > button").click(function() {
      var sel_1 = $("#first_divide_select").children("span").text();
      var sel_2 = $("#second_divide_select").children("span").text();
      var sel_3 = $("#third_divide_select").children("span").text();
      var sel_4 = $("#insert_category_input").val();

      if(sel_1 == "대분류 선택"){
        alert("대분류를 선택하세요.");
        return;
      }
      else if(sel_2 == "중분류 선택"){
        alert("중분류를 선택하세요.");
        return;
      }
      else if(sel_4 == "소분류 선택"){
        alert("소분류를 선택하세요.");
        return;
      }
      else if(sel_4 == ""){
        alert("분류명을 입력하세요.");
        return;
      }
      else if(adult_price == "NaN"){
        alert("성인 1명 비용을 입력하세요.");
        return;
      }

      var add_div = "<div class = \"tr_container\"><div class = \"td_container\">";

      if(!($("#first_divide_select").length)){
        add_div += "<div class = \"td_cell\">"+sel_4+"</div>";
      }else if(!($("#second_divide_select").length)){
        add_div += "<div class = \"td_cell\">"+sel_1+"</div>";
        add_div += "<div class = \"td_cell\">"+sel_4+"</div>";
      }else if(!($("#third_divide_select").length)){
        add_div += "<div class = \"td_cell\">"+sel_1+"</div>";
        add_div += "<div class = \"td_cell\">"+sel_2+"</div>";
        add_div += "<div class = \"td_cell\">"+sel_4+"</div>";
      }else{

        var adult_price = $("#insert_adult_price").val().replace(/[^(0-9)\.]/g, "");
        adult_price = parseFloat(adult_price).toFixed(2);
        var kid_price = $("#insert_kid_price").val().replace(/[^(0-9)\.]/g, "");
        kid_price = parseFloat(kid_price).toFixed(2);;
        var baby_price = $("#insert_baby_price").val().replace(/[^(0-9)\.]/g, "");
        baby_price = parseFloat(baby_price).toFixed(2);

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

        add_div += "<div class = \"td_cell\">"+sel_1+"</div>";
        add_div += "<div class = \"td_cell\">"+sel_2+"</div>";
        add_div += "<div class = \"td_cell\">"+sel_3+"</div>";
        add_div += "<div class = \"td_cell\">"+sel_4+"</div>";
        add_div += "<div class = \"td_cell_small\">"+adult_price+"</div>";
        add_div += "<div class = \"td_cell_small\">"+kid_price+"</div>";
        add_div += "<div class = \"td_cell_small\">"+baby_price+"</div>";
      }

      add_div += "</div><div class = \"del_btn_container\"><div class = \"del_text\">삭제</div></div></div>";

      $(".table_container").append(add_div);
    });
  });


  // 삭제 버튼 클릭 시 해당 라인 삭제
  $(document).on("click",".del_btn_container",function(){
    $(this).parent(".tr_container").remove();
  });

});
