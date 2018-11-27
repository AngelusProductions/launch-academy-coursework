Let's stop and grab some lunch between holes nine and ten!

Here's the menu:

```no-highlight
Hamburger $4.00
Hot Dog $3.00
Fries $2.00
Chips $1.00
Water $1.25
Soda $1.50
```

Write a program that takes your order and gives you the total cost.

Sample Output:

```no-highlight
Welcome to Goodburger, home of the Goodburger! Can I take your order?
#> Hamburger,Fries,Chips
Thanks! Your total is $7.00. Have a nice day!
```

As an extra challenge, be sure to:

(1) Normalize your data. This means that if you are expecting each word to start with a capital letter, you should update the user input that your program receives so that the formatting matches. That way if a user enters `chips` it won't return an error because the user forgot to capitalize the first letter of the item they want.  

(2) Handle for an invalid entry. So if the user actually enters something that isn't on the menu like `Buffalo Wings` it tells the user that you don't carry that item and ask them for their order.  

```no-highlight
Welcome to Goodburger, home of the Goodburger! Can I take your order?
#> Hamburger, Buffalo Wings, Chips
Sorry! We don't have 'Buffalo Wings' on the menu.
Welcome to Goodburger, home of the Goodburger! Can I take your order?
#> Hamburger, chips
Thanks! Your total is $5.00. Have a nice day!
```

{% show_solution %}
Without normalizing our data or checking for bad entry:

```ruby
menu = {
  "Hamburger" => 400,
  "Hot Dog" => 300,
  "Fries" => 200,
  "Chips" => 100,
  "Water" => 125,
  "Soda" => 150
}

items = []
puts "Welcome to Goodburger, home of the Goodburger! Can I take your order?
"
order = gets.chomp
items = order.split(", ")

total = 0
items.each do |item|
  total += menu[item]
end

puts "Thanks! Your total is $#{'%.2f' % (total / 100.to_f)}. Have a nice day!"
```

Normalizing our data and checking for bad user input:
```ruby
menu = {
  "Hamburger" => 400,
  "Hot Dog" => 300,
  "Fries" => 200,
  "Chips" => 100,
  "Water" => 125,
  "Soda" => 150
}

items_not_found = nil
items = []
while items_not_found.nil? || !items_not_found.empty?
  puts "Welcome to Goodburger, home of the Goodburger! Can I take your order?"

  order = gets.chomp
  items = order.split(", ")

  items.map! do |item|
    item.split(" ").map { |word| word.capitalize! }.join(" ")
  end

  items.reject! { |item| item.empty? }

  items_not_found = items - menu.keys

  if !items_not_found.empty?
    items_not_found.each do |item|
      puts "Sorry! We don't have '#{item}' on the menu."
    end
  end
end

total = 0
items.each do |item|
  total += menu[item]
end

puts "Thanks! Your total is $#{'%.2f' % (total / 100.to_f)}. Have a nice day!"
```
{% endshow_solution %}
