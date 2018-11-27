let bestieGroceryItems = [new GroceryItem("apple", 0.50, 5), new GroceryItem("avocado", 2.00, 2), new GroceryItem("beer", 2.50, 4), new GroceryItem("kale", 2.00) ];
let bestiesList = new GroceryList("BFF", bestieGroceryItems);
console.log(bestiesList.summary());

let inventoryNearMe = {
  banana: 2,
  coffee: 2,
  kale: 5,
  chocolateBar: 5,
  apple: 10,
  potato: 11,
  tomato: 1,
  beer: 3,
  avocado: 1,
  milk: 5
};

let inventoryNearBestie = {
  banana: 2,
  coffee: 2,
  kale: 5,
  chocolateBar: 5,
  apple: 10,
  potato: 11,
  tomato: 1,
  beer: 6,
  avocado: 10,
  milk: 5
};

console.log(bestiesList.checkInventory(inventoryNearBestie));
console.log(bestiesList.checkInventory(inventoryNearMe));
