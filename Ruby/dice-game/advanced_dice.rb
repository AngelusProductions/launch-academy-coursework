continue = "yes"
puts "How many sides?"
sides = gets.chomp.to_i
puts "How many rolls?"
rolls = gets.chomp.to_i

until continue.downcase == "no"
  if continue == "yes"
    puts ""
    rolls.times do
      dice_1 = rand(sides) + 1
      dice_2 = rand(sides) + 1
      puts "You rolled a #{dice_1} and a #{dice_2}." +
      " Total: #{dice_1 + dice_2}"
    end
  end

  print "\nRoll again? (yes/no): "
  continue = gets.chomp

  if continue.downcase != "yes" && continue.downcase != "no"
    puts "\nCome again?"
  end

end
