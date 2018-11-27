menu = {
  "hamburger" => 4.00,
  "hot dog" => 3.00,
  "fries" => 2.00,
  "chips" => 1.00,
  "water" => 1.25,
  "soda" => 1.50
}
order = ""
total = 0.00

puts "Ughhh... welcome to Bad Burger. Home of the Bad Burger. Order."

until order == "yes"

  order = gets.chomp.downcase

  if menu.keys.include?(order)
    total += menu[order]
    puts "Uh huh. That it?"

  elsif order == "yes"
    break

  else
    puts "Hey dummy, trouble reading? " +
    "#{order.capitalize} ain't on the menu."
  end

end

puts "OK give me $#{"%.2f" % total} or I call the cops."

current[0]["Arlette Hauck"]["children"][0]
