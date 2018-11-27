
total_sales = 0.00

while total_sales < 100.00
  puts "Enter a # por favor"
  value = gets.chomp.to_f
  total_sales += value
  puts "= $#{total_sales}"
end

puts "Yippee, you hit $100.00"

multiple_of_25_over = ((total_sales - 100) / 25).to_i
multiple_of_25_over.times do
  puts "And another $25.00!"
end
