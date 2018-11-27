club_advisor = { driver: 200, four_wood: 180, five_wood: 170, two_iron: 170, three_iron: 160, four_iron: 150, five_iron: 140, six_iron: 130, seven_iron: 120, eight_iron: 110, nine_iron: 95, pitching_wedge: 80, sand_wedge: 20, putter: 0 }

puts "How many feet from the hole are you?"
distance = gets.chomp.to_i

club_advisor.each do |key, value|
  if value <= distance
    print "\nUse your " + key.to_s.gsub("_", " ").split.map(&:capitalize).join(' ')
      if key == :five_wood
        print " or Two Iron"
      end
    print ".\n"
    break
  end
end
