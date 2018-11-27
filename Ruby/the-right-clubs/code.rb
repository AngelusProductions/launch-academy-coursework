REQUIRED_BAG_SIZE = 10

available_clubs = [
  :two_iron,
  :three_iron,
  :four_iron,
  :five_iron,
  :six_iron,
  :seven_iron,
  :eight_iron,
  :nine_iron,
  :pitching_wedge,
  :sand_wedge,
  :driver,
  :three_wood,
  :five_wood,
  :seven_wood,
  :putter
]

index = 0
golf_bag = Array.new

puts "\n"

while index < REQUIRED_BAG_SIZE do

  puts "Hit ENTER for Club #{index + 1}:"
  enter = gets.chomp

  club = available_clubs.sample
  golf_bag << club
  available_clubs.delete(club)

  club = club.to_s.gsub(/_/, ' ' ).split
  print "#{index + 1}) "
  club.each { |word| print "#{word[0].upcase + word[1..-1] + " "}" }

  puts "\n\n"

  index += 1

end

puts "\n   ===\n\nGOLF BAG:\n\n"

golf_bag.each do |club|
  club = club.to_s.gsub(/_/, ' ' ).split
  club.each { |word| print "#{word[0].upcase + word[1..-1]} " }
  puts "\n"
end

puts"\n"

[:driver, :pitching_wedge, :putter].each do |club|
  if golf_bag.include?(club) == false
      puts "WARNING: NO " + club.to_s.gsub(/_/, ' ' ).upcase
  end
end

puts "\n"
