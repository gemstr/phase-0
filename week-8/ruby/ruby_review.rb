# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
#Create a function that accepts a string and returns the string with each word reversed. "little red hood" should return "elttil der dooh"
#Change sentence into array with .split " " method [little, red, hood]
#itterate into each object that is a string in array and .reverse!
# .join " " the array back to gether as a string and return it!


# Initial Solution
def reverse_words(string)
  split_string = string.split(" ")
  split_string.each {|word| word.reverse!}
  split_string.join(" ")
end





# Refactored Solution

def reverse_words(string)
  split_string = string.split(" ")
  split_string.each {|word| word.reverse!}
  split_string.join(" ")
end





#Release 2: Reflect
-What concepts did you review or learn in this challenge?
 I reviewed how to reverse arrays and how to use the split and join methods as refreshers.
What is still confusing to you about Ruby?
- I love ruby, I'd like to get more familiar with classes.
What are you going to study to get more prepared for Phase 1?
- More Ruby classes!