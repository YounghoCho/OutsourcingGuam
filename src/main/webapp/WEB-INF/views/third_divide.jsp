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
        <div class = "each_text"><a href ="./third_divide.jsp" target ="_top"><p class = "title_font">소분류 설정</p></a></div>
      </div>
    </div>
    <div class = "list_container">
      <div class = "category_select_area">
        <div class = "each_select_box">
          <button id = "first_divide_select"><span>대분류 선택</span></button>
          <div class="toggle_box">
            <div class="toggle_content">대분류 옵션1</div>
            <div class="toggle_content">대분류 옵션2</div>
            <div class="toggle_content">대분류 옵션3</div>
            <div class="toggle_content">대분류 옵션4</div>
            <div class="toggle_content">대분류 옵션5</div>
            <div class="toggle_content">대분류 옵션6</div>
            <div class="toggle_content">대분류 옵션7</div>
            <div class="toggle_content">대분류 옵션8</div>
            <div class="toggle_content">대분류 옵션9</div>
          </div>
          <div class = "middle_text">&nbsp;>&nbsp;</div>
        </div>
        <div class = "each_select_box">
          <button id = "second_divide_select"><span>중분류 선택</span></button>
          <div class="toggle_box">
            <div class="toggle_content">중분류 옵션1</div>
            <div class="toggle_content">중분류 옵션2</div>
            <div class="toggle_content">중분류 옵션3</div>
            <div class="toggle_content">중분류 옵션4</div>
            <div class="toggle_content">중분류 옵션5</div>
            <div class="toggle_content">중분류 옵션6</div>
            <div class="toggle_content">중분류 옵션7</div>
            <div class="toggle_content">중분류 옵션8</div>
            <div class="toggle_content">중분류 옵션9</div>
          </div>
        </div>
      </div>
      <div class = "title_area">
        <div class ="title_text">분류 관리</div>
      </div>
      <div class = "category_control_area">
        <div class = "category_control_area">
          <div class = "inner_text">태그 추가 :&nbsp;</div>
          <input type = "text" id = "insert_category_input" placeholder = "분류명을 입력하세요"/>
          <button><span>추가하기</span></button>
        </div>
        <div class = "category_list_area">
          <div class = "table_container">
            <div class = "tr_container" style = "font-weight : bold;">
              <div class = "td_container">
                <div class = "td_cell gray">대분류</div>
                <div class = "td_cell gray">중분류</div>
                <div class = "td_cell gray">소분류</div>
              </div>
              <div class = "del_btn_container gray"><div class = "del_text" style = "color : #777777; text-decoration: none;">삭제</div></div>
            </div>
            <div class = "tr_container">
              <div class = "td_container">
                <div class = "td_cell">투어</div>
                <div class = "td_cell">대대롱</div>
                <div class = "td_cell">Real Daerong</div>
              </div>
              <div class = "del_btn_container"><div class = "del_text">삭제</div></div>
            </div>
            <div class = "tr_container">
              <div class = "td_container">
                <div class = "td_cell">투어</div>
                <div class = "td_cell">대대롱</div>
                <div class = "td_cell">Real Daerong</div>
              </div>
              <div class = "del_btn_container"><div class = "del_text">삭제</div></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div id = "escape_box"></div>
  <div id = "footer"></div>
</div>

<!-- Add your site or application content here -->

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="js/admin.js"></script>

</body>
</html>
