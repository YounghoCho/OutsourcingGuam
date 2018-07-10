jQuery(function($) {
  $(document).ready(function(){
    $("#header").load("./admin_header.html");
    $("#footer").load("./admin_footer.html");
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

  // 삭제 버튼 클릭 시 해당 라인 삭제
  $(function () {
    $(".del_btn_container").click(function(){
      $(this).parent(".tr_container").remove();
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

  // 태그 추가를 위한 매소드
  $(function (){
    $(".category_control_area > button").click(function() {
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

      var add_div = "";
      if(!($("#second_divide_select").length)){
        add_div += "<div class = \"tr_container\">";
        add_div += "<div class = \"td_container\">";
        add_div += "<div class = \"td_cell\">"+sel_4+"</div>";
        add_div += "</div>";
        add_div += "<div class = \"del_btn_container\">";
        add_div += "<div class = \"del_text\">삭제</div>";
        add_div += "</div>";
        add_div += "</div>";
      }else if(!($("#second_divide_select").length)){
        add_div += "<div class = \"tr_container\">";
        add_div += "<div class = \"td_container\">";
        add_div += "<div class = \"td_cell\">"+sel_1+"</div>";
        add_div += "<div class = \"td_cell\">"+sel_4+"</div>";
        add_div += "</div>";
        add_div += "<div class = \"del_btn_container\">";
        add_div += "<div class = \"del_text\">삭제</div>";
        add_div += "</div>";
        add_div += "</div>";
      }else if(!($("#third_divide_select").length)){
        add_div += "<div class = \"tr_container\">";
        add_div += "<div class = \"td_container\">";
        add_div += "<div class = \"td_cell\">"+sel_1+"</div>";
        add_div += "<div class = \"td_cell\">"+sel_2+"</div>";
        add_div += "<div class = \"td_cell\">"+sel_4+"</div>";
        add_div += "</div>";
        add_div += "<div class = \"del_btn_container\">";
        add_div += "<div class = \"del_text\">삭제</div>";
        add_div += "</div>";
        add_div += "</div>";
      }else{
        add_div += "<div class = \"tr_container\">";
        add_div += "<div class = \"td_container\">";
        add_div += "<div class = \"td_cell\">"+sel_1+"</div>";
        add_div += "<div class = \"td_cell\">"+sel_2+"</div>";
        add_div += "<div class = \"td_cell\">"+sel_3+"</div>";
        add_div += "<div class = \"td_cell\">"+sel_4+"</div>";
        add_div += "</div>";
        add_div += "<div class = \"del_btn_container\">";
        add_div += "<div class = \"del_text\">삭제</div>";
        add_div += "</div>";
        add_div += "</div>";
      }

      $(".table_container").append(add_div);
    });
  })
});
