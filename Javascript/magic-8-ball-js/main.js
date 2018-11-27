responses = ['It is certain','It is decidedly so','Without a doubt','Yes, definitely','You may rely on it','As I see it, yes','Most likely','Outlook good','Yes','Signs point to yes','Reply hazy try again','Ask again later','Better not tell you now','Cannot predict now','Concentrate and ask again','Don\'t count on it','My reply is no','My sources say no','Outlook not so good','Very doubtful'];

function randomIndex (length) {
  return Math.floor((Math.random() * length)); }

console.log(randomIndex(responses.length));

console.log(responses[1]);
console.log(responses[responses.length - 1] + '\n\nGOOD:\n\n');

responses.slice(0,10).forEach( (response) => {
  console.log(response + "\n"); });

responses.pop();
responses.pop();
responses.unshift(responses.splice(11, 1).toString());
responses.unshift('Maybe in another life');
responses.splice(10, 0, 'Not feelin\' it, bro');
responses.push('If you were someone else, sure');

console.log("\nNEW RESPONSES: \n\n");
responses.forEach( (response) => {
  console.log(response + "\n"); });
