### Brussels Sprouts Recipe Blog with ActiveRecord

Our brussels sprouts recipe blog needs a major makeover. We have many recipes, each of which can have many comments. We need to model this blog with ActiveRecord.

### Learning Goals

* Create a multi-table application
* Explore ways to associate tables
* Use a foreign key column

### Setup

```no-highlight
$ et get ar-queries-and-associations
$ cd ar-queries-and-associations
$ bundle exec bundle
$ bundle exec rake db:create
```

### Models and Tables
* Create a `Recipe` model and associated migration. Determine the column names as you deem necessary (no need to include ingredients).
* Create a `Comment` model and associated migration. Determine the column names as you deem necessary.
* Associate the two tables so that each recipe can have multiple comments.
* Load up your pry by running `pry -r ./server.rb`. Create 5 recipes and 1-5 comments on each recipe.

### Queries
In a `README.md` file, answer the following questions:
  1. How would you return all the recipes in your database?
  * How would you return all the comments in your database?
  * How would you return the most recent recipe posted in your database?
  * How would you return all the comments of the most recent recipe in your database?
  * How would you return the most recent comment of all your comments?
  * How would you return the recipe associated with the most recent comment in your database?
  * How would you return all comments that include the string `brussels`?
