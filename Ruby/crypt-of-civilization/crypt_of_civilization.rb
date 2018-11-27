crypt_of_civilization = Array.new

crypt_of_civilization << "Comptometer"
crypt_of_civilization << "Box of phonographic records"
crypt_of_civilization << "Plastic savings bank"
crypt_of_civilization << "set of scales"
crypt_of_civilization << "Toast-O-lator"
crypt_of_civilization << "Sample of aluminum foil"
crypt_of_civilization << "Donald Duck doll"

extra = ["Container of beer", "Lionel model train set", "Ingraham pocket watch"]

crypt_of_civilization = crypt_of_civilization + extra

puts crypt_of_civilization.length
puts crypt_of_civilization[0]
puts crypt_of_civilization[-1]
puts crypt_of_civilization[1]
puts crypt_of_civilization[2]
puts crypt_of_civilization[-2]
puts crypt_of_civilization.index("Toast-O-lator")

puts crypt_of_civilization.include?("Container of beer")
puts crypt_of_civilization.include?("Toast-O-lator")
puts crypt_of_civilization.include?("Plastic Bird")

puts crypt_of_civilization.sort
puts crypt_of_civilization.sort_by { |item| item.length }
puts crypt_of_civilization.sort { |first, second| second <=> first }

index = 0
while index <= crypt_of_civilization.length do
  puts crypt_of_civilization[index]
  index += 1
end

crypt_of_civilization.each { |item| puts item }

crypt_of_civilization.shift
crypt_of_civilization.pop
crypt_of_civilization.delete("Set of scales")
crypt_of_civilization.delete("Sample of aluminum foil")

crypt_of_civilization.each { |item| puts item }
