//Letter grade
Pseudocode:
Simple if and else if statements that look to return a letter grade
example: above 90 is A, Below 89 but above or 80 equals B and so forth.


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