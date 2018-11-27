require "pg"
require "sinatra"
require "pry" if development? || test?

TITLES = [
  "Roasted Brussels Sprouts",
  "Fresh Brussels Sprouts Soup",
  "Brussels Sprouts with Toasted Breadcrumbs, Parmesan, and Lemon",
  "Cheesy Maple Roasted Brussels Sprouts and Broccoli with Dried Cherries",
  "Hot Cheesy Roasted Brussels Sprout Dip",
  "Pomegranate Roasted Brussels Sprouts with Red Grapes and Farro",
  "Roasted Brussels Sprout and Red Potato Salad",
  "Smoky Buttered Brussels Sprouts",
  "Sweet and Spicy Roasted Brussels Sprouts",
  "Smoky Buttered Brussels Sprouts",
  "Brussels Sprouts and Egg Salad with Hazelnuts"
]


def db_connection
  begin
    connection = PG.connect(dbname: "brussels_sprouts_recipes")
    # binding.pry
    yield(connection)
  ensure
    connection.close
  end
end


recipes = db_connection { |conn| conn.exec("SELECT * FROM recipes")}

TITLES.each do |title|
  db_connection.exec("INSERT INTO recipes (title) VALUES ($1)", [title])
end
