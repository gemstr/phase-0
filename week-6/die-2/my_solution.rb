# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: INPUT is an array
# Output: Creation of an instance of Die that respond to different method calls.
# Steps: If .new is initialized with an empty arry, it should raise ArgumentError
#   When Die#roll is called it should randomly return one of the objects in the array.
#   When Die#sides is called it should return the number of sides


# Initial Solution


class Die
  def initialize(labels)
    @labels = labels
    if @labels.class != Array || @labels.class == String
      raise ArgumentError.new('blah blah blah')
    elsif @labels.length < 1
      raise ArgumentError.new('blah blah blah')
    else
      @sides = labels.length
      @labels = labels
    end
  end

  def sides
    @sides

  end

  def roll
    if @labels.length == 1
      @labels[0]
    else
      @labels.shuffle!
      @labels[0]

    end

  end
end

=begin
array = ["blah1", "blah2", "blah3"]

die1 = Die.new(array)

p die1.sides
p die1.roll



array = ["blah1", "blah2", "blah3"]

die1 = Die.new(array)

p die1.sides
p die1.roll
=end


# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    @sides = labels.length
    if @labels = nil or @sides < 1
      raise ArgumentError.new('Not valid input for new Die')
    else
      @sides = labels.length
      @labels = labels
    end
  end

  def sides
    @sides

  end

  def roll
    if @labels.length == 1
      @labels[0]
    else
      @labels.shuffle!
      @labels[0]
    end

  end
end


# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
  -The difference was the type of input. The initialize function accepts an array that implicitly gives side amount. The adjustments to program logic were slight.
What does this exercise teach you about making code that is easily changeable or modifiable?
  - It teaches you to always include ease of use, scalablity, maintainablity in my code.
What new methods did you learn when working on this challenge, if any?
  - I learned to use the .class method to compare object type.
What concepts about classes were you able to solidify in this challenge?
  - I was able to solidify my understanding use of instance variables.
=end