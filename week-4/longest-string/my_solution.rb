# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  longestword = list_of_words.pop


  while list_of_words.count > 0 do
    word = list_of_words.pop
    if longestword.length < word.length
      longestword = word
    end
  end
  p longestword
end