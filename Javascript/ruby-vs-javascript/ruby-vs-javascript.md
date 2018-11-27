### Introduction

JavaScript is a core technology of the web, which is often used to add
interactivity to web pages. In this article we provide a brief overview of the JavaScript programming language and how it compares to the Ruby programming language.

### Learning Goals

* Highlight some JavaScript features and how they compare to Ruby.

### Set Up Instructions

Coding along is a great way to reinforce the concepts in this article. Let's run the following in the terminal from your challenges folder to get the files we need:
```
 $ et get ruby-vs-javascript
 $ cd ruby-vs-javascript
 $ atom .
 ```
 You should see these two files: `index.html`, which will contain a minimal HTML context, and `sample.js`, which is where you will put all of your javascript code.

If you take a peek at `index.html` in atom you'll notice a `<script>` tag in the body of the file that looks like this:
```
<script src="sample.js"></script>
```
This is what will load the separate JavaScript file, `sample.js`.

In the terminal, from your `ruby-vs-javascript` directory, run `open index.html`. This will open the html file in Google Chrome and you should see a blank HTML web page. Now, we need to open up the javascript console. In in Google Chrome you can use the keyboard shortcut `cmd+option+j` or go to View > Developer > JavaScript Console. To see your javascript code run after you've added it to `sample.js`, just refresh the web page (the keyboard shortcut is `cmd+shift+r`).

Try running the example code below within the `sample.js` file and verify the output in your browser's web console by refreshing the page after you add each example.

#### Variables

In Ruby, you can create a new variable by assigning to it:

```ruby
a = 1
b = 2

c = a + b
puts "The sum of #{a} and #{b} is #{c}"
```

In JavaScript, use the **let** keyword to define a new variable in the current scope:

```javascript
let a = 1;
let b = 2;

let c = a + b;
console.log(`The sum of ${a} and ${b} is ${c}`);
// In javascript we use backtics, not quotes, when doing string interpolation
```

It is possible to leave off the _let_ keyword for a new variable but it places it in the _global scope_, which we want to avoid whenever possible, especially because we could wind up overwriting existing variables.

#### Conditionals

In Ruby, you can choose multiple paths using an `if..else` statement:

```ruby
if age >= 21
  beverage = "Gin & Tonic"
else
  beverage = "Shirley Temple"
end
```

In JavaScript, parentheses are required around the conditional expression and brackets are used to delimit the blocks of code to run:

```javascript
if (age >= 21) {
  let beverage = "Gin & Tonic";
} else {
  let beverage = "Shirley Temple";
}
```

JavaScript also supports **while** and **for** statements for looping (which we'll discuss shortly in the context of Arrays).

#### Data Types

JavaScript defines several primitive data types similar to Ruby. One difference in JavaScript is that there is only a single **Number** data type: there is no distinction between integers and floats and you do not need to convert between them.

For example, dividing two integers in Ruby will truncate the remainder:

```ruby
quotient = 4 / 3
puts "The quotient of 4 / 3 is #{quotient}"
# => The quotient of 4 / 3 is 1
```

JavaScript will handle converting to a Float automatically:

```javascript
let quotient = 4 / 3;
console.log(`The quotient of 4 / 3 is ${quotient}`);
// The quotient of 4 / 3 is 1.3333333333333333
```

#### Functions

In Ruby, we can encapsulate a chunk of code in a method and assign it a name:

```ruby
def add(a, b)
  a + b
end

sum = add(1, 2)
puts "The sum of 1 and 2 is #{sum}"
```

In JavaScript, we define **functions** instead:

```javascript
let add = (a, b) => {
  return a + b;
}

let sum = add(1, 2);
console.log(`The sum of 1 and 2 is ${sum}`);
```

Unlike Ruby, a function needs to explicitly define the return value using the **return** keyword, even if it is the last expression of the function body.

Otherwise, the function will return the special value `undefined`, regardless of what the last expression was.

#### Arrays

In Ruby, you can define an Array using the `[]` syntax and iterate over one using `each`:

```ruby
numbers = [3, 2, 6]

numbers.each do |number|
  puts number
end
```

In JavaScript, it is common to iterate over an array using the **for** loop, or the **forEach** method:

```javascript
let numbers = [3, 2, 6];

for (let i = 0; i < numbers.length; i++) {
  console.log(numbers[i]);
}

numbers.forEach((number) => {
  console.log(number);
})
```

You can also use a `while` loop to perform an action until some condition is met!

```javascript
let n = 0;
while (n < 5) {
  console.log(n);
  n++;
}
```

More info on Arrays can be found,
 [here](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array).


#### Semicolons

JavaScript does not _require_ semicolons at the end of every statement but it is recommended to include them. If semicolons are omitted, the JavaScript interpreter will insert them using a set of [rules in the standard](http://bclary.com/2004/11/07/#a-7.9.1). While this will work fine most of the time, it can also introduce subtle bugs if the interpreter is inserting semicolons in an unexpected place.

#### Debugging

There are two common strategies for debugging JavaScript:

* `console.log` is a function that is similar to `puts` in Ruby. It will print a given string to the web development console and doesn't affect the HTML on the page.

* `debugger` is a keyword in JavaScript that behaves similarly to `binding.pry` in Ruby (when using the _pry_ gem). When the interpreter reaches the `debugger` keyword it will pause execution and allow you to inspect any variables or run arbitrary code at that point in the script. You can then press 'play' to resume execution. Some browsers will _ignore_ the `debugger` keyword unless the web developer console is already open.

### External Resources

* [Eloquent JavaScript](http://eloquentjavascript.net/). An excellent resource for learning JavaScript. Reading through Chapters 1-4 would be of significant value to understanding JavaScript syntax.
