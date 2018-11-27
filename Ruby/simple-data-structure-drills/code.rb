transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

puts "The first transaction is: #{transactions[0]}"

puts "The second transaction is: #{transactions[1]}"

puts "The fourth transaction is: #{transactions[5]}"

puts "The last transaction is: #{transactions.last}"

puts "The second from the last transaction is: #{transactions[-2]}"

puts "The fifth from the last transaction is: #{transactions[-5]}"

puts "The transaction with the index of 5 is: #{transactions[5]}"

puts "The total number of transactions is: #{transactions.size}"

positive_interactions = 0
transactions.each { |transaction| positive_interactions += 1 if transaction > 0}
puts "The total number of positive transactions is: #{positive_interactions}"

negative_interactions = 0
transactions.each { |transaction| negative_interactions += 1 if transaction < 0}
puts "The total number of negative transactions is: #{negative_interactions}"

puts "The largest withdrawal is: #{transactions.min}"

puts "The largest deposit is: #{transactions.max}"

puts "The smallest withdrawal is: #{transactions.select{ |transaction| transaction < 0}.max}"

puts "The smallest deposit is: #{transactions.select{ |transaction| transaction > 0}.min}"

total = 0
transactions.each { |transaction| total += transaction }
puts "The total value of all the transactions is: #{total}"

puts "Dr. Dre's balance is: #{239900 + total}"

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

puts "Total records: #{best_records.length}"

puts "All of the artists: #{best_records.keys.join(", ")}"

puts "All of the albums: #{best_records.values.join(", ")}"

best_records.delete("Eminem")
puts "List of artists with Eminem deleted: #{best_records.keys.join(", ")}"

best_records["Flying Lotus"] = "Cosmogramma"
puts "My favorite musician added: #{best_records.keys.join(", ")}"

puts "True or False: `Nirvana` is included: #{best_records.include?("Nirvana")}"

puts "Nirvana album changed:"
best_records["Nirvana"] = "In Utero"
best_records.each { |artist, album| puts "#{artist}: #{album}" }

puts "True or False: `Soundgarden` is included: #{best_records.include?("Soundgarden")}"

puts "Soundgarden added if it's not already there:"
best_records["Soundgarden"] = "Superunknown"
best_records.each { |artist, album| puts "#{artist}: #{album}" }

puts "key-value pairs have a key that has a length less than or equal to 6 characters:"
best_records.each do |artist, album|
  puts "#{artist}: #{album}" if artist.length <= 6
end

puts "key-value pairs have a key that has a length greater than 10 characters:"
best_records.each do |artist, album|
  puts "#{artist}: #{album}" if album.length >= 10
end
