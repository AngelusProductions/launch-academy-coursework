let Corey = {
  firstName: 'Corey',
  lastName: 'Angelus',
  hometown: 'Medfield',
  occupation: 'Chimpanzee Whisperer',
  catchPhrase: 'Call me Sally and shave my legs bare!',
  name () {
    return this.firstName + " " + this.lastName;
  }
};

console.log(Corey);
console.log(Corey.name());
