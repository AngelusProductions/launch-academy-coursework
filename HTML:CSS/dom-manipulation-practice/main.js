let toDo = ['Find a girlfriend', 'Marry her', 'Make a baby', 'Name it Sally'];
let list = document.getElementById("todo-list");

toDo.forEach(function(task) {
  list.innerHTML += (`<ul>${task}</ul>`);
});
