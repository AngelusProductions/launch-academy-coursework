alert('testing, testing..');

for (let i = 0; i < 5; i++) {
  alert("FREE iPAD!! LUCKY WINNER, YAY!");
}

let animal = 'Funky Ducky';
alert (`${animal} is ready to rock.`);

let nerm = prompt('Who are you?');
alert (`Sup ${nerm}?`);

let robo = prompt("Are you a robot?");
if (robo.toLowerCase() === 'yes') {
  alert ('Bleep Bloop');
} else {
  alert (`Hello fellow human called ${name}`);
}

let name = prompt ('What\'s ur name?');
let randoNum = Math.floor((Math.random() * 100) + 1);
let guess = prompt('What\'s your guess?');
if (guess == randoNum) {
  alert('Cool bananas!');
} else {
  alert(`${name.toUpperCase()} = BIGLY LOSER`);
}
