<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html class="no-js" lang="ko">

<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>놀다괌</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!--<link rel="manifest" href="site.webmanifest">-->
  <!--<link rel="apple-touch-icon" href="icon.png">-->

  <!-- Place favicon.ico in the root directory -->

  <!--<link rel="stylesheet" href="css/normalize.css">-->
  <link rel="stylesheet" href="css/desktop.css">
  <link rel="stylesheet" href="css/tablet.css">
  <link rel="stylesheet" href="css/moblie.css">
  <!--<link rel="stylesheet" href="css/main.css">-->
</head>

<body>
  <!--[if lte IE 9]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
  <![endif]-->

  <!-- Add your site or application content here -->
  <div id="top_head">

    <div id="top_title">
      <div class="up_text">괌자유여행 대표브랜드, 놀다괌!</div>
      <div class="down_text">놀다괌 추천옵션을 만나보세요!</div>
    </div>

    <div id="top_choice">
      <div class="category">
        <div class = "content">
          <div class="category_list_on"><p>투어</p></div>
          <div class="category_arrow_on"></div>
        </div>
        <div class = "content">
          <div class="category_list_off"><p>호텔</p></div>
          <div class="category_arrow_off"></div>
        </div>
        <div class = "content">
          <div class="category_list_off"><p>렌트카</p></div>
          <div class="category_arrow_off"></div>
        </div>
        <!--
                <div class = "content">
                    <div class="category_list_off"><p>여행상품</p></div>
                    <div class="category_arrow_off"></div>
                </div>
                -->
      </div>
      <div class="content">
        <div class="inner">
          <div class="title"><p>투어선택</p></div>
          <div class="content">숨겨놓은 박스지롱</div>
          <div class="option">
            <div class ="link">
              <div class ="inner">
                <a href="https://www.naver.com/" target="_blank">
                  <img src="./img/NaverCafe.png">
                  <p>놀다괌 공식 카페 바로가기</p>
                </a>
              </div>
            </div>
            <div class ="link">
              <div class ="inner">
                <a href="https://www.kakaocorp.com/service/KakaoTalk" target="_blank">
                  <img src="./img/KakaoTalk.png">
                  <p>놀다괌 카톡 상담 바로가기</p>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>

  </div>

  <div id = "main">
    <div class ="title">예약자 정보</div>
    <div class = "form_box">
      <input type = "text" id = "korName" placeholder = "한글 이름"/>
      <input type = "text" id = "engName" placeholder = "영문 이름"/>
      <input type = "text" id = "phone" placeholder = "휴대폰번호"/>
      <input type = "text" id = "email"placeholder = "이메일주소"/>
    </div>




    <div class ="title">예약상품 선택</div>

    <div class = "form_box">
      <button class="toggle_button" id = "category">예약 종류</button>
      <div class="toggle_box">
        <div class="toggle_content">투어</div>
        <div class="toggle_content">호텔</div>
        <div class="toggle_content">렌트카</div>
        <div class="toggle_content">투어</div>
        <div class="toggle_content">호텔</div>
        <div class="toggle_content">렌트카</div>
        <div class="toggle_content">투어</div>
        <div class="toggle_content">호텔</div>
        <div class="toggle_content">렌트카</div>
      </div>
      <button class="toggle_button" id = "tour">투어 선택</button>
      <div class="toggle_box">
        <div class="toggle_content2">AAAAAAAAAAAAA</div>
        <div class="toggle_content2">BBBBBBBBBB</div>
        <div class="toggle_content2">CCCCCCCCCCCCCC</div>
        <div class="toggle_content2">DDDDDDDDDDDDDDD</div>
        <div class="toggle_content2">EEEEEEE</div>
        <div class="toggle_content2">FFFFFFFFFFFFF</div>
        <div class="toggle_content2">GGGGGGGGG</div>
        <div class="toggle_content2">HHHHHHHHHHHHH</div>
        <div class="toggle_content2">IIIIIIIIII</div>
      </div>
      <input type = "text" id = "reserveDate" placeholder = "투어 날짜"/>
      <input type = "text" id = "reserveTime" placeholder = "투어 시간"/>
      <div class = "input_special">
        <div class = "top">
          <div class = "left"><p>투어 인원</p></div>
          <div class = "icon">
            <p>▼</p>
          </div>
          <div class = "right">
            <div>성인&nbsp</div><div id = "adult" class = "a">0</div><div>명</div><div> / </div>
            <div>소아&nbsp</div><div id = "kid" class = "a">0</div><div>명</div><div> / </div>
            <div>유아&nbsp</div><div id = "baby" class = "a">0</div><div>명</div>
          </div>
        </div>
        <div class = "middle">
          <div class = "left">
            <div>성인&nbsp</div><div class = "b">0</div><div>명</div>
          </div>
          <div class = "right">
            <div class = "countbox">
              <div class = "bt_down">-</div>
              <input class = "count" name ="num" value="0" placeholder ="인원"/>
              <div class = "bt_up">+</div>
            </div>
          </div>
        </div>
        <div class = "middle">
          <div class = "left">
            <div>소아&nbsp</div><div class = "b">0</div><div>명</div>
          </div>
          <div class = "right">
            <div class = "countbox">
              <div class = "bt_down">-</div>
              <input class = "count" name ="num" value="0" placeholder ="인원"/>
              <div class = "bt_up">+</div>
            </div>
          </div>
        </div>
        <div class = "middle">
          <div class = "left">
            <div>유아&nbsp</div><div class = "b">0</div><div>명</div>
          </div>
          <div class = "right">
            <div class = "countbox">
              <div class = "bt_down">-</div>
              <input class = "count" name ="num" value="0" placeholder ="인원"/>
              <div class = "bt_up">+</div>
            </div>
          </div>
        </div>
      </div>
      <div class = "billing">
        <div class = "normal_text">
          <div class = "left"><p>예약금</p></div>
          <div class = "right"><p>$0</p></div>
        </div>

        <div class = "normal_text">
          <div class = "left"><p>현지지불액</p></div>
          <div class = "right"><p>$0</p></div>
        </div>
      </div>
    </div>
    <div class = "button_container">
      <div class = "button_design"><p>상품 추가하기</p></div>
    </div>

  </div>

  <div id = "list">
    <div class = "box">
      <table id="bill"><!-- frame="void"-->
        <tr>
          <th class = "col_1">카테고리</th>
          <th class = "col_2">상품명</th>
          <th class = "col_3">투어날짜 및 시간</th>
          <th class = "col_4">인원</th>
          <th class = "col_5">예약금</th>
          <th class = "col_6">현지지불액</th>
        </tr>
        <!-- 데이터 추가 영역 -->
      </table>
    </div>
    <div class = "total">

      <div class ="left">
        <p>총 결제금액</p>
      </div>

      <div class ="right">
        <div class = "orange">$90.00</div>
        <div class = "dark">$90.00(한국 결제 예약금 : 1,101,700원) + $0.00(현지 지불 금액)</div>
      </div>

    </div>




    <div id = "footer">

    </div>

  </div>



  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
  <!--<script src="js/vendor/modernizr-{{MODERNIZR_VERSION}}.min.js"></script>-->
  <!--<script src="https://code.jquery.com/jquery-{{JQUERY_VERSION}}.min.js" integrity="{{JQUERY_SRI_HASH}}" crossorigin="anonymous"></script>-->
  <!--<script>window.jQuery || document.write('<script src="js/vendor/jquery-{{JQUERY_VERSION}}.min.js"><\/script>')</script>-->
  <!--<script src="js/plugins.js"></script>-->
  <script src="js/main.js"></script>
  <script src="js/add.js"></script>
  <script src="js/reserve.js"></script>
  

  <!-- Google Analytics: change UA-XXXXX-Y to be your site's ID. -->
  <!--<script>-->
    <!--window.ga = function () { ga.q.push(arguments) }; ga.q = []; ga.l = +new Date;-->
    <!--ga('create', 'UA-XXXXX-Y', 'auto'); ga('send', 'pageview')-->
  <!--</script>-->
  <!--<script src="https://www.google-analytics.com/analytics.js" async defer></script>-->
</body>

</html>
