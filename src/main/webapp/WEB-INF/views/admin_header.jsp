<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type= text/javascript>
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

</script>

<div class ="head_title_container">
  <div class = "head_title_content">놀다괌 예약 확인 시스템</div>
  <div class = "head_menu_icon_area"><img src="img/menu_icon.png"/></div>
  <div id = "menu_box">
    <div class = "menu_box_container">
      <a href = "./first_divide.jsp" target = "_top"><div class = "each_menu">대분류 설정</div></a>
      <a href = "./second_divide.jsp" target = "_top"><div class = "each_menu">중분류 설정</div></a>
      <a href = "./third_divide.jsp" target = "_top"><div class = "each_menu">소분류 설정</div></a>
      <a href = "./fourth_divide.jsp" target = "_top"><div class = "each_menu">기타분류 설정</div></a>
    </div>
  </div>
</div>
