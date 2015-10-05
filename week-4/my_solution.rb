# Leap Years

# I worked on this challenge [by myself, with: Bernadette ].


# Your Solution Below

def leap_year?(year)
  if year % 100 == 0
    if year % 400 == 0
      return true
  elsif year % 4 == 0
    return true
    else
      return false
    end

  end
end


leap_year?(2001)