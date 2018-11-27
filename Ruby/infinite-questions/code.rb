require 'pry'

answer = ""
puts "Want anything?"
answer = gets.chomp

while answer.downcase != "no" do
  puts "You sure?"
  binding.pry
  answer = gets.chomp
end

puts "OK. Word."
