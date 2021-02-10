'use strict';
{
  const modalOpen = document.getElementById('modal-open');
  const modalClose = document.getElementById('modal-close');
  const modal = document.getElementById('modal');
  const modalMask = document.getElementById('modal-mask');

  modalOpen.addEventListener('click', function(){
    modal.classList.remove('modal-hidden');
    modalMask.classList.remove('modal-hidden');
  });
  modalClose.addEventListener('click', function(){
    modal.classList.add('modal-hidden');
    modalMask.classList.add('modal-hidden');
  });
  modalMask.addEventListener('click', function(){
    modal.classList.add('modal-hidden');
    modalMask.classList.add('modal-hidden');
  });


// window.addEventListener("scroll", () => {
//   const currentY = window.pageYOffset;
// //   垂直方向のスクロール量を返す。currentY > 100 つまり、スクロール量が100より大きいか、そうでないかで条件分岐
//   if ( currentY > 100){
//     setTimeout(function(){
//       modalOpen.style.opacity = 1;
//     }, 1);
//   } else {
//     setTimeout(function(){
//       modalOpen.style.opacity = 0;
//     }, 1);
//   }
// });
}