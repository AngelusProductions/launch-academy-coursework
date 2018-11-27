let apples = {
  itemName: 'Apples',
  quantity: 3
};

let gushers = {
  itemName: 'Gushers',
  quantity: 2
};

let capriSun = {
  itemName: "Capri Sun",
  quantity: 10
};

let shoppingCart = [apples, gushers, capriSun];

shoppingCart.forEach(item => {
  console.log(item.itemName + ": " + item.quantity.toString());
});
