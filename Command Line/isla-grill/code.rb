# YOUR CODE GOES HERE

dinner_total = 178
dinner_total = dinner_total.to_f
tip = 20
tip = tip.to_f
tip_total = tip * dinner_total / 100

puts "You should tip $#{tip_total}."
puts "The total bill is $#{dinner_total + tip_total}."
