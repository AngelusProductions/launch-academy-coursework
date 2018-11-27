
class Rocket {
  constructor (fuel = 0) {
    this.fuel = fuel;
  }
  addFuel (fuelAmount) {
    this.fuel += fuelAmount;
    console.log(`ADDED FUEL. Fuel: ${this.fuel}`);
    return this.fuel;
  }
}

module.exports = Rocket;
