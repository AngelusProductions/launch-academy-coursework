let inventory = [
  ['LA-LG-STICKER', 300, 'Large Sticker', 'images/la-large-sticker-256px.png', 'Show your Launch pride by plastering your laptop with these beautiful die-cut stickers.'],
  ['LA-SM-STICKER', 200, 'Small Sticker', 'images/la-small-sticker-128px.png', "It\'s a tiny Launch sticker. How cute!"],
  ['LA-T-SHIRT', 50, 'T-Shirt', 'images/la-t-shirt-200px.png', '100% Cotton. Makes a great gift.']
]

class Product {
  constructor (id, quantity, name, url, description) {
    this.id = id;
    this.quantity = quantity;
    this.name = name;
    this.url = url;
    this.description = description;
  }
  sell () {
    this.quantity--;
  }
  toHTML () {
    return `<div class="product">\n   <h1>Product Name: ${this.name}</h1>\n   <h5>${this.quantity} In Stock</h5>\n   <img src="${this.url}" alt="Large Launch Academy Sticker"/>\n\n   <h3>Description</h3>\n   <p>\n      ${this.description}\n   </p>\n</div>`;
  }
}

inventory.forEach( (productData) => {
  document.getElementById('all-products').innerHTML += new Product(...productData).toHTML();
});
