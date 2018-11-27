# YOUR CODE GOES HERE

puts "How long is your driveway?"
length = gets.chomp
length = length.to_f
puts "How wide is your driveway?"
width = gets.chomp
width = width.to_f
print "Last storm it snowed 8 inches so... "
height = 8
volume = length * width * height
volume = volume.round

if volume < 50
  print "that'll be $20."
elsif volume > 49 && volume < 150
  print "that'll be $50."
elsif volume > 149 && volume < 300
  print "that'll be $100."
else
  print "that'll be $150."
end
