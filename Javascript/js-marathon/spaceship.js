function fire () {
  require('./shipyard');
}

class Spaceship {
  constructor( name ) {
    this.name = name;
    this.crew = [];
    this.propulsion = null;
  }
  loadCrew (crewArray) {
    crewArray.forEach( crewMember => {
      this.crew.push(crewMember);
      console.log(`Welcome ${crewMember.name}.`);
    });
  }
  captain () {
    let randomNumber = Math.floor(Math.random() * this.crew.length);
    let captain = this.crew[randomNumber].name;
    return captain;
  }
  mountPropulsion (propulsion) {
    this.propulsion = propulsion;
    console.log(`PROPULSION MOUNTED. Fuel: ${propulsion.fuel}`);
  }
  takeOff (ship) {
    if (this.propulsion.fuel > 0) {
      console.log("...Psssheeww!");
      fire(ship);
    } else {
      console.log ("*fart noise* ...FAILURE TO LAUNCH.");
    }
  }
}

module.exports = Spaceship;
