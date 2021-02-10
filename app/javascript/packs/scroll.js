// id=’js-scroll-top’を取得し、pageTopBtnに代入
// currentYが100より大きいかでopacityを付与
const pageTopBtn = document.getElementById('js-scroll-top');
window.addEventListener("scroll", () => {
  const currentY = window.pageYOffset;
//   垂直方向のスクロール量を返す。currentY > 100 つまり、スクロール量が100より大きいか、そうでないかで条件分岐
  if ( currentY > 100){
    setTimeout(function(){
      pageTopBtn.style.opacity = 1;
    }, 1);
  } else {
    setTimeout(function(){
      pageTopBtn.style.opacity = 0;
    }, 1);
  }
});

// スクロールトップボタン
scrollTop('js-scroll-top', 150); // 遅すぎるとガクガクになるので注意

function scrollTop(el, duration) {
  const target = document.getElementById(el);
  target.addEventListener('click', function() {
    let currentY = window.pageYOffset; // 現在のスクロール位置を取得
    let step = duration/currentY > 1 ? 10 : 100; // 三項演算子
    let timeStep = duration/currentY * step; // スクロール時間
    let intervalId = setInterval(scrollUp, timeStep);
    // timeStepの間隔でscrollUpを繰り返す。
    // clearItervalのために返り値intervalIdを定義する。

    function scrollUp(){
      currentY = window.pageYOffset;
      if(currentY === 0) {
          clearInterval(intervalId); // ページ最上部に来たら終了
      } else {
          scrollBy( 0, -step ); // step分上へスクロール
      }
    }
  });
}