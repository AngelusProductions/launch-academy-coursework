# YOUR CODE GOES HERE

puts "Rock, paper, scissors... shoot!"
your_shape = gets.chomp

unless your_shape == "r" || your_shape == "p" || your_shape == "s"
  puts "WTF?"
end

my_shape = rand(3) + 1
if my_shape == 1
  my_shape = "r"
elsif my_shape == 2
  my_shape = "p"
else
  my_shape = "s"
end

if your_shape == "r" || your_shape == "p" || your_shape == "s"
  puts "I throw a " + my_shape + "."
end

if your_shape == my_shape
  puts "Tie!"
end

if your_shape == "r" && my_shape == "s"
  puts "You win."
elsif your_shape == "r" && my_shape == "p"
  puts "I win!"
elsif your_shape == "p" && my_shape == "r"
  puts "You win."
elsif your_shape == "p" && my_shape == "s"
  puts "I win!"
elsif your_shape == "s" && my_shape == "p"
  puts "You win."
elsif your_shape == "s" && my_shape == "r"
  puts "I win!"
end
