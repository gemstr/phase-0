# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: a initialize method that acceppts a number in form of 'ansswer'
# - Creation of instance method guess that returns :high or :low
# - Creation of instance method solved that return true or false.
# - Attr_reader = :solved
# Output:
# Steps:Create method guess and solved?
Create instance variables that will hold the value of the answer and boolean value of wheather it was solved or not.


# Initial Solution

class GuessingGame
  Attr_reader = :answer
  attr_accessor = :solved

  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    if @answer == guess
      @solved = true
      :correct
    elsif @answer < guess
      @solved = false
      :high
    elsif @answer > guess
      @solved = false
      :low
    end
  end

  def solved?()
    @solved
  end

end


# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    if @answer == guess
      @solved = true
      :correct
    elsif @answer < guess
      @solved = false
      :high
    elsif @answer > guess
      @solved = false
      :low
    end
  end

  def solved?()
    @solved
  end

end



=begin

# Reflection
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  -Instance variables and methods are the things that are inherited from Class which they come from.
When should you use instance variables? What do they do for you?
  -You should use an instance variable when you want every 'spawn' of your object to have the same type of variable.
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  -No, I thought the flow control part was straightforward.
Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  -This code requires me to use symbols because it allows me to return a value that is itself and immutable. And therefore I can return, or even use it with comparitors!

  =end