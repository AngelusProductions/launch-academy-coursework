# YOUR CODE GOES HERE

items_we_have = "chips popcorn skittles clif-bar mentos gum cheetos m&ms"
puts "What item?"
item = gets.chomp
item_index = items_we_have.index(item)
if item_index.nil?
  puts "No such item"
else
  puts "Item index: #{item_index}."
end
