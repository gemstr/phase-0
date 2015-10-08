# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Array
# What is the output? (i.e. What should the code return?) The most frequently occuring element
# What are the steps needed to solve the problem?
# 1.def method accepts array
# 2. Set up iteration to do .count on the array.
# 3. Use count to return
# 4. If array count > previously counted element, .push it to new local array.
# 5. ELSE we pop it off from the new local array.
# 5. return the new local array
#
#

# 1. Initial Solution
def score(array)
  hash = Hash.new(0)
  array.each{|key| hash[key] += 1}
  tally = 0
  final_array = []
  hash.each do|key, value|
    if value > tally || tally == value
      tally = value
      final_array.push(key)
    end
  end
  p final_array
end



=begin NOAH
def mode(array)
    new_array=Array.new
    max_element=array.max_by{|x| array.count(x)}
    max_num=array.count(max_element)
    array.each do |x|
        if array.count(x) == max_num
           new_array << x
        end
    end
    new_array.uniq!
    return new_array
end

mode_calc([1, 3, 1, 4, 1, 4, 4])
=end

array1 = [1,4,5,2,3,1,1,3,5,5]

score(array1)







# 3. Refactored Solution




# 4. Reflection