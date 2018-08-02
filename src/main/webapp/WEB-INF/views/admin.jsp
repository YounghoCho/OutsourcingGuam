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
		  <a href = "keepReservation" target = "_top"><div class = "each_menu">예약 관리</div></a>
          <a href = "setOptions" target = "_top"><div class = "each_menu">투어 등록</div></a>
          <a href = "setExchangeRate" target = "_top"><div class = "each_menu">환율 설정</div></a>
<!--           <a href = "keep_reservation.html" target = "_top"><div class = "each_menu">예약 관리</div></a>
          <a href = "setting_option.html" target = "_top"><div class = "each_menu">투어 등록</div></a>
          <a href = "setting_exchange.html" target = "_top"><div class = "each_menu">환율 설정</div></a> -->
        </div>
      </div>
    </div>
  </div>
  <div id = "main">
    <div class = "title_container">
      <div class = "text_box">
        <!-- <div class = "each_text"><a href ="./admin.html" target ="_top"><p class = "title_font">홈</p></a></div> -->
        <div class = "each_text"><a href ="admin" target ="_top"><p class = "title_font">홈</p></a></div>
      </div>
    </div>
    <div class = "list_container">
      <div class = "table_label">예약자 정보</div>
      <div class = "table_container">
        <div id = "containerHead" class = "tr_container" style = "border : none; font-weight : bold;">
          <div class = "td_container">
            <div class = "td_1 gray">예약번호</div>
            <div class = "td_2 gray">신청자</div>
            <div class = "td_3 gray">휴대폰</div>
            <div class = "td_4 gray">이메일</div>
            <div class = "td_5 gray">투어날짜</div>
            <div class = "td_6 gray">신청날짜</div>

            <!-- 상세 보기 -> 추가내용 : 예약번호, 예약자 한/영, 휴대폰, 이메일, 대/중분류, 소분류, 투어일정, 총액, 날짜 -->
          </div>
          <div class = "del_btn_container gray"><div class = "del_text" style = "color : #777777; text-decoration: none;">삭제</div></div>
        </div>
        <div class = "tr_container">
          <div class = "td_container">
            <div class = "td_1">1</div>
            <div class = "td_2">유대성</div>
            <div class = "td_3">010-9186-2978</div>
            <div class = "td_4">yu5501@nate.com</div>
            <div class = "td_5"><span>2018-07-06</span><span>~</span><span>2018-07-07</span></div>
            <div class = "td_6"><span>2018-06-29</span></div>
          </div>
          <div class = "del_btn_container"><div class = "del_text">삭제</div></div>
          <div class = "hidden_toggle_box">
            <div class = "title"><div>예약 정보</div></div>
            <div class = "detail">
              <div class = "lines"><div>예약번호 :&nbsp;</div><div>1</div></div>
              <div class = "lines"><div>예약자 : (한)</div><div>유대성</div><div>&nbsp;/ (영)</div><div>Daeseong Yoo</div></div>
              <div class = "lines"><div>휴대폰 번호 :&nbsp;</div><div>010-9186-2978</div></div>
              <div class = "lines"><div>이메일 주소 :&nbsp;</div><div>yu5501@nate.com</div></div>
            </div>
            <div class = "title"><div>선택 정보</div></div>
            <div class = "detail">
              <div class = "lines"><div>======== 선택&nbsp</div><div>2</div><div>&nbsp========</div></div>
              <div class = "lines"><div>대/중분류 :&nbsp;</div><div>투어</div><div>&nbsp;/&nbsp;</div><div>중분류 옵션 1</div></div>
              <div class = "lines"><div>소분류 :&nbsp;</div><div>오션벤처호 돌핀크루저</div></div>
              <div class = "lines"><div>투어날짜 :&nbsp;</div><div>2018-07-06</div><div>~</div><div>2018-07-07</div></div>
              <div class = "lines"><div>투어시간 :&nbsp;</div><div>오전</div></div>
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
              <div class = "lines"><div>======== 선택&nbsp</div><div>1</div><div>&nbsp========</div></div>
              <div class = "lines"><div>대/중분류 :&nbsp;</div><div>투어</div><div>&nbsp;/&nbsp;</div><div>중분류 옵션 1</div></div>
              <div class = "lines"><div>소분류 :&nbsp;</div><div>오션벤처호 돌핀크루저</div></div>
              <div class = "lines"><div>투어날짜 :&nbsp;</div><div>2018-07-06</div><div>~</div><div>2018-07-07</div></div>
              <div class = "lines"><div>투어시간 :&nbsp;</div><div>오전</div></div>
              <div class = "lines">
                <div>인원 :&nbsp;</div>
                <div>성인&nbsp;</div><div>2</div><div>명,&nbsp;</div>
                <div>소아&nbsp;</div><div>1</div><div>명,&nbsp;</div>
                <div>유아&nbsp;</div><div>0</div><div>명</div>
              </div>
              <div class = "lines"><div>예약금 :&nbsp;</div><div>$90(101,700원)</div></div>
              <div class = "lines"><div>현지지불액 :&nbsp;</div><div>$990</div></div>
            </div>
            <div class = "title"><div>결제 총액</div></div>
            <div class = "detail">
              <div class = "lines"><div>총 액 :&nbsp;</div><div>&100.00</div></div>
            </div>
          </div>
        </div>
        <div class = "tr_container">
          <div class = "td_container">
            <div class = "td_1">2</div>
            <div class = "td_2">조영호</div>
            <div class = "td_3">010-0000-0123</div>
            <div class = "td_4">awesome@nate.com</div>
            <div class = "td_5"><span>2018-07-06</span><span>~</span><span>2018-07-07</span></div>
            <div class = "td_6"><span>2018-06-29</span></div>
          </div>
          <div class = "del_btn_container"><div class = "del_text">삭제</div></div>
          <div class = "hidden_toggle_box">
            <div class = "title"><div>예약 정보</div></div>
            <div class = "detail">
              <div class = "lines"><div>예약번호 :&nbsp;</div><div>2</div></div>
              <div class = "lines"><div>예약자 : (한)</div><div>조영호</div><div>&nbsp;/ (영)</div><div>Cho</div></div>
              <div class = "lines"><div>휴대폰 번호 :&nbsp;</div><div>010-0000-0123</div></div>
              <div class = "lines"><div>이메일 주소 :&nbsp;</div><div>awesome@nate.com</div></div>
            </div>
            <div class = "title"><div>선택 정보</div></div>
            <div class = "detail">
              <div class = "lines"><div>======== 선택&nbsp</div><div>2</div><div>&nbsp========</div></div>
              <div class = "lines"><div>대/중분류 :&nbsp;</div><div>투어</div><div>&nbsp;/&nbsp;</div><div>중분류 옵션 1</div></div>
              <div class = "lines"><div>소분류 :&nbsp;</div><div>오션벤처호 돌핀크루저</div></div>
              <div class = "lines"><div>투어날짜 :&nbsp;</div><div>2018-07-06</div><div>~</div><div>2018-07-07</div></div>
              <div class = "lines"><div>투어시간 :&nbsp;</div><div>오전</div></div>
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
              <div class = "lines"><div>======== 선택&nbsp</div><div>1</div><div>&nbsp========</div></div>
              <div class = "lines"><div>대/중분류 :&nbsp;</div><div>투어</div><div>&nbsp;/&nbsp;</div><div>중분류 옵션 1</div></div>
              <div class = "lines"><div>소분류 :&nbsp;</div><div>오션벤처호 돌핀크루저</div></div>
              <div class = "lines"><div>투어날짜 :&nbsp;</div><div>2018-07-06</div><div>~</div><div>2018-07-07</div></div>
              <div class = "lines"><div>투어시간 :&nbsp;</div><div>오전</div></div>
              <div class = "lines">
                <div>인원 :&nbsp;</div>
                <div>성인&nbsp;</div><div>2</div><div>명,&nbsp;</div>
                <div>소아&nbsp;</div><div>1</div><div>명,&nbsp;</div>
                <div>유아&nbsp;</div><div>0</div><div>명</div>
              </div>
              <div class = "lines"><div>예약금 :&nbsp;</div><div>$90(101,700원)</div></div>
              <div class = "lines"><div>현지지불액 :&nbsp;</div><div>$990</div></div>
            </div>
            <div class = "title"><div>결제 총액</div></div>
            <div class = "detail">
              <div class = "lines"><div>총 액 :&nbsp;</div><div>&100.00</div></div>
            </div>
          </div>
        </div>
      </div> <!-- table container -->
    </div> <!-- list container -->
  </div> <!-- main -->
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
