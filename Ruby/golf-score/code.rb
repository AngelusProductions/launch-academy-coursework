hole = 1
score = 0
course_par = 0
golf_course = {}

18.times do

  par = rand(3..6)
  strokes = rand(3..6)
  course_par += par
  score += strokes

  golf_course[hole] = [par, strokes, course_par, score]
  puts "Hole #{hole} (Par #{golf_course[hole][0]}): #{golf_course[hole][1]}"

  hole +=1
end

if golf_course[18][-1] > golf_course[18][-2]
  over_under_on = "over"
elsif golf_course[18][-1] < golf_course[18][-2]
  over_under_on = "under"
else
  over_under_on = "on"
end

puts "\nTotal Strokes: #{golf_course[18][-1]}"
puts "Par for Course: #{golf_course[18][-2]}"

if over_under_on != "on"
  puts "You were #{(golf_course[18][-1] - golf_course[18][-2]).abs} #{over_under_on} par!"
else
  puts "You were #{over_under_on} par!"
end
