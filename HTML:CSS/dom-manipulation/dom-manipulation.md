### Introduction

What makes modern web applications so interesting and fun to use? Apps like Facebook, Twitter, and Google all combine **client side technologies** that can help a user experience feel so snappy! As developers, recall that we use HTML to define the structure of our page, CSS to define the aesthetics of our page, and programming to define the functions / interactivity of webpages.

For example, When you're on Facebook and you click on a photo, or when Google suggests keywords for you as you type a search query, the resulting dialog is triggered by **JavaScript**. The developers of those applications have written JavaScript to respond to your actions, and change the state of the web page as you work with it. Up until this point, we've built *static* web pages, or pages that do not change, and we've built simple programs exclusively with **JavaScript**. Web development gets significantly more interesting and functional when we can combine all three technologies! When we combine the powers of HTML, CSS, and JavaScript together to affect changes to our web pages, we're performing what's known as DOM Manipulation. I know what you're thinking! Cue the Captain Planet references.

### Learning Goals

* Learn about the **Document Object Model** (**DOM**) and the `document` variable.
* Select elements in the page with the `document.getElementById()` method.
* Alter elements in the page via the `innerHTML` property.

### Wait, What does 'client side' Really Mean?

Your web browser, whether it's Chrome, Firefox, or [that other one](https://www.reddit.com/r/OutOfTheLoop/comments/1rew5e/why_do_people_hate_on_internet_explorer_so_much/), is an application that is locally installed on your machine. It's primarily designed to connect to the Internet and download web pages. Once everything is successfully downloaded, the browser software then works to interpret the downloaded HTML, CSS, and JavaScript to render a user friendly web page for you to interact with. We call these three technologies "client side" or "frontend" because they are processed on the web **client**, or browser. The browser itself is programmed to read in the HTML and CSS to show a web page, and it also includes a JavaScript interpreter to run any JavaScript you have included with the page.

Because JavaScript runs locally on the machine of the web browser, it performs operations quickly. If we use it properly, we don't have to reload our web pages or contact the server again to to make changes to the structure and styling of the rendered document. So, we can use it to provide users with responsive user experiences. For the purposes of web development, we frequently use JavaScript to manipulate the HTML and styling of our web page through an abstraction called the **D**ocument **O**bject **M**odel (or **DOM**, for short).

### So How Does One Manipulate the DOM?

When we use JavaScript to affect change on a downloaded web page, we are performing DOM manipulation.

Head to Google in your Chrome browser. Once there, run the example below in your JavaScript chrome console:

```javascript
let body = document.getElementsByTagName('body')[0]
body.innerHTML = 'Hello from JavaScript and DOM Manipulation'
```

If you executed the lines above properly, the Google user experience should almost instantly disappear, and you should only see the text 'Hello from JavaScript and DOM Manipulation'. Congratulations! You're using JavaScript and the `document` keyword to make changes to the loaded webpage.

### The Document Object Model

Just like we use arrays to represent sequential sets of data, the Document Object Model is a programmatic representation of our loaded HTML webpage. In a web development context, we can use the `document` keyword to explore that representation. That object also has functions for accessing parts of the webpage easier for the developer.

The code in the example above calls the `getElementsByTagName()` function of the `document` object (the entire page and all the "stuff" on it is enclosed in this parent object) and asks it to grab all the body tags on the page. We use `[0]` array notation to tell JavaScript "we want the first body tag you find". We assign that object, or _element_, to the `body` variable.

We can then set the contents of the `<body>` tag by assigning the `innerHTML` property.

Let's play around with the elements on the page! Try typing `document` into the JavaScript console. You can expand the properties of this object by clicking the arrow to the left of the returned object.

In the context of DOM manipulation, the `document` is one of a few JavaScript data types we should familiarize ourselves with:

## JavaScript DOM Data Types

* document - An object-oriented representation of the document we are looking at, from the starting `<!DOCTYPE html>` tag element, all the way to the closing `</html>` tag element.
* element - Typically, a single HTML tag and its contents, such as `<title>Google</title>`.
* nodeList - A collection of elements. We will get a nodeList back from a document query that has multiple matches, such as selecting all the `div` (or, in the example above, `<p>`) elements in a page.
* attribute - This is the same as an attribute on an HTML tag, such as `href="http://google.com/"`.

## Adding an Element

Now that we know what the DOM is, we can make changes to it on the fly using JavaScript. For example,with the `createElement` and `appendChild` functions, we can add content to the page. Here's a small script to get you started:

```javascript
let paragraph = document.createElement('p')
let text = document.createTextNode('Oh hey, I\'m learning JavaScript at Launch Academy!')
paragraph.appendChild(text)

let body = document.getElementsByTagName('body')[0]
body.appendChild(paragraph)
```

What's happening in this code snippet? Well, in order to dynamically add content to the page, we must first create a paragraph element, then create a `textNode`, append the text node to the paragraph, and finally append the paragraph to some location in the page. In this case, we just added it to the bottom of the page. Scroll down and take a look!

Since this is a bit of a complex maneuver, it might be nice to be able to reuse this code later so we don't have to re-write it every time we want to add something to the page. Just like the previous JavaScript we've learned, we can save such a routine in a function.

```javascript
let appendElement = (target, tag, text) => {
  let element = document.createElement(tag)
  let textNode = document.createTextNode(text)
  element.appendChild(textNode)
  target.appendChild(element)
}

let body = document.getElementsByTagName("body")[0]
appendElement(body, "p", "Make it Dynamic!")
```

Now we can call our `appendElement` function to create any HMTL element that we want to create with the text that should be contained in it, and then append that brand new element to the existing DOM.

## Replacing Contents of an Element

Since we are working with an HTML document object, it understands HTML. We can simply append a string of HTML to the document if we like.

```javascript
let body = document.getElementsByTagName("body")[0]
let newParagraph = '<blockquote>There is more than one way to do it - Tim Toady</blockquote>'
body.innerHTML += newParagraph
```

## Selecting Elements

In the above examples, we used `getElementsByTagName` to collect the elements we wanted to modify. Two other common ways to select elements make use of their `class` or `id` to "choose" them for modification. For example:

```javascript
let someDiv = document.getElementById('oh-hai')
let someOtherDivs = document.getElementsByClassName('whats-up')
```

This example will interact with the HTML elements below. Recall that an HTML id should be used to uniquely identify a single element so that you can grab it with JavaScript, while classes are more commonly used in CSS to group and style particular elements in kind. Grabbing an element by id is the most efficient way to select it programmatically.

*Tip: Note that whenever you are using a function that collects multiple items (i.e. `getElementsByTagName` or `getElementsByClassName`), they will be collected and returned in an array.*

```html
<div id="oh-hai">Hi, I'm a div with an id of "oh-hai"!</div>

<div class="whats-up">Hi, I'm a div with a class of "whats-up"!</div>
<div class="whats-up">Hi, I'm another div with a class of "whats-up"!</div>
```

## Dynamic Styling

Perhaps we don't like the designer's choice of font. Changing it with JavaScript from the console is easy.

```javascript
let body = document.getElementsByTagName("body")[0]
body.style.fontFamily = '"Andale Mono",AndaleMono,monospace'
```

With the `element.style` function, we can change any and all CSS properties of the page. Now, usually we will set these kinds of attributes with CSS in our stylesheet, like so:

```css
body {
  font-family: "Andale Mono", AndaleMono, monospace
}
```

However, sometimes we'll want to change the way the page looks based on what the user does. JavaScript lets us do that, essentially writing new CSS on the fly without having to contact the server for an updated stylesheet.

*Tip: Note that any keywords that contain a dash would need to be translated to camelCase when utilizing `element.style`. For example, to set the `background-color` of the body, we would need to set `body.style.backgroundColor = "grey"`.*


## Getting and Setting Element Attributes

We can also get and set attributes on elements. Maybe you're not that crazy about using Google and you would rather substitute the search engine on the page with another one.

```html
<!-- html -->
<a id="search-link" href="http://google.com/">Search</a>
```

```javascript
// js
let link = document.getElementById('search-link')
let url = link.getAttribute('href')
console.log(url)
link.setAttribute('href', 'http://duckduckgo.com/')
```

In the example above, we are able to retrieve the `href` attribute of the link with the `getAttribute` function, and then we print it to the console using the `console.log()` function. Using the `setAttribute` function, we then change the `Search` link to a different search engine.

Try it yourself: <a id="search-link" href="http://google.com/">Search</a>.

## Why This is Important

As developers, JavaScript becomes most useful to us when we can use it to quickly affect changes on loaded webpages. This article really only scratches the surface of what we can do with DOM manipulation, as things start to get really interesting when we combine these operations with  responding to user behavior through the use of **events**. We'll explore that powerful combination in a future article!

## References

* The [Mozilla Developer Documentation for JS](https://developer.mozilla.org/en-US/docs/Web/JavaScript) is exhaustive and contains many excellent articles. It's a great place to go looking for functions that do what you want or to learn more about a particular topic.
* [Introduction to the Document Object Model](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction)
* [The Basics of JavaScript DOM Manipulation](http://callmenick.com/post/basics-javascript-dom-manipulation)
