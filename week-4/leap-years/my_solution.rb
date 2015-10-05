# Leap Years

# I worked on this challenge [by myself, with: Bernadette M ].


# Your Solution Below
def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
      return true
  elsif year % 400 == 0 && year % 100 == 0
      return true
  else
    return false
  end
end
  leap_year?(400)