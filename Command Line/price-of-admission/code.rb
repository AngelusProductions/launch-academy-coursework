#Your code goes here!

adult_price = 12.80
child_price = 4.00
num_of_adults = 4
num_of_children = 2

total_cost = num_of_adults * adult_price + num_of_children * child_price
puts total_cost

cost_per_adult = total_cost / num_of_adults
puts cost_per_adult.round(2)
