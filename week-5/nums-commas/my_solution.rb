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


# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?
-The approach was to find out how many digits I had so I can find out how many commas there are, Then I inserted the commas via a code block iteration
Was your pseudocode effective in helping you build a successful initial solution?
-Yes it was. This was not a easy one. I wrote it all down on paper.
What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

How did you initially iterate through the data structure?
I didn't refactor.
I just deleted index[0] if index[0] was a comma
Do you feel your refactored solution is more readable than your initial solution? Why?

=end
