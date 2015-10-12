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







# 4. Reflection