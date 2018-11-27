vote_results = []
4.times do |precinct_index|
  vote_results[precinct_index] = []
  3.times do |candidate_index|
    vote_results[precinct_index][candidate_index] = rand(20..500)
  end
end

candidates = [
  'Mary Sue',
  'Sally Jane',
  'Billy Joe'
]

vote_results.each_with_index do |precinct_results, precinct_index|
  puts "**In precinct #{precinct_index + 1}:**"

  candidates.each_with_index do |candidate, candidate_index|
    puts "* #{candidate} got #{vote_results[precinct_index][candidate_index]} votes"
  end

  puts ""
end

p1_votes = 0
vote_results[0].each {|result| p1_votes += result}
puts p1_votes.to_s + " votes in Precinct 1"

p3_max = 0
p3_winner = ""
vote_results[3].each_with_index do |candidate, candidate_index|
  if vote_results[3][candidate_index] > p3_max
    p3_max = vote_results[3][candidate_index]
    p3_winner = candidates[candidate_index]
  end
end

puts p3_winner + " won Precinct 4"

mary_sue_votes = 0
sally_jane_votes = 0
billy_joe_votes = 0

vote_results.each do |tally|
  mary_sue_votes += tally[0]
  sally_jane_votes += tally[1]
  billy_joe_votes += tally[2]
end

puts "\n" + mary_sue_votes.to_s + " votes for Mary Sue"
puts sally_jane_votes.to_s + " votes for Sally Jane"
puts billy_joe_votes.to_s + " votes for Billy Joe"

vote_counts = {
  "Mary Sue" => mary_sue_votes,
  "Sally Jane" => sally_jane_votes,
  "Billy Joe" => billy_joe_votes
}

puts "\nWINNER: " + vote_counts.invert.sort[-1][1].to_s
