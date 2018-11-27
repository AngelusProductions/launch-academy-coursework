document.getElementById('coupon-code').style.visibility = 'hidden';
let clickHere = document.getElementById('click-here');
clickHere.addEventListener('click', () => {
  document.getElementById('coupon-code').style.visibility = 'visible';
});
