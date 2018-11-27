let Spaceship = require('./spaceship');
let CrewMember = require('./crew-member');
let Rocket = require('./rocket');
let ourShip = new Spaceship ("BEYOND INFINITY");
let crewNames = ['Spongebob', 'Patrick', 'Squidward'];

function trainCrew (crewNames) {
  let trainedCrew = [];
  crewNames.forEach( crewName => {
    trainedCrew.push(new CrewMember(crewName) );
  });
  trainedCrew.forEach( crewName => {
    crewName.trained = true;
  });
  return trainedCrew;
}

function fire (ship) {
  if (ship.propulsion.fuel > 0) {
    ship.propulsion.fuel--;
    console.log(`ENGINE FIRED. Fuel: ${ship.propulsion.fuel}`);
    return true;
  } else {
    console.log("ENGINE FAILURE: FUEL TANK EMPTY.");
    return false;
  }
}

function countdown(count, ship) {
  if (count == 0) {
    setTimeout(() => {
      console.log("BLAST OFF!");
      ship.takeOff(ship);
    }, 1000);
 } else {
    setTimeout(() => {
      console.log(`${count}...`);
      count--;
      countdown(count, ship);
    }, 1000);
  }
}

let launchpad = (ship, rocket) => {
  console.log( `Initiating pre-flight procedures...\n${ship.name} to infinity and beyond!`);
  ship.loadCrew(trainCrew(crewNames));
  console.log( `This launch's captain will be ${ship.captain()}.`);
  ship.mountPropulsion(rocket);
  ship.propulsion.addFuel(5);
  countdown (3, ship);
};

launchpad(ourShip, new Rocket ());
