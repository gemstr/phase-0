//Letter grade
// Pseudocode:
// Simple if and else if statements that look to return a letter grade
// example: above 90 is A, Below 89 but above or 80 equals B and so forth.


function letter_grade(grade_num) {
  if (grade_num >= 90){
    return "A";
  } else if (grade_num < 90 && grade_num >= 80){
    return "B";
  } else if (grade_num < 80 && grade_num >=70 ) {
    return "C";
  } else if (grade_num < 70 && grade_num >= 60) {
    return "D";
  } else if (grade_num < 60) {
    return "F";
  }
}

console.log(letter_grade(90))

//Reflection:
// What concepts did you solidify in working on this challenge?
// - I solidified creating if statements that include && in them.
// What was the most difficult part of this challenge?
// - I didn't think this challenge was particularly challenging, I just wanted to review by if and else if statements with && operators.
// Did you solve the problem in a new way this time?
// - I did not. I considered pull grade letters from an array, but I felt that would have been more code.
// Was your pseudocode different from the Ruby version? What was the same and what was different?
// - The approach was the same as the ruby version.