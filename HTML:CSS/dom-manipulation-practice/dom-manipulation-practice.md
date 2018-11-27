## Learning Goals

- Create new HTML with Javascript
- Append new HTML to the page
- Become the Javascript Master hidden within you

### Getting Set Up

```no-highlight
$ cd ~/challenges       # for Mac/Linux
$ cd %HOME%/challenges  # for Windows
$ et get dom-manipulation-practice
$ cd dom-manipulation-practice
$ open index.html
```

## Instructions

In this exercise, you will be building the very beginnings of an app that tracks Todo items.

In this exercise you are provided an `index.html` and a `main.js` file.

In `main.js`, create an array that will hold your ToDo list items. Populate your
list with a few items of your choosing. If you are feeling uninspired, here's a
list.

* Write some JavaScript
* Submit System Check
* Take a Break

Use this array to build a HTML unordered list, and insert it into the page. A
`ul` element with an id of `todo-list` has been provided.

{% show_solution %}
```javascript
let todos = [
  "Write some JavaScript",
  "Submit System Check",
  "Take a Break"
];

let unorderedList = document.getElementById('todo-list');

todos.forEach(function(todo) {
  unorderedList.innerHTML += `\<li\>${todo}\</li\>`;
});
```
{% endshow_solution %}
