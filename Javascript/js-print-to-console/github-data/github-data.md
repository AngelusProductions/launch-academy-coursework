## Introduction

In this challenge, you will answer questions about repositories from [LaunchAcademy's GitHub account](https://api.github.com/orgs/LaunchAcademy/repos).

## Learning Goals

* Navigate a data structure and answer questions about it.

## Getting Started

```no-highlight
$ cd ~/challenges
$ et get github-data
$ cd github-data
```

## Instructions

We have provided the data needed in the `data.js` file. Notice how the data is "imported" at the top of the `github-data.js` file.

```javascript
let data = require('./data');
```

The `data` variable in `github-data.js` will contain the array defined in the `data.js` file.

Write code in `github-data.js` using the `data` array to answer the following questions.

1. How many repositories does LaunchAcademy own?
2. Which repository has the largest size?
3. What is the most-recently created repository?
4. Use the `.map` function to create an array of repository descriptions. The result of the `.map` function should be an array of strings that look like this:

```javascript
[
  'MailChimp functionality for those who like tests and HTTParty',
  'Rails Template',
  'Environment specific robots.txt for your Rails Apps',
  'No Description Provided',
  ...
]
```

Make sure to `console.log()` this new array after its creation is complete.

5. Use the .`map` function once again to create a 'summary' of each repository's most important information. We want to know the name of the repository, who created it (the owner), and how many watchers there are. The resultant array should once again be an array of strings that look like this:

```javascript
[
  'Repo name is monkey_party, 4 watchers, owner is LaunchAcademy',
  'Repo name is booster, 44 watchers, owner is LaunchAcademy',
  'Repo name is roboto, 72 watchers, owner is LaunchAcademy',
  ...
]
```

Make sure to `console.log()` this new array after its creation is complete.
