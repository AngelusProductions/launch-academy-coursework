voters = [{
  "First Name" => "Jon",
  "Last Name" => "Smith",
  "Age" => 25,
  "Income" => 50000,
  "Household Size" => 1,
  "Gender" => "Male",
  "Education" => "College"
},{
  "First Name" => "Jane",
  "Last Name" => "Davies",
  "Age" => 30,
  "Income" => 60000,
  "Household Size" => 3,
  "Gender" => "Female",
  "Education" => "High School"
},{
  "First Name" => "Sam",
  "Last Name" => "Farelly",
  "Age" => 32,
  "Income" => 80000,
  "Household Size" => 2,
  "Gender" => "Unspecified",
  "Education" => "College"
},{
  "First Name" => "Joan",
  "Last Name" => "Favreau",
  "Age" => 35,
  "Income" => 65000,
  "Household Size" => 4,
  "Gender" => "Female",
  "Education" => "College"
},{
  "First Name" => "Sam",
  "Last Name" => "McNulty",
  "Age" => 38,
  "Income" => 63000,
  "Household Size" => 3,
  "Gender" => "Male",
  "Education" => "College"
},{
  "First Name" => "Mark",
  "Last Name" => "Minahan",
  "Age" => 48,
  "Income" => 78000,
  "Household Size" => 5,
  "Gender" => "Male",
  "Education" => "High School"
},{
  "First Name" => "Susan",
  "Last Name" => "Umani",
  "Age" => 45,
  "Income" => 75000,
  "Household Size" => 2,
  "Gender" => "Female",
  "Education" => "College"
},{
  "First Name" => "Bill",
  "Last Name" => "Perault",
  "Age" => 24,
  "Income" => 45000,
  "Household Size" => 1,
  "Gender" => "Male",
  "Education" => "Did Not Complete High School"
},{
  "First Name" => "Doug",
  "Last Name" => "Stamper",
  "Age" => 45,
  "Income" => 75000,
  "Household Size" => 1,
  "Gender" => "Male",
  "Education" => "College"
},{
  "First Name" => "Francis",
  "Last Name" => "Underwood",
  "Age" => 52,
  "Income" => 100000,
  "Household Size" => 2,
  "Gender" => "Male",
  "Education" => "College"
}]

sum_ages = 0.00
sum_income = 0.00
sum_household_size = 0.00

female = 0
male = 0
unspecified = 0

college = 0
high_school = 0
no_high_school = 0

voters.each do |voter|

  sum_ages += voter["Age"]
  sum_income += voter["Income"]
  sum_household_size += voter["Household Size"]

  if voter["Gender"] == "Female"
    female += 1
  elsif voter["Gender"] == "Male"
    male += 1
  else
    unspecified += 1
  end

  if voter["Education"] == "College"
    college += 1
  elsif voter["Education"] == "High School"
    high_school += 1
  else
    no_high_school += 1
  end

end

puts "Average Age = #{sum_ages / voters.length}"
puts "Average Income = $#{"%.2f" % (sum_income / voters.length)}"
puts "Average Household Size = #{sum_household_size / voters.length}"
puts "Female = % #{100 * female / voters.length}"
puts "Male = % #{100 * male / voters.length}"
puts "Unspecified = % #{100 * unspecified / voters.length}"
puts "College Grads: % #{100 * college / voters.length}"
puts "High School Grads: % #{100 * high_school / voters.length}"
puts "Did Not Finish High School: % #{100 * no_high_school / voters.length}"
