# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)

  while array_2.length > 0 do
    array_1 << array_2.pop
  end
  p array_1

end
