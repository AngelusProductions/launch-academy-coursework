bottles_of_beer = 99

while bottles_of_beer > 1 do
  print "\n#{bottles_of_beer} bottles of beer on the wall, #{bottles_of_beer} bottles of beer"

  if bottles_of_beer % 10 == 0
    print "!"
  else
    print "."
  end

  bottles_of_beer -= 1
  puts "\nTake one down and pass it around, #{bottles_of_beer} bottles of beer on the wall."
end

puts "\n#{bottles_of_beer} bottle of beer on the wall, #{bottles_of_beer} bottle of beer.\n" +
     "Take one down and pass it around, no more bottles of beer on the wall."

puts "\nNo more bottles of beer on the wall, no more bottles of beer!\n" +
     "Go to the store and buy some more, then find a rehab because you have a serious problem."
