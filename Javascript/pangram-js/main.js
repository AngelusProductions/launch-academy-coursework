let isPangram = (sentence) => {

  booleanArray = [];
  alphabet = "abcdefghijklmnopqrstuvwxyz";
  alphabetLetters = alphabet.split("");
  sentence = sentence.toLowerCase();
  sentenceLetters = sentence.split("");

  alphabetLetters.forEach( letter => {
    if ( sentenceLetters.includes(letter) ) {
      booleanArray.push(true);
    } else {
      booleanArray.push(false); } });

  pangram = true;
  booleanArray.forEach( boolean => {
    if ( boolean == false ) {
      pangram = false; } });
return pangram;
};

testData = [ 'The quick brown fox jumps over the lazy dog.', 'The quick onyx goblin jumps over the lazy dwarf.', 'Grumpy wizards make toxic brew for the evil queen and jack.', 'Not a pangram', ''];

testData.forEach( trial => {
  if ( isPangram(trial) ) {
    console.log( `isPangram gave a correct result for: ${trial}` );
  } else {
    console.log( `isPangram gave an incorrect result for: ${trial}` ); } });
