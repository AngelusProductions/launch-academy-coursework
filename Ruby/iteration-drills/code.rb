# For every element called "number" in the array "numbers," print out that number multiplied by 3 on a new line.
# For every element "name" in array "names" print out the length of the "name" string on a new line.
# Initiate the variabe "sum" with a value of zero. For each "number" in array "numbers," add that value to the variable "sum." When done, print "sum" on a new line.
# For each key-value pair in the hash called "hash," print the key ("name") is value ("age") year old.
# Initiate the variable "sum" with a valuenof zero. For each key ("transacton") in the has "account," add that value ("value") to the variable "sum." Print out "The value of the account is (value for "sum")"
# For every element in the hash "addresses," print the key ("name") lives on the value ("address") on a new line.

sentences.each do |word|
  print word
end

numbers.each do |phone_number|
  print phone_number if massachusetts_area_codes[area_code[phone_number]].exists?
end

numbers.each do |number|
  print number if number.odd?
end

ages.each do |name, age|
  print name + ": " + age.to_s
end

ages.each do |name, age|
  print name + ": " + age.to_s if age < 10
end

ages.each do |name, age|
  print name + ": " + age.to_s if age.even?
end

array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

sum = 0
array.each { |number| sum = sum + number}
puts sum

array.each {|number| puts number}

sum = 0
array.each do |number|
  if number.odd?
    sum = sum + number}
  end
end
puts sum

sum = 0
array.each do |number|
  if number.even?
    sum = sum + number
  end
end
puts sum

sum = 0
array.each do |number|
  if number % 5 == 0
    sum = sum + number
  end
end
puts sum

sum = 0
array.each do |number|
    sum = sum + number**2
end
puts sum

array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

array.each { |name| puts name.reverse}

characters = 0
array.each { |name| characters = characters + name.length }
puts characters

less_than_five_letters = 0
array.each do |name|
  if name.length < 5
    less_than_five_letters += 1
  end
end
puts less_than_five_letters

end_with_vowel = 0
array.each do |name|
  if name.end_with?('a', 'e', 'i', 'o', 'u')
    end_with_vowel += 1
  end
end
puts end_with_vowel

more_than_five_characters = 0
array.each do |name|
  if name.length == 5
    more_than_five_characters += 1
  end
end
puts more_than_five_characters

exactly_five_characters = 0
array.each do |name|
  if name.length ==5
    exactly_five_characters += 1
  end
end
puts exactly_five_characters
