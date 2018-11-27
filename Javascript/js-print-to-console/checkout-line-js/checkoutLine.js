let eggs = {
  itemName: 'dozen eggs',
  quantity: 2,
  price: 0.99
};

let milk = {
  itemName: 'gallon of milk',
  quantity: 1,
  price: 2.99
};

let bread = {
  itemName: 'loaf of bread',
  quantity: 1,
  price: 3.50
};

let coffee = {
  itemName: 'lbs. of coffee',
  quantity: 10,
  price: 8.99
};

let shoppingCart = [eggs, milk, bread, coffee];

console.log( "$" + shoppingCart[3].price );
console.log( shoppingCart[2].quantity + " gallon of milk" );

const taxRate = 1.0625;
let subTotal = 0;

shoppingCart.forEach( item => {
  subTotal += item.price;
});

console.log("Subtotal: $" + subTotal);
console.log("Total: $" + (subTotal * taxRate).toFixed(2));
