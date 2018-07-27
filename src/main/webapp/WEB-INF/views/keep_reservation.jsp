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

  <!--달력소스 가져오기-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <!--달력소스 가져오기-->

  <link rel="stylesheet" href="css/admin.css">

  <script src="js/admin.js"></script>
  <script src="js/keep_reservation.js"></script>

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
        <div class = "each_text"><p class = "title_font">&nbsp;>&nbsp;</p></div>
        <div class = "each_text"><a href = "keepReservation" target ="_top"><p class = "title_font">예약 관리</p></a></div>
      </div>
    </div>
    <div id = "major_container">
      <div id = "major_box_container">
        <div class = "big_toggle_component">
          <div class = "left_area">
            <div class = "up_area">
              <span>상품명</span>
            </div>
            <div class = "down_area">
              <button class="toggle_button"><span>전체</span></button>

            </div>
          </div>
          <div class = "right_area">
            <p>▼</p>
          </div>
          <div class="toggle_box">
            <div class="toggle_content">상품명 옵션1</div>
            <div class="toggle_content">상품명 옵션2</div>
            <div class="toggle_content">상품명 옵션3</div>
            <div class="toggle_content">상품명 옵션4</div>
            <div class="toggle_content">상품명 옵션5</div>
            <div class="toggle_content">상품명 옵션6</div>
            <div class="toggle_content">상품명 옵션7</div>
            <div class="toggle_content">상품명 옵션8</div>
            <div class="toggle_content">상품명 옵션9</div>
          </div>
        </div>
        <div class = "big_toggle_component">
          <div class = "left_area">
            <div class = "up_area">
              <span>날짜기준</span>
            </div>
            <div class = "down_area">
              <button class="toggle_button"><span>구매일</span></button>

            </div>
          </div>
          <div class = "right_area">
            <p>▼</p>
          </div>
          <div class="toggle_box" >
            <div class="toggle_content">날짜기준 옵션1</div>
            <div class="toggle_content">날짜기준 옵션2</div>
            <div class="toggle_content">날짜기준 옵션3</div>
            <div class="toggle_content">날짜기준 옵션4</div>
            <div class="toggle_content">날짜기준 옵션5</div>
            <div class="toggle_content">날짜기준 옵션6</div>
            <div class="toggle_content">날짜기준 옵션7</div>
            <div class="toggle_content">날짜기준 옵션8</div>
            <div class="toggle_content">날짜기준 옵션9</div>
          </div>
        </div>
        <div class = "big_input_component"  style = "width : 12%; width : -webkit-calc(16.66% - 8px - 4px); /* for Chrome, Safari */ width :    -moz-calc(16.66% - 8px - 4px); /* for Firefox */ width :         calc(16.66% - 8px - 4px); /* for IE */">
          <div class = "up_area">
            <span>시작일</span>
          </div>
          <div class = "down_area">
            <input type="text" id="datepicker1" class = "picker_input" value="1992-06-29"/>
          </div>
        </div>
        <div class = "big_input_component"  style = "width : 12%; width : -webkit-calc(16.66% - 8px - 4px); /* for Chrome, Safari */ width :    -moz-calc(16.66% - 8px - 4px); /* for Firefox */ width :         calc(16.66% - 8px - 4px); /* for IE */">
          <div class = "up_area">
            <span>종료일</span>
          </div>
          <div class = "down_area">
            <input type="text" id="datepicker2" class = "picker_input" value="1992-06-29"/>
          </div>
        </div>
        <div class = "big_toggle_component">
          <div class = "left_area">
            <div class = "up_area">
              <span>예약 상태</span>
            </div>
            <div class = "down_area">
              <button class="toggle_button"><span>전체</span></button>

            </div>
          </div>
          <div class = "right_area">
            <p>▼</p>
          </div>
          <div class="toggle_box" >
            <div class="toggle_content">전체</div>
            <div class="toggle_content">예약확정</div>
            <div class="toggle_content">확정대기</div>
            <div class="toggle_content">입금대기</div>
            <div class="toggle_content">취소요청</div>
            <div class="toggle_content">예약취소</div>
          </div>
        </div>
        <div class = "big_icon_component">
          <div class = "left_area">
            <div class = "up_area">
              <span>미확인</span>
            </div>
            <div class = "down_area">
              <span>&nbsp;</span>
            </div>
          </div>
          <div class = "right_area">
            <button class = "round_toggle_icon">
              <div class = "round_toggle_inner"><p>OFF</p></div>
            </button>
          </div>
        </div>
        <div class = "big_input_component">
          <div class = "up_area">
            <span>구매자명</span>
          </div>
          <div class = "down_area">
            <input type = "text" placeholder = "이름을 입력하세요"/>
          </div>
        </div>
        <div class = "big_input_component">
          <div class = "up_area">
            <span>구매자연락처</span>
          </div>
          <div class = "down_area">
            <input type = "text" placeholder = "전화번호를 입력하세요"/>
          </div>
        </div>
        <div class = "big_input_component"  style = "width : 12%; width : -webkit-calc(16.66% - 8px - 4px); /* for Chrome, Safari */ width :    -moz-calc(16.66% - 8px - 4px); /* for Firefox */ width :         calc(16.66% - 8px - 4px); /* for IE */">
          <div class = "up_area">
            <span>상품명</span>
          </div>
          <div class = "down_area">
            <input type = "text" placeholder = "품명을 입력하세요"/>
          </div>
        </div>

      </div> <!-- major_box_container -->
      <div class = center_text_box><p>예약리스트</p></div>
      <div id = "major_list_container">

        <div id="containerHead" class = "table_index_tr">
          <div class = "list_container_td row_width">구매일</div>
          <div class = "list_container_td row_width">상품명</div>
          <div class = "list_container_td row_width">구매자명</div>
          <div class = "list_container_td row_width">연락처</div>
          <div class = "list_container_td row_width">이메일주소</div>
          <div class = "list_container_td row_width">픽업호텔</div>
          <div class = "list_container_td row_width">투어일</div>
          <div class = "list_container_td row_width">픽업시간</div>
          <div class = "list_container_td row_width">예약상태</div>
          <div class = "list_container_td row_width">메일 예약확인서</div>
          <div class = "list_container_td row_width">알림톡 예약확인서</div>
          <div class = "list_container_td row_width">삭제</div>
        </div>
        <div id="checkReserve" class = "list_container_table">
          <!-- to be appended area -->

          <!-- 목업데이터 -->
          <div class = "list_container_tr">
            <div class = "list_container_td row_width"><p>18.07.05</p></div>
            <div class = "list_container_td row_width"><p>멕벨라 돌핀크루즈</p></div>
            <div class = "list_container_td row_width"><p>구소영</p></div>
            <div class = "list_container_td row_width"><p>010-8081-2501</p></div>
            <div class = "list_container_td row_width"><p>ku7061@gmail.com</p></div>
            <div class = "list_container_td row_width"><p>두짓타니</p></div>
            <div class = "list_container_td row_width"><p>18.07.06</p></div>
            <div class = "list_container_td row_width"><p>10:20</p></div>
            <div class = "list_container_td row_width">
              <button class = "reservation_status"><span>예약확정</span></button>
              <div class = "td_toggle_box">
                <div class="td_toggle_content">전체</div>
                <div class="td_toggle_content">예약확정</div>
                <div class="td_toggle_content">확정대기</div>
                <div class="td_toggle_content">입금대기</div>
                <div class="td_toggle_content">취소요청</div>
                <div class="td_toggle_content">예약취소</div>
              </div>
            </div>
            <div class = "list_container_td row_width">
              <button class = "round_button_gray"><span>발송완료</span></button>
            </div>
            <div class = "list_container_td row_width">
              <button class = "round_button_orange"><span>발송</span></button>
            </div>
            <div class = "list_container_td row_width">
              <button class = "delete_button_gray"><span>확인</span></button>
            </div>
          </div>
          <div class = "list_container_tr">
            <div class = "list_container_td row_width"><p>18.07.05</p></div>
            <div class = "list_container_td row_width"><p>멕벨라 돌핀크루즈</p></div>
            <div class = "list_container_td row_width"><p>구소영</p></div>
            <div class = "list_container_td row_width"><p>010-8081-2501</p></div>
            <div class = "list_container_td row_width"><p>ku7061@gmail.com</p></div>
            <div class = "list_container_td row_width"><p>두짓타니</p></div>
            <div class = "list_container_td row_width"><p>18.07.06</p></div>
            <div class = "list_container_td row_width"><p>10:20</p></div>
            <div class = "list_container_td row_width">
              <button class = "reservation_status"><span>예약확정</span></button>
              <div class = "td_toggle_box">
                <div class="td_toggle_content">전체</div>
                <div class="td_toggle_content">예약확정</div>
                <div class="td_toggle_content">확정대기</div>
                <div class="td_toggle_content">입금대기</div>
                <div class="td_toggle_content">취소요청</div>
                <div class="td_toggle_content">예약취소</div>
              </div>
            </div>
            <div class = "list_container_td row_width">
              <button class = "round_button_gray"><span>발송완료</span></button>
            </div>
            <div class = "list_container_td row_width">
              <button class = "round_button_gray"><span>발송완료</span></button>
            </div>
            <div class = "list_container_td row_width">
              <button class = "delete_button_gray"><span>확인</span></button>
            </div>
          </div>
          <div class = "list_container_tr">
            <div class = "list_container_td row_width"><p>18.07.05</p></div>
            <div class = "list_container_td row_width"><p>멕벨라 돌핀크루즈</p></div>
            <div class = "list_container_td row_width"><p>구소영</p></div>
            <div class = "list_container_td row_width"><p>010-8081-2501</p></div>
            <div class = "list_container_td row_width"><p>ku7061@gmail.com</p></div>
            <div class = "list_container_td row_width"><p>두짓타니</p></div>
            <div class = "list_container_td row_width"><p>18.07.06</p></div>
            <div class = "list_container_td row_width"><p>10:20</p></div>
            <div class = "list_container_td row_width">
              <button class = "reservation_status"><span>예약확정</span></button>
              <div class = "td_toggle_box">
                <div class="td_toggle_content">전체</div>
                <div class="td_toggle_content">예약확정</div>
                <div class="td_toggle_content">확정대기</div>
                <div class="td_toggle_content">입금대기</div>
                <div class="td_toggle_content">취소요청</div>
                <div class="td_toggle_content">예약취소</div>
              </div>
            </div>
            <div class = "list_container_td row_width">
              <button class = "round_button_gray"><span>발송완료</span></button>
            </div>
            <div class = "list_container_td row_width">
              <button class = "round_button_orange"><span>발송</span></button>
            </div>
            <div class = "list_container_td row_width">
              <button class = "delete_button_gray"><span>확인</span></button>
            </div>
          </div>
          <div class = "list_container_tr">
            <div class = "list_container_td row_width"><p>18.07.05</p></div>
            <div class = "list_container_td row_width"><p>멕벨라 돌핀크루즈</p></div>
            <div class = "list_container_td row_width"><p>구소영</p></div>
            <div class = "list_container_td row_width"><p>010-8081-2501</p></div>
            <div class = "list_container_td row_width"><p>ku7061@gmail.com</p></div>
            <div class = "list_container_td row_width"><p>두짓타니</p></div>
            <div class = "list_container_td row_width"><p>18.07.06</p></div>
            <div class = "list_container_td row_width"><p>10:20</p></div>
            <div class = "list_container_td row_width">
              <button class = "reservation_status"><span>예약확정</span></button>
              <div class = "td_toggle_box">
                <div class="td_toggle_content">전체</div>
                <div class="td_toggle_content">예약확정</div>
                <div class="td_toggle_content">확정대기</div>
                <div class="td_toggle_content">입금대기</div>
                <div class="td_toggle_content">취소요청</div>
                <div class="td_toggle_content">예약취소</div>
              </div>
            </div>
            <div class = "list_container_td row_width">
              <button class = "round_button_gray"><span>발송완료</span></button>
            </div>
            <div class = "list_container_td row_width">
              <button class = "round_button_gray"><span>발송완료</span></button>
            </div>
            <div class = "list_container_td row_width">
              <button class = "delete_button_gray"><span>확인</span></button>
            </div>
          </div>
          <!-- 목업데이터 -->

        </div> <!-- list_container_table -->

      </div> <!-- major_list_container -->
    </div> <!-- major_container -->
  </div> <!-- main -->

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
