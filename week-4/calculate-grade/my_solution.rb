# Calculate a Grade

# I worked on this challenge [with: Bernadette M.].


# Your Solution Below
def get_grade(num_grade)
  letter_grade = 'X'

  if num_grade > 89 && num_grade <=100
    letter_grade = 'A'
  elsif num_grade > 79 && num_grade < 90
    letter_grade = 'B'
  elsif num_grade > 69 && num_grade < 80
    letter_grade = 'C'
  elsif num_grade > 59 && num_grade < 70
    letter_grade = 'D'
  else
    letter_grade = 'F'
  end

  puts "Class average: #{letter_grade}"
end
get_grade(89)