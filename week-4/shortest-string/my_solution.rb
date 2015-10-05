# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below

def shortest_string(list_of_words)
  shortestword = list_of_words.pop
  while list_of_words.count > 0 do
    word = list_of_words.pop
      if shortestword.length > word.length
        shortestword = word
      end
  end
  p shortestword


end

#shortest_string(['cat', 'zzzzzzz', 'apples', 'dslkfjsd', 'ksldjflksdjflkdsjflksd'])
