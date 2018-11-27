def average (grades)
  grades.reduce(:+).to_f / grades.length
end

def letter (grade)
  if grade >= 90
    return "A"
  elsif grade >= 80 && grade < 90
    return "B"
  elsif grade >= 70 && grade < 80
    return "C"
  elsif grade >= 60 && grade < 70
    return "D"
  elsif grade < 60
    return "F"
  end
end

student_grades = {
"Jane" => [98, 95, 88, 97, 74],
"Samantha" => [85, 93, 98, 88, 49],
"Matt" => [87, 93, 89, 97, 65]
}

puts "\n"
puts "Jane: " + letter(average(student_grades["Jane"])).to_s
puts "Samantha: " + letter(average(student_grades["Samantha"])).to_s
puts "Matt: " + letter(average(student_grades["Matt"])).to_s
puts "\n"

best_students = ["Johnny", "Jane", "Sally", "Elizabeth", "Michael"]

def rankings (students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student}"
  end
end

rankings(best_students)
