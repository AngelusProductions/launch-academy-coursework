puts "Hey dude, what's your name?"
name = gets.chomp

item = ""
capsule = Array.new

until item == "finished"
  puts "Wanna put something in the time capsule?"
  item = gets.chomp
  if item != "finished"
    puts "How many?"
    quantity = gets.chomp
    capsule << item + " (#{quantity})"
  end
end

puts "Thanks, #{name}. Here's your stuff:"
capsule.each { |item| puts "* " + item }
