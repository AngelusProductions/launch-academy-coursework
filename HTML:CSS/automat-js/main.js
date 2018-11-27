let automat = ['chicken', 'beans', 'mac', 'sauce', 'spinach', 'pie', 'cake'];

automat.forEach( (meal) => {
  let foodItemDiv = document.createElement('div');
  foodItemDiv.className = 'food-item';
  foodItemDiv.innerHTML = `${meal}`;
  let mainDiv = document.getElementById('main');
  mainDiv.appendChild(foodItemDiv);
  foodItemDiv.addEventListener('click', () => {
    foodItemDiv.className += ' hidden';
  });
});
