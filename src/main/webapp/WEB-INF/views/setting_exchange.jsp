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
     	  <a href = "admin" target = "_top"><div class = "each_menu">예약자 정보</div></a>        
          <a href = "setOptions" target = "_top"><div class = "each_menu">옵션 설정</div></a>
          <a href = "setExchangeRate" target = "_top"><div class = "each_menu">환율 설정</div></a>
        </div>
      </div>
    </div>
  </div>
  <div id = "main">
    <div class = "title_container">
      <div class = "text_box">
        <div class = "each_text"><a href ="admin" target ="_top"><p class = "title_font">홈</p></a></div>
        <div class = "each_text"><p class = "title_font">&nbsp;>&nbsp;</p></div>
        <div class = "each_text"><a href = "setExchangeRate" target ="_top"><p class = "title_font">환율 설정</p></a></div>
      </div>
    </div>

    <div class = "list_container">
      <div class = "exchange_control_area">
        <div class = "exchange_control_box">
          <div class = "inner_text">환율 변경 :&nbsp;</div>
          <input type = "text" id = "change_exchange_input" placeholder = "환율 입력 (KRW)"/>
          <button><span id="changePlz">변경하기</span></button>
        </div>
        <div class = "category_list_area">
          <div class = "table_container">
            <div class = "tr_container" style = "font-weight : bold;">
              <div class = "td_container">
                <div class = "td_cell gray">단위 달러</div>
                <div class = "td_cell gray" style = "border : none;">원화 환율</div>
              </div>
            </div>
            <div class = "tr_container">
              <div class = "td_container">
                <div class = "td_cell">$1.00</div>
                <div id = "now_exchange" class = "td_cell" style = "border : none;"></div>
              </div>
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
  <script src="js/admin.js"></script>
  <script src="js/admin_exchange.js"></script>
