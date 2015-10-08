# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? The input is an array, minumum_size_padding, element
# What is the output? (i.e. What should the code return?) The output must be a new array with padding nil or element padding and then specified by minumum_size_padding.

# What are the steps needed to solve the problem?
# 1. Define two methods pad and pad! that takes array, minumum_size_padding, element as arguments.

# 2. Compare array length and minimum size

# 3. As long as the array length is smaller than the minimum size we need to iterate over the array and push as much elements as minimum_size_padding is specifing at the end of the array.

# 4.1 For pad! destructive method, as long as the length of the array is bigger than minimum size, return the array as initially inputed. Else, add 'n' values in the array where n is equal to array.lenght - min_size.

# 4.2 For pad non destructive method, as long as the length of the array is bigger than minimum size, return a new array with the same values as in the old one. Else, clone the initial array (or duplicate it) then fill this brand new array with 'n' times the value where n is equal to array.lenght - min_size.



# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  if array.length > min_size || min_size == 0
    return array
  else
    while array.length < min_size do
    array.push(value)
    end
  return array
  end
end



def pad(array, min_size, value = nil) #duplicative AKA Non-destructive
  if array.length > min_size || min_size == 0
     array.clone
  else
    new_array = Array.new(min_size - array.length , value)
    padded_array = array + new_array
    return padded_array
  end
end






# 3. Refactored Solution


def pad!(array, min_size, value = nil) #destructive
  if array.length > min_size
    array
  else
  array.insert(0, *Array.new([0, min_size-array.length].max, value))
#  array.fill!(value, array.length...min_size)
  end
end


def pad(array, min_size, value = nil) #non destructive
  if array.length > min_size
    Array.new(array)
  else
    array.clone.fill(value, array.length...min_size)
#   array.new([0, min_size-array.length].max, value)+array
  end
end


=begin
# 4. Reflection

Were you successful in breaking the problem down into small steps?
 Yes, we were able to break it up.
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
  Even after finding the correct methods that would work
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
When you refactored, did you find any existing methods in Ruby to clean up your code?
How readable is your solution? Did you and your pair choose descriptive variable names?
What is the difference between destructive and non-destructive methods in your own words?
=end