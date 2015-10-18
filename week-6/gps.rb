# Your Names
# 1) Joshua Kim
# 2) Issac Lee

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

###### INITIAL WORK  ######

def serving_size_calc(item_to_make, order_quantity)
  #creates method serving_size_calculator that recieves a string and an integer as input. The string refers to the item requested for baking, and the integer refers to the amount of people to feed.
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}


  raise ArgumentError.new("#{item_to_make} is not a valid input") if library[item_to_make] == nil
#   error_counter = 3
#   library.each do |food|
#     if library[food] != library[item_to_make]
#       p error_counter += -1
      #check if each element in library is not equal to the item_to_make entry in library. If the keys do not exist, puts error_conter =-1.
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#     #Raises an error if the error counter is greater than 0
#   end

#   serving_size = library.values_at(item_to_make)[0]
  serving_size = library[item_to_make]
  #creates local variable serving_size that is an element at index 0 in an array.
  remainder = order_quantity % serving_size
  #creates a local variable serving_size_mod that returns the value of the remainder of the order quantity divided by the serving size in library.

  case remainder
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
    #when the order quantity is divided perfectly by the serving size, return the total order.
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{remainder} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
    #when the order quantity cannot be divided perfectly by the serving size, return the order and recommended alternative baking items for the leftover ingredients.
  end
end

# p serving_size_calc("brownie",5)
# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)






####### FINAL CODE #######


def serving_size_calc(item_to_make, order_quantity)

  library = {"cookie" => 1,
              "cake" =>  5,
              "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") if library[item_to_make] == nil

  serving_size = library[item_to_make]
  remainder = order_quantity % serving_size

#   case remainder
  return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}" if remainder == 0

#   else
  return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{remainder} leftover ingredients. Suggested baking items: cookie" if remainder < 5


end



 p serving_size_calc("pie", 7)
#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
  - Code readability and understandability.is_?(realword) comes above all. And simplicity in Ruby's design is what allows this.
Did you learn any new methods? What did you learn about them?
  - None, we mostly used our newfound knowledge of hashes.
What did you learn about accessing data in hashes?
  - Nothing new from what I learned in The Well Grounded Rubyist.
What concepts were solidified when working through this challenge?
  -Concepts related to accessing values in a hash.
=end

