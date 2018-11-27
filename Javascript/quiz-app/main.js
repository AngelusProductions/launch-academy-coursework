reactStudents = ['Rami', 'Natoya', 'Bill', 'Susie'];
reactGrades = [88, 92, 68, 100];

rubyStudents = ['Sasha', 'Mohammed', 'Jennifer', 'Ken'];
rubyGrades = [82, 98, 94, 92];

function letterGrade (grade) {
  if (90 <= grade && grade <= 100) { letter = 'A'; }
  else if (80 <= grade && grade < 90) { letter = 'B'; }
  else if (70 <= grade && grade < 80) { letter = 'C'; }
  else if (60 <= grade && grade < 70) { letter = 'D'; }
  else if (grade < 60) { letter = 'F'; }
  return letter; }

function Average (grades) {
  total = 0;
  for (index = 0; index < grades.length; index++) { total += grades[index]; }
  return Math.round(total / grades.length); }

console.log( "REACT:\n\n" );
for (index = 0; index < reactStudents.length; index++) { console.log( reactStudents[index] + ": " + reactGrades[index] ); }
console.log( "\nAverage: " + letterGrade(Average(reactGrades)) );

reactPassing = 0;
for (index = 0; index < reactGrades.length; index++) {
   if ( reactGrades[index] >= 70 )  { reactPassing++; } }
console.log( "# of students who passed: " + reactPassing ) ;

console.log( "\nRUBY:\n\n" );
for (index = 0; index < rubyStudents.length; index++) { console.log( rubyStudents[index] + ": " + rubyGrades[index] ); }
console.log( "\nAverage: " + letterGrade(Average(rubyGrades)) ) ;

rubyPassing = 0;
for (index = 0; index < rubyGrades.length; index++) {
   if ( rubyGrades[index] >= 70 )  { rubyPassing++; } }
console.log( "# of students who passed: " + rubyPassing ) ;
