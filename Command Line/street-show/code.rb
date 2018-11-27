# YOUR CODE GOES HERE

knife_juggling = 11.8
torch_juggling = 16.5
hand_balancing = 3.00
human_blockhead = 1.18
total = knife_juggling + torch_juggling + hand_balancing + human_blockhead

puts "My total is " + format("%.2f", total) + "."

average = total / 4

puts "My average is " + format("%.2f", average) + "."

puts "\n"
puts "Now. Can I get an audience volunteer?\nAh yes, you. Tell me your name."
name = gets.chomp
puts "#{name}!? Great name. Can I get a big round of applause for #{name}?"
puts "Okay, what's your favortie number, #{name}?"
fav_number = gets.chomp
puts "#{fav_number}! Alas, so my partner and I will juggle these super sharp knives " +
  "over your head for #{fav_number} seconds. Ready?"
ready_or_not = gets.chomp

got_valid_answer = false

until got_valid_answer == true
  if ready_or_not.downcase == "yes"
    puts "Here we go!"
    got_valid_answer = true
  elsif ready_or_not.downcase == "no"
    puts "Too bad. 1, 2, 3... juggle!"
    got_valid_answer = true
  else
    puts "What?"
    ready_or_not = gets.chomp
  end
end
