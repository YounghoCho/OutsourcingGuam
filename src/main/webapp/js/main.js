jQuery(function($){

    $(function(){
      $('.bt_up').click(function(){
        var n = $('.bt_up').index(this);
        var num = $(".count:eq("+n+")").val();
        nam = $(".count:eq("+n+")").val(num*1+1);
        num = nam.val();
        $(".a:eq("+n+")").text(num);
        $(".b:eq("+n+")").text(num);
      });
      $('.bt_down').click(function(){
        var n = $('.bt_down').index(this);
        var num = $(".count:eq("+n+")").val();
        if(num!=0) num = $(".count:eq("+n+")").val(num*1-1);
        num = nam.val();
        $(".a:eq("+n+")").text(num);
        $(".b:eq("+n+")").text(num);
      });
    })

    $(function () {
      $('.toggle_button').click(function() {
        var m = $('.toggle_button').index(this);
        if(m == "0"){
          $(".toggle_box:eq(1)").css("display", "none");
          if($(".toggle_box:eq("+m+")").css("display") === "none"){
            $(".toggle_box:eq("+m+")").css("display", "block");
            $(".toggle_box:eq("+m+")").css("left", "");
          }else{
            $(".toggle_box:eq("+m+")").css("display", "none");
          }
        }else{
          $(".toggle_box:eq(0)").css("display", "none");
          if($(".toggle_box:eq("+m+")").css("display") === "none"){
            $(".toggle_box:eq("+m+")").css("display", "block");
            if($(window).width() > 623){
              $(".toggle_box:eq("+m+")").css("left", "50%");
            }
            else{
              $(".toggle_box:eq("+m+")").css("margin-top", "84px");
            }
          }else{
            $(".toggle_box:eq("+m+")").css("display", "none");
          }
        }

      });
    })

    $(function () {
      $("#top_choice > .category > .content").click(function() {
        var a = $('#top_choice > .category > .content').index(this);
        $(".category_list_on").attr("class","category_list_off");
        $(".category_arrow_on").attr("class","category_arrow_off");
        $(".category_list_off:eq("+a+")").attr("class","category_list_on");
        $(".category_arrow_off:eq("+a+")").attr("class","category_arrow_on");
      });
    })
    
});

//토글시 삽입 및 복구
$(".toggle_content").on("click", function(){
	$("#category").html($(this).html());
	$("#category").css("color","black");
	$(".toggle_box").hide();
});
$(".toggle_content2").on("click", function(){
	$("#tour").html($(this).html());
	$("#tour").css("color","black");
	$(".toggle_box").hide();
});