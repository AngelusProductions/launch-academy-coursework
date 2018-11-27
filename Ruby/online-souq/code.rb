puts "What's your name, brother?"
name = gets.chomp

souq = [
  "old paperback book",
  "potato",
  "red onion",
  "dried lemon",
  "frankincense",
  "medicinal herbs",
  "saffron",
  "glass spice jar",
  "red fabric",
  "orange fabric",
  "handicrafts",
  "small persian rug",
  "large persian rug",
  "xl persian rug"
]

puts "Sup, #{name}. What would you like?"

desire = ""
souq_cart = Array.new
souq_sorry = Array.new

while desire != "finished" do
  desire = gets.chomp.downcase
  if souq.include?(desire)
    souq_cart.push(desire)
    puts "What else?"
  elsif souq.include?(desire) == false && desire != "finished"
    puts "Oops, we don't have that. Anything else?"
    souq_sorry.push(desire)
  end
end

puts "\nHere you go, #{name}:\n"

souq_cart.each do |item|
  puts "* #{item}"
end

puts "\nBTW, We didn't have these-- but we'll work on it:"

souq_sorry.each do |item|
  puts "* #{item}"
end
