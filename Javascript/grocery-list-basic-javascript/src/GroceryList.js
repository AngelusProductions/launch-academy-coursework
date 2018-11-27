
class GroceryList {
  constructor (name, groceryItems) {
    this.name = name;
    this.groceryItems = groceryItems;
  }
  summary () {
    let total = 0;
    let summary = [];
    summary.push(`Dear ${this.name},\n\nI bought you:\n\n`);
    this.groceryItems.forEach( item => {
      if (item.name != 'kale') {
          summary.push( `${item.quantity} ${item.name}s - $${(item.price * item.quantity).toFixed(2)}\n`);
        } else {
          summary.push( `${item.quantity} lb. of ${item.name} - $${(item.price * item.quantity).toFixed(2)}\n`);
        }
      total += item.price * item.quantity;
      });
    summary.push(`\nYou owe me $${total.toFixed(2)}.`);
    return summary.join("");
  }
  checkInventory (bodega) {
    let allSet = true;
    let noTengo = [];
    this.groceryItems.forEach( groceryItem => {
      for (var bodegaItem in bodega) {
        if (groceryItem.name == bodegaItem ) {
          if (bodega[bodegaItem] < groceryItem.quantity ) {
            noTengo.push(groceryItem.name);
            allSet = false;
          }
        }
      }
    });
    if (allSet) {
      return "Yes, come here if you want all that stuff!";
    } else {
      return `Sorry, no can do... it doesn't have:\n- ${noTengo.join("\n- ")}\nGo Somewhere else.`;
    }
  }
}
