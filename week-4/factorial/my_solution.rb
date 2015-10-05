# Factorial

# I worked on this challenge [by myself, with: Bernadette M. ].


# Your Solution Below
def factorial(num)
  running_total = 1

  while  num > 0
    running_total =  num * running_total
    num -= 1
  end
    puts running_total
end
factorial(6)