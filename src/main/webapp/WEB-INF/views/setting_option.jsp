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
  <script src="js/admin_function.js"></script>
</head>

<body style = "min-width: 1280px;">
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
        <div class = "each_text"><a href ="setOptions" target ="_top"><p class = "title_font">옵션 설정</p></a></div>
      </div>
    </div>
    <div class = "list_container">
      <div class = "category_select_area">
        <div class = "each_select_box">
          <input type = "text" id = "big_divide_select" placeholder = "대분류명을 입력하세요"/>
          <div class = "middle_text">&nbsp;>&nbsp;</div>
        </div>
        <div class = "each_select_box">
          <input type = "text" id = "middle_divide_select" placeholder = "중분류명을 입력하세요"/>
          <div class = "middle_text">&nbsp;>&nbsp;</div>
        </div>
        <div class = "each_select_box">
          <input type = "text" id = "small_divide_select" placeholder = "소분류명을 입력하세요"/>
        </div>
      </div>
      <div class = "rectangle_select_box">
        <input type = "text" id = "insert_adult_price" class = "small_size_input" placeholder = "성인 1명 비용($)"/>
        &nbsp;>&nbsp;
        <input type = "text" id = "insert_kid_price" class = "small_size_input" placeholder = "소아 1명 비용($)"/>
        &nbsp;>&nbsp;
        <input type = "text" id = "insert_baby_price" class = "small_size_input" placeholder = "유아 1명 비용($)"/>
        <button id="tictoc"><span id="addOptions">추가하기</span></button>
      </div>

      <div class = "exchange_control_area">
        <div class = "category_list_area">

          <div class = "table_container" id="checkReserve">
          
            <div class = "tr_container" style = "font-weight : bold;">
              <div class = "td_container">
                <div class = "td_cell gray">대분류</div>
                <div class = "td_cell gray">중분류</div>
                <div class = "td_cell gray">소분류</div>
                <div class = "td_cell_small gray">성인 비용($)</div>
                <div class = "td_cell_small gray">소아 비용($)</div>
                <div class = "td_cell_small gray">유아 비용($)</div>
              </div>
              <div class = "del_btn_container gray"><div class = "del_text" style = "color : #777777; text-decoration: none;">삭제</div></div>
            </div>
            
            <div class = "tr_container">
              <div class = "td_container">
                <div class = "td_cell">대분류 예시 0</div>
                <div class = "td_cell">중분류 예시 0</div>
                <div class = "td_cell">소분류 예시 0</div>
                <div class = "td_cell_small">$101.01</div>
                <div class = "td_cell_small">$102.02</div>
                <div class = "td_cell_small">$103.03</div>
              </div>
              <div class = "del_btn_container"><div class = "del_text">삭제</div></div>
            </div>
            <div class = "tr_container">
              <div class = "td_container">
                <div class = "td_cell">대분류 예시 1</div>
                <div class = "td_cell">중분류 예시 1</div>
                <div class = "td_cell">소분류 예시 1</div>
                <div class = "td_cell_small">$101.01</div>
                <div class = "td_cell_small">$102.02</div>
                <div class = "td_cell_small">$103.03</div>
              </div>
              <div class = "del_btn_container"><div class = "del_text">삭제</div></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div id = "escape_box"></div>
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
