let bakers = [
  "Chetna",
  "Diana",
  "Iain",
  "Kate",
  "Luis",
  "Martha",
  "Nancy",
  "Norman",
  "Richard"
];

let signatureBakes = [
  ["Cardamom, Pistachio and Coffee Swiss Roll", "Fenugreek and Carom Crackers", "Onion and Pine Nut Rolls"],
  ["Mum's Sunday Tea Lemon Curd Swiss Roll", "Parmesan Triangles", "Rustic Picnic Rolls"],
  ["Raspberry and Lemon Swiss Roll", "Za'atar and Fig Biscuits", "Cranberry and Walnut Rye Bread Rolls"],
  ["Apricot and Basil Swiss Roll", "Parmesan and Apple Biscuits", "Orange and Cardamom Rye Bread Knot"],
  ["Red Velvet and White Chocolate Swiss Roll", "Black Olive and Rosemary Biscuits", "Opposites Attract Rolls"],
  ["Spanish Swiss Roll", "Caramelised Onion and Goat's Cheese Sandwich Biscuits", "Date and Walnut Rye Rolls"],
  ["Tiramisu Swiss Roll", "	Fennel and Rye Thins", "Cider and Walnut Crusty Rolls"],
  ["Coffee and Hazelnut Swiss Roll", "Farthing Biscuits", "Rye Bread Rolls"],
  ["Pistachio and Strawberry Swiss Roll", "Rosemary Seeded Crackers", "Rye and Cranberry Rolls"]
];

function theBaker (bake) {
  signatureBakes.forEach( baker => {
    if ( baker.includes(bake) ) {
      winner = bakers[ signatureBakes.indexOf(baker) ]; } });
  return winner; }

console.log( theBaker("Rosemary Seeded Crackers") + ", " + theBaker("Opposites Attract Rolls") + "\n\n");

function nameThatBake (week, baker) {
  if ( bakers.includes(baker) ) {
  return (`${baker} baked the ${signatureBakes[ bakers.indexOf(baker) ][ week - 1]}.` );
} else {
  return ( `${baker} was not competing.` ); } }

console.log(nameThatBake(1, "Nancy") + "\n" + nameThatBake(3, "Richard") + "\n\n");

function weekBakes (week) {
  index = 0;
  signatureBakes.forEach( baker => {
    console.log( `${bakers[index]} baked the ${baker[week - 1]}.` );
    index++; }); }

console.log( "WEEK 1:\n" );
weekBakes(1);
console.log( "\nWEEK 3:\n");
weekBakes(3);
console.log("\n");

function bakesWith (ingredient) {
  index = 0;
  occurences = 0;
  output = [];
  signatureBakes.forEach( baker => {
    baker.forEach( bake => {
      if ( bake.includes(ingredient) ) {
        occurences++;
        output.push( `${occurences}. ${bakers[index]} made the ${bake}` ); } });
    index++; });
  return ( `There are ${occurences} bakes with the word "${ingredient}" in them:\n` + output.join("\n") ); }

console.log(bakesWith("Lemon"));
console.log(bakesWith("Rosemary"));
console.log("\n");

function doTheyExist (name) {
  if ( bakers.includes(name) ) {
    return (`Yes, ${name} was a contestant`);
  } else {
    return (`No, ${name} was not a contestant.`); } }

console.log(doTheyExist("Martha"));
console.log(doTheyExist("Tony"));

console.log("\n");

console.log(nameThatBake(3, "Martha"));
console.log(nameThatBake(2, "Tony"));

function addBaker (name, bakes) {
  bakers.push(name);
  signatureBakes.push(bakes); }

addBaker( "Tony", ["Awesome Cake", "Snappy Biscuits", "Cheesy Bread"] );

console.log("\n");

function printBakeSummary (bakers, bakes) {
  index = 0;
  bakes.forEach( bake => {
    console.log( `${bakers[index]}:` );
    week = 1;
    bake.forEach( meal => {
      console.log( `Week ${week}: ${meal}.` );
      week++; });
    index++;
    console.log("\n"); }); }

printBakeSummary(bakers, signatureBakes);
