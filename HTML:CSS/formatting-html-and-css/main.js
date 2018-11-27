let ingredients = [
  "1 1/2 pounds Brussels sprouts",
  "3 tablespoons good olive oil",
  "3/4 teaspoon kosher salt",
  "1/2 teaspoon freshly ground black pepper"
];

let directions = [
  "Preheat oven to 400 degrees F.",
  "Cut off the brown ends of the Brussels sprouts.",
  "Pull off any yellow outer leaves.",
  "Mix them in a bowl with the olive oil, salt and pepper.",
  "Pour them on a sheet pan and roast for 35 to 40 minutes.",
  "They should be until crisp on the outside and tender on the inside.",
  "Shake the pan from time to time to brown the sprouts evenly.",
  "Sprinkle with more kosher salt (I like these salty like French fries).",
  "Serve and enjoy!"
];

function showIngredients () {
  ingredients.forEach( item => {
    document.getElementById('ingredients').innerHTML += `<li>${item}</li>`;
  });
  document.getElementById('ingredientsButton').style.visibility = 'hidden';
}

function showDirections () {
  let order = 1;
  directions.forEach( item => {
    document.getElementById('directions').innerHTML += `<ul>${order}. ${item}</ul>`;
    order++;
  });
  document.getElementById('directionsButton').style.visibility = 'hidden';
}

document.getElementById('brusselin').addEventListener('click', () => {
  document.getElementById('brusselin').style.visibility = 'hidden';
});

document.getElementById('banner').addEventListener('click', () => {
    let backgroundColors = ['purple-banner', 'green-banner', 'gray-banner'];
    document.getElementById('banner').setAttribute('class', backgroundColors[Math.floor(Math.random() * 3)]);
});
