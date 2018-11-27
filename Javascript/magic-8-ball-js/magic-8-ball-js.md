### Introduction

The Magic 8-Ball is a fortune telling toy. You ask it a question, and it gives
you one of the following answers.

```no-highlight
'It is certain',
'It is decidedly so',
'Without a doubt',
'Yes, definitely',
'You may rely on it',
'As I see it, yes',
'Most likely',
'Outlook good',
'Yes',
'Signs point to yes',
'Reply hazy try again',
'Ask again later',
'Better not tell you now',
'Cannot predict now',
'Concentrate and ask again',
'Don't count on it',
'My reply is no',
'My sources say no',
'Outlook not so good',
'Very doubtful'
```

## Getting Started

```no-highlight
$ cd ~/challenges
$ et get magic-8-ball-js
$ cd magic-8-ball-js
```

### Instructions

1) Store all the possible responses in an **Array**, and print a random item from the list to the JavaScript console.

Hint: Use the following function to select a random index given the length of an array.

```no-highlight
// source http://stackoverflow.com/a/5915126/2675670

let randomIndex = (length) => {
  return Math.floor((Math.random() * length));
}
```

2) But we're developers!  We don't have to abide by the rules of mere mortals.  We can see into the depths of the Magic 8-ball and manipulate the interdimensional sources whence it draws its power to get the answers we want.  Use your knowledge of Array methods to:
  * Always return the very first response
  * Always return the very last response
  * Return only the positive responses
  * Delete two of the negative responses
  * Reassign 'Ask again later' to the beginning of the array
  * Add three of your own responses to the list, one to the beginning, one to index 10, and one to the end

### External Resources

* [Magic 8-Ball - Wikipedia](https://en.wikipedia.org/wiki/Magic_8-Ball)
* [Math.random()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/random)
* [Array - MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array)
