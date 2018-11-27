puts "What time are you gonna leave?"
time = gets.chomp.to_f

train_schedule = [2.0, 5.0, 7.5, 8.5, 9.0, 10.0, 11.5, 13.5, 14.5, 17.0, 18.0, 19.0, 24.0]

index = 0
continue = true

while continue
  if time != 0 && time < 25.0
    if train_schedule[index] > time
      depart_time = train_schedule[index]
      continue = false
    end
  else
    puts "Huh?"
    time = gets.chomp.to_f
    index -= 1
  end
  index += 1
end

puts "Take Train ##{index} at #{depart_time}."

if index == 13
  puts "\nDON'T STOP BELIEVIN'\n\nJust a small town girl\nLiving in a lonely world\nShe took the midnight train going anywhere\nJust a city boy\nBorn and raised in South Detroit\nHe took the midnight train going anywhere\n\nA singer in a smoky room\nA smell of wine and cheap perfume\nFor a smile they can share the night\nIt goes on and on and on and on\n\nStrangers waiting, up and down the boulevard\nTheir shadows searching in the night\nStreetlights people, living just to find emotion\nHiding, somewhere in the night."
end
