# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

def separate_comma(num)
  stringform = num.to_s
  commas = stringform.length / 3 # how many commas to add to our string


  (1..commas).each do |i|
    stringform.insert(i*-4, ',')
  end

  if stringform[0] == ','
    stringform[0] = ''
    stringform
  else
    stringform

  end


end



# 2. Refactored Solution




# 3. Reflection


