var setBoxId = '#float-sns-box';      // スクロールさせる要素
var initOffsetTop = null;   // 要素の初期位置
$(document).ready(function() {
    // 初期位置取得
    initOffsetTop = $(setBoxId).offset().top;

    $('.effect').css("opacity","1");


});

//スクロールしたらこの処理が走る
$(window).scroll(function() {
    scrollbox();


    $(".effect").each(function(){
      // var imgPos = $(this).offset().top;
      var mapPos = $('#map').offset().top
      var scroll = $(window).scrollTop();
      var windowHeight = $(window).height();
      if (scroll > mapPos - windowHeight/2){
        $(this).css("opacity","0" );
      } else {
        $(this).css("opacity","1" );
      }
    });

});

// スクロール処理
function scrollbox(){
    // 初期位置が取れていなければ処理を抜ける
    if(initOffsetTop == null) return;

    // 現在のスクロール位置を取得
    var scrollTop = $(document).scrollTop();

    // スクロールさせる要素の初期位置と現在のスクロールの位置を比較
    //初期位置より下にスクロールした時
    if(initOffsetTop < scrollTop) {
        // positionを設定
        $(setBoxId).css('position', 'fixed', 'right','80');
        // topの位置を設定
        $(setBoxId).animate({top: '0', right: "80"}, {duration: 0});
    } else {
        // 設定したスタイルを持とに戻す
        $(setBoxId).css('position', 'absolute', 'right','80');
        $(setBoxId).animate({top: initOffsetTop}, {duration: 0});
    }
}