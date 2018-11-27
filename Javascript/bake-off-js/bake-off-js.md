#### Setup
```
$ et get bake-off-js
$ cd bake-off-js
$ open index.html
```

If you've never seen [The Great British Bake Off](https://www.buzzfeed.com/marietelling/23-reasons-why-you-should-watch-the-great-british-bake-off?utm_term=.nvkV7lM40#.tdd70reNJ), you should stop punishing yourself right now on and go watch it on Netflix. Known for it's great bakes and double-entendres, the show if full of wonderful food and people alike. Each week the contestants are asked to each bake a signature bake that ascribes to a specific theme. Cakes for week 1, Biscuits (the British cookie type) for week 2, and Bread for week 3.

Here's an array of the bakers:
```JavaScript
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
```

And here is a list of their bakes:
```JavaScript
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
```
As we can see `signatureBakes` is an nest array data structure. Each inner array is a list of what the baker with the corresponding array index baked. So for example, in the `bakers` array Chetna is located at index `0`. If we look at the array in `signatureBakes` that is at the `0` index, we can see that she baked the Cardamom, Pistachio and Coffee Swiss Roll, the Fenugreek and Carom Crackers, and the Onion and Pine Nut Rolls.

The index of the bake corresponds to the week it was baked. So for example for week 1 Chetna baked Cardamom, Pistachio and Coffee Swiss Roll, which is at the `0` index of her array of bakes.

**To answer the questions below you will need to create functions that take arguments.** You should not hard code anything. Make sure your formatting matches the examples.

1. The winner of week 2 baked Rosemary Seeded Crackers. Who was the winner? Create a function called `theBaker` that takes the name of a bake as an argument and returns the name of the person who baked it.

2. What did Nancy bake in week 1 What about Richard in week 3? Create a function called `nameThatBake` that takes 2 arguments, the first argument being the number of the week of the bake, and the second argument being the name of the baker.

3. What did everyone bake in week 1? What about week 3? Please give me each name and what they baked in a sentence like so:
```
Bobby baked a Persimmon Swiss Roll.
```
Create a function called `weekBakes` that takes 1 argument, the week number of the contest.

4. How many bakes include the word Lemon in the title. What are their names and who baked them? What about bakes with Rosemary in the title? Remember it's possible it could be lower cased in the title.  Create a function called `bakesWith` that takes 1 argument, the word you want to check for in the titles of the bakes. Output should be formatted like so:
```
There are 700 bakes with the word Lemon in the title.
 1. Bobby baked the Lemon Tart with Hot Sauce
 2. Madison baked the Lemon Toffee Pudding.
etc etc etc
```
5. a. Is there a contestant named Martha? What about a contestant named Tony? Create a function called `doTheyExist` that tells me if they were in the contest or not. Format of the output should be
  ```
  Yes Bobby was a contestant
  ```
  or
  ```
  No Bobby was not a contest
  ```

 b. If Martha and Tony do exist what did they bake in week 3? For this question you'll want to update your nameThatBake function so that in the event that we give it a name that is not in the list of bakers your output should tell us that they are not in the program and that they baked nothing.

6. Add your name to the bakers array and add an array of 3 bakes to the signatureBakes array. You'll need to create a `addABaker` function which should take 2 arguments, a name and an array with 3 bakes.

7. Create a function called `printBakeSummary` that returns each baker with their bakes listed below. The function should take 2 arguments, the first the array of bakers, the second the nested array of bakes. The output should be formatted like so:
```
Bobby
Week 1: Lemon Swiss Roll with Hot Sauce
Week 2: Lemon Crackers
Week 3. Lemon Bread with Blue Cheese
Susan
Week 1: Hot Dog Swiss Roll
etc etc etc
```
