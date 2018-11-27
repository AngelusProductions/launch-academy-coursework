### Instructions

Build an implementation of "Guess The Number" using the `alert` and `prompt` functions of JavaScript.

#### Setup
```
$ et get guess-the-number-javascript
$ cd guess-the-number-javascript
$ open lib/index.html
```
We'll need an HTML page and a JavaScript source file to create our game.  You should see these files in the `lib/` director  y.

Our HTML just needs enough structure to load our JavaScript source file.  It should look like this:

```HTML
<!DOCTYPE html>
<html>
  <head>
  <title>Guess the Number</title>
  </head>

  <body>
    <script src="guess_the_number.js"></script>
  </body>
</html>
```

This HTML will load the `guess_the_number.js` file when it starts up. To verify it works, add the following to `guess_the_number.js`:

```javascript
alert("does this work?");
```

Test it out by running:

```no-highlight
$ open lib/index.html
```

If you receive a popup, everything is hooked up correctly.

Being the malicious JavaScript developers that we are, let's make some pop ups. Type in `alert("You've won an iPad!");` into `guess_the_number.js` and refresh the page. The alert should pop up.

Now let's be a little bit more malicious. Paste the following code into `guess_the_number.js` and refresh the page:

```javascript
for(let i = 0; i < 3; i++) {
  alert("You've won an iPad!");
}
```

You can see how an evil JavaScript programmer could abuse this code. Alert boxes aren't limited to just accepting string values. We can also pass in a variable:

```javascript
let name = 'dogecoin';
alert(`${name} is going to the moon`);
```

JavaScript also gives us a prompt function that allows us to get user input. The prompt function will return a string value (in the same way that `gets` does in Ruby). Just as in Ruby, we can assign this value to a variable. We can retrieve it's value by typing the name of the variable into the console (`ALT + COMMAND + J`), just like we could retrieve the value for a Ruby variable inside irb or pry.

So now let's put alert and prompt together in `guess_the_number.js`.

```javascript
let name = prompt("What is your name?");
alert(`Hi, ${name}!`);

let robot = prompt("Are you a robot?");
if (robot.toLowerCase() === 'yes') {
  alert(`Beep Boop Beeeep *ding*ding*ding`);
} else {
  alert(`Nice to meet you, ${name} The Human!`);
};
```

Now you're equipped to tackle the guess the number game. We'll be writing our code inside of `lib/guess_the_number.js`. When you open up `lib/index.html` inside of a web browser it will run the code that is located inside of this file. Your program should do the following:

* Generate a random number between 1 and 100
* Get the user's name
* Ask the user to enter a number
* If the number equals the random number let the user know that they've won, other wise let them know that they lost

{% show_hint %}
To generate a random number we can use the `Math.random()` method that JavaScript gives us. But because we want it to be a whole number, rather than one with decimal points, we'll also need to use `Math.floor()` To return a random whole number between 1 and 10 we could do the following:
```
Math.floor((Math.random() * 10) + 1);
```
{% endshow_hint %}
