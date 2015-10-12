# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

class Die

  def initialize(sides)
    if sides < 1
      raise ArgumentError.new('Die must have a minimum of two sides!')
    else
      @sides = sides
      puts "You've created a #{@sides} sided die!"

    end
  end


  def sides
    @sides
    puts "This is a #{@sides} sided die."
    @sides
  end

  def roll
    @sides
    randomnumber = rand(1..@sides)
    randomnumber
  end
end



# 3. Refactored Solution






=begin
# 4. Reflection
What is an ArgumentError and why would you use one?
- To help identify why a program isn't able to run due to invalid arguments.
What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
-sides, and roll for class Die.
What is a Ruby class?
- Is basically the 'blueprint' for the creation of a new instance of that class
Why would you use a Ruby class?
- To inherit all the methods associated with it.
What is the difference between a local variable and an instance variable?
Local varible is related to the method, wheras a instance variable is an instance of that variable in ithe class method.
Where can an instance variable be used?
Inside the class methods.
=end