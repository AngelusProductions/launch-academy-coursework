bottlesOfBeer = 99;

while (bottlesOfBeer > 1) {
  if (bottlesOfBeer % 10 == 0) {
    punctuation = `!`;
  } else {
    punctuation = `.`; }
 console.log(`\n${bottlesOfBeer} bottles of beer on the wall, ${bottlesOfBeer} bottles of beer${punctuation}`);
 bottlesOfBeer--;
 console.log(`Take one down and pass it around, ${bottlesOfBeer} bottles of beer on the wall.`);
}

console.log(`\n${bottlesOfBeer} bottle of beer on the wall, ${bottlesOfBeer} bottle of beer.\nTake one down and pass it around, no more bottles of beer on the wall.`);
console.log(`\nNo more bottles of beer on the wall, no more bottles of beer!\nGo to the store and buy some more, then find a rehab because you have a serious problem.`);
