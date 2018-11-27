# YOUR CODE GOES HERE


puts "Hello! What's your name?"
name = gets.chomp
puts "Hi " + name + ". How many adult tickets?"
num_of_adult_tix = gets.chomp
puts "Okay, great. And any child tickets?"
num_of_child_tix = gets.chomp

if num_of_adult_tix == 0
  num_of_adult_tix = "No"
end

if num_of_child_tix == 0
  num_of_child_tix = "no"
end

puts "Alright. #{num_of_adult_tix} adult tickets and #{num_of_child_tix} child tickets. Thanks, next!"

hot_dog = 1.27
hamburger = 4.17
funnel_cake = 3.79
ice_cream_sandwich = 0.75

puts "Two hamburgers and two ice cream sandwiches is #{2 * hamburger + 2 * ice_cream_sandwich}."
puts "Eight funnel cakes and a hotdog is #{8 * funnel_cake + hot_dog}."
puts "3 of everything is #{3 * hot_dog + 3 * hamburger + 3 * funnel_cake + 3 * ice_cream_sandwich}."
