<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="ko">

<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>놀다괌</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link rel="manifest" href="site.webmanifest">
  <link rel="apple-touch-icon" href="icon.png">
  <!-- Place favicon.ico in the root directory -->

  <link rel="stylesheet" href="css/admin.css">

  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="js/admin.js"></script>

</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<div id = "background_container">
  <div id = "header">
    <div class ="head_title_container">
      <div class = "head_title_content">놀다괌 예약 확인 시스템</div>
      <div class = "head_menu_icon_area"><img src="img/menu_icon.png"/></div>
      <div id = "menu_box">
        <div class = "menu_box_container">
          <a href = "./setting_option.jsp" target = "_top"><div class = "each_menu">옵션 설정</div></a>
          <a href = "./setting_exchange.jsp" target = "_top"><div class = "each_menu">환율 설정</div></a>
        </div>
      </div>
    </div>
  </div>
  <div id = "main">
    <div class = "title_container">
      <div class = "text_box">
        <div class = "each_text"><a href ="./admin.html" target ="_top"><p class = "title_font">홈</p></a></div>
      </div>
    </div>
    <div class = "list_container">
      <div class = "table_container">
        <div class = "tr_container" style = "border : none; font-weight : bold;">
          <div class = "td_container">
            <div class = "td_1 gray">번호</div>
            <div class = "td_2 gray">신청자(한글)</div>
            <div class = "td_3 gray">신청자(영문)</div>
            <div class = "td_4 gray">휴대폰 번호</div>
            <div class = "td_5 gray">이메일 주소</div>
            <div class = "td_6 gray">총액</div>
          </div>
          <div class = "del_btn_container gray"><div class = "del_text" style = "color : #777777; text-decoration: none;">삭제</div></div>
        </div>
        <div class = "tr_container">
          <div class = "td_container">
            <div class = "td_1">1</div>
            <div class = "td_2">대대롱</div>
            <div class = "td_3">Real Daerong</div>
            <div class = "td_4">010-9186-2978</div>
            <div class = "td_5">yu5501@nate.com</div>
            <div class = "td_6">$9999.99</div>
          </div>
          <div class = "del_btn_container"><div class = "del_text">삭제</div></div>
          <div class = "hidden_toggle_box">
            <div class = "detail">
              <div class = "lines"><div>======== 선택&nbsp</div><div>1</div><div>&nbsp========</div></div>
              <div class = "lines"><div>카테고리 :&nbsp;</div><div>투어</div></div>
              <div class = "lines"><div>상품명 :&nbsp;</div><div>오션벤처호 돌핀크루저</div></div>
              <div class = "lines"><div>투어날짜 및 시간 :&nbsp;</div><div>2018-07-06</div></div>
              <div class = "lines">
                <div>인원 :&nbsp;</div>
                <div>성인&nbsp;</div><div>2</div><div>명,&nbsp;</div>
                <div>소아&nbsp;</div><div>1</div><div>명,&nbsp;</div>
                <div>유아&nbsp;</div><div>0</div><div>명</div>
              </div>
              <div class = "lines"><div>예약금 :&nbsp;</div><div>$90(101,700원)</div></div>
              <div class = "lines"><div>현지지불액 :&nbsp;</div><div>$990</div></div>
            </div>
            <div class = "detail">
              <div class = "lines"><div>======== 선택&nbsp</div><div>2</div><div>&nbsp========</div></div>
              <div class = "lines"><div>카테고리 :&nbsp;</div><div>투어</div></div>
              <div class = "lines"><div>상품명 :&nbsp;</div><div>오션벤처호 돌핀크루저</div></div>
              <div class = "lines"><div>투어날짜 및 시간 :&nbsp;</div><div>2018-07-06</div></div>
              <div class = "lines">
                <div>인원 :&nbsp;</div>
                <div>성인&nbsp;</div><div>2</div><div>명,&nbsp;</div>
                <div>소아&nbsp;</div><div>1</div><div>명,&nbsp;</div>
                <div>유아&nbsp;</div><div>0</div><div>명</div>
              </div>
              <div class = "lines"><div>예약금 :&nbsp;</div><div>$90(101,700원)</div></div>
              <div class = "lines"><div>현지지불액 :&nbsp;</div><div>$990</div></div>
            </div>
          </div>
        </div>
        <div class = "tr_container">
          <div class = "td_container">
            <div class = "td_1">2</div>
            <div class = "td_2">대대롱</div>
            <div class = "td_3">Real Daerong</div>
            <div class = "td_4">010-9186-2978</div>
            <div class = "td_5">yu5501@nate.com</div>
            <div class = "td_6">$9999.99</div>
          </div>
          <div class = "del_btn_container"><div class = "del_text">삭제</div></div>
          <div class = "hidden_toggle_box">
            <div class = "detail">
              <div class = "lines"><div>======== 선택&nbsp</div><div>1</div><div>&nbsp========</div></div>
              <div class = "lines"><div>카테고리 :&nbsp;</div><div>투어</div></div>
              <div class = "lines"><div>상품명 :&nbsp;</div><div>오션벤처호 돌핀크루저</div></div>
              <div class = "lines"><div>투어날짜 및 시간 :&nbsp;</div><div>2018-07-06</div></div>
              <div class = "lines">
                <div>인원 :&nbsp;</div>
                <div>성인&nbsp;</div><div>2</div><div>명,&nbsp;</div>
                <div>소아&nbsp;</div><div>1</div><div>명,&nbsp;</div>
                <div>유아&nbsp;</div><div>0</div><div>명</div>
              </div>
              <div class = "lines"><div>예약금 :&nbsp;</div><div>$90(101,700원)</div></div>
              <div class = "lines"><div>현지지불액 :&nbsp;</div><div>$990</div></div>
            </div>
            <div class = "detail">
              <div class = "lines"><div>======== 선택&nbsp</div><div>2</div><div>&nbsp========</div></div>
              <div class = "lines"><div>카테고리 :&nbsp;</div><div>투어</div></div>
              <div class = "lines"><div>상품명 :&nbsp;</div><div>오션벤처호 돌핀크루저</div></div>
              <div class = "lines"><div>투어날짜 및 시간 :&nbsp;</div><div>2018-07-06</div></div>
              <div class = "lines">
                <div>인원 :&nbsp;</div>
                <div>성인&nbsp;</div><div>2</div><div>명,&nbsp;</div>
                <div>소아&nbsp;</div><div>1</div><div>명,&nbsp;</div>
                <div>유아&nbsp;</div><div>0</div><div>명</div>
              </div>
              <div class = "lines"><div>예약금 :&nbsp;</div><div>$90(101,700원)</div></div>
              <div class = "lines"><div>현지지불액 :&nbsp;</div><div>$990</div></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div id = "footer">
    <div class = "copyright_area">
      <div class = "text_box">
        <p>Copyright © 2017 AUTOPUS. All rights reserved.</p>
      </div>
    </div>
  </div>
</div>
</body>
</html>
