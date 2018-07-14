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
</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<div id = "background_container">
  <div id = "header"></div>
  <div id = "main">
    <div class = "title_container">
      <div class = "text_box">
        <div class = "each_text"><a href ="./admin.jsp" target ="_top"><p class = "title_font">홈</p></a></div>
        <div class = "each_text"><p class = "title_font">&nbsp;>&nbsp;</p></div>
        <div class = "each_text"><a href ="./setting_exchange.jsp" target ="_top"><p class = "title_font">환율 설정</p></a></div>
      </div>
    </div>
    <div class = "list_container">
      <div class = "title_area">
        <div class ="title_text">환율 관리</div>
      </div>
      <div class = "category_control_area">
        <div class = "exchange_control_box">
          <div class = "inner_text">환율 변경 :&nbsp;</div>
          <input type = "text" id = "change_exchange_input" placeholder = "달러-원 환율 입력"/>
          <button><span>변경하기</span></button>
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
                <div id = "now_exchange" class = "td_cell" style = "border : none;">1,291원</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div id = "footer"></div>
</div>

<!-- Add your site or application content here -->

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="js/admin.js"></script>

</body>
</html>
