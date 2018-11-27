require 'pry'

puts "Choose difficulty:\nEasy | Hard"
difficulty = gets.chomp

if difficulty.downcase == "easy"
  domain = 10
  puts "Guess a # between 1 and 10:"
elsif difficulty.downcase == "hard"
  domain = 20
  puts "Guess a # between 1 and 20:"
else
  puts "OK. Infinitely Hard it is."
  domain = 1000
  puts "Guess a # between 1 and 1000:"
end

answer = rand(domain.to_i) + 1
# binding.pry
guess = gets.chomp.to_i
try = 1

while guess != answer do
  puts "WRONG :(\nTRY TRY AGAIN:\n(Guess #{try + 1} is always a charm)"
  guess = gets.chomp.to_i
  try += 1
end

try_tries = "tries"

if try == 1
  try_tries = "try"
end

puts "Yup, it was #{guess}.\nAnd it only took #{try} #{try_tries}!\nWell done."
