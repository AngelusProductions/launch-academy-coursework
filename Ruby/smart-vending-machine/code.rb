puts "Hey, I'm a robot. Talk to me and get food.\nWhat you want?"
item = gets.chomp
puts "Sweet. How many?"
quantity = gets.chomp
puts ""

if quantity.index("tons").nil? == false
  quantity = 14
end

quantity.to_i.times do
  puts item
end

puts "\nThere you go, bud. Do return."
