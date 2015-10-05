# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

def smallest_integer(list_of_nums)
  if list_of_nums.length > 1
    currentsmallnumber = list_of_nums[0]
    list_of_nums.each do |num|
      if currentsmallnumber > num
        currentsmallnumber = num
      end
    end
    puts currentsmallnumber

  else
    puts nill
  end
end

smallest_integer([ 0, 5, 7, 2, 8, 7, 6, 2, -1])

#using .sort
=begin
def smallest_integer(list_of_nums)
  sortedarray = list_of_nums.sort
  smallestnum = sortedarray[0]
  puts smallestnum
end
=end
