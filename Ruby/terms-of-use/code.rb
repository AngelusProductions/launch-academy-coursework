def disclaimer
  puts "          * * * * * * * * * * DISCLAIMER * * * * * * * * * *\n" +
  "        The universe is a chaotic world of ever-increasing entropy.\n" +
  "To call the probability of your plans going to shit 'infinite' is an understatement.\n" +
  "    Nothing is certain. Perfection is a lie. Don't count on this code working.\n" +
  "                Will you embrace the inevitable? (y/n)\n" +
  "          * * * * * * * * * * * * * * * * * * * * * * * * * *"
end

accept = "n"

until accept.downcase == "y"
  disclaimer
  accept = gets.chomp
end

puts "\n2 + 2 = #{rand(6)}\n\n"
