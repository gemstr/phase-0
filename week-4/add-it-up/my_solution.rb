# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Bernadette M ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array
# Output: Sum
# Steps to solve the problem.
=begin
1. Have method accept Array
2. Get the sum of the Array
3. Concatenate Array
=end
# 1. total initial solution



# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution



# 6. sentence_maker refactored solution

def total(array_1)
  sum = 0
  n = 0

  while n < array_1.length
   sum = sum + array_1[n]
   n+=1
  end

 puts "Number total: #{sum}"
end
total([1, 2, 3])

def sentence_maker(array_2)
  sum = " "
  n = 0

  while n < array_2.length
   sum = sum + array_2[n]
   n+=1
  end

 puts "Sentence: #{sum}"
end
sentence_maker(["Hello ", "how ", "are ","you?"])