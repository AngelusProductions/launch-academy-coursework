class BankAccount {
  constructor (balance) {
    this.balance = balance;
    this.transactions = [];
  }
  transaction(amount) {
    if ( Array.isArray(amount) ) {
      amount.forEach(transaction => {
        this.balance += transaction;
        this.transactions.push(transaction);
      });
    } else {
      this.balance += amount;
      this.transactions.push(amount);
    }
  }
  checkBalance() {
    if ( this.balance > 0 ) {
      console.log( `Balance: $${Math.abs(this.balance)}` );
    } else {
      console.log( `Balance: -$${Math.abs(this.balance)}` );
    }
  }
  accountDetails() {
    this.transactions.forEach(transaction => {
      if ( transaction > 0 ) {
        console.log( `+$${Math.abs(transaction)}` );
      } else {
        console.log( `-$${Math.abs(transaction)}` );
      }
    });
  }
}

let myAccount = new BankAccount(1000);
myAccount.checkBalance();
myAccount.transaction(50);
myAccount.transaction(-100);
myAccount.transaction(-900);
myAccount.transaction([-45, -99.95, -34.43]);
myAccount.accountDetails();
myAccount.checkBalance();
