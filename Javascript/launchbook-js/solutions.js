// Exercise: Find the top navbar, using a query for the HTML element type. The navbar's type is `<nav>`.
document.getElementByTagName('nav');
// Exercise: Find the sidebar on the left by using its id.
document.getElementById('sidebar-right');
// Exercise: Find the 'Pages' and 'Groups' sections of the sidebar by using their class.
document.getElementsByClassName('pages');
document.getElementsByClassName('groups');
// Exercise: Find all of the comments on the page.
document.getElementsByClassName('comments');
// Exercise: Find the first comment on the page.
document.getElementsByClassName('comments')[0];
// Exercise: Find the last comment on the page.
let comments = document.getElementsByClassName('comments');
let lastCommentIndex = comments.length - 1;
comments[lastCommentIndex];
// Exercise: Find the fourth comment on the page. Make sure you grab the fourth *comment* rather than the fourth *block* of comments. You may need more than one line of code!
document.getElementsByClassName('media-body')[6].children[1];
// Exercise: Find one of the ads in the sidebar and hide them.
let adSlot = document.getElementsByClassName('ad-slot')[1];
adSlot.style.visibility = 'hidden';
// Exercise: Set the visibility on the ad that you hid in the previous exercise to make it visible again.
adSlot.style.visibility = 'visible';
// Exercise: Use `setAttribute` to change `src` attribute of one of the ads in the sidebar.
document.getElementsByClassName('ad-slot')[0].getElementsByTagName('img')[0].setAttribute('src', 'http://placebear.com/200/300');
// Exercise: Find Sam's post and change its text to something incredible.
document.getElementsByClassName('post media')[3].getElementsByClassName('media-body')[0].getElementsByTagName('p')[0].innerHTML = 'Something Incredible';
// Exercise: Find the first post and add the `.post-liked` class to it.
document.getElementsByClassName('posts')[0].getElementsByClassName('post media')[0].className += ' post-liked';
// Exercise: Find the second post and remove the `.post-liked` class.
document.getElementsByClassName('posts')[0].getElementsByClassName('post media')[1].classList.remove('post-liked');
