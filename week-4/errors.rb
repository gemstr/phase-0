# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------
=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end
=end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# It reports line 171, because it's looking for the closing end keyword for the end of cartman_hates method
# 3. What is the type of error message?
# Syntax error message
# 4. What additional information does the interpreter provide about this type of error?
# It says that there was a unexpected end of input.
# 5. Where is the error in the code?
# The actual error was corrected by adding an end on line 16.
# 6. Why did the interpreter give you this error?
# Because the method cartman_hates while loop was not closed.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# Line 36
# 2. What is the type of error message?
# Name error message
# 3. What additional information does the interpreter provide about this type of error?
# Says undefined local variable or method 'south_park'
# 4. Where is the error in the code?
#  In itself.
# 5. Why did the interpreter give you this error?
# Because the variable south_park was not DEFINED.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# Line 51
# 2. What is the type of error message?
# No Method error
# 3. What additional information does the interpreter provide about this type of error?
# Undefined method 'cartman'
# 4. Where is the error in the code?
# In itself.
# 5. Why did the interpreter give you this error?
# because the method was closed but not defined nor is it with a block of code.

# --- error -------------------------------------------------------
=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')
=end
# 1. What is the line number where the error occurs?
# Line 66
# 2. What is the type of error message?
# Argument error.
# 3. What additional information does the interpreter provide about this type of error?
# Says there are a wrong number of arguments.
# 4. Where is the error in the code?
# The error is on Line 66.
# 5. Why did the interpreter give you this error?
# B/c when defining the method, arguments were not set/defined.

# --- error -------------------------------------------------------
=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end
# 1. What is the line number where the error occurs?
# Line 85
# 2. What is the type of error message?
# Argument error.
# 3. What additional information does the interpreter provide about this type of error?
# Says there are a wrong number of arguments.
# 4. Where is the error in the code?
# Line 89 according to the interpreter.
# 5. Why did the interpreter give you this error?
# Because cartman_says method was run without any arguments.



# --- error -------------------------------------------------------
=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end
# 1. What is the line number where the error occurs?
# line 106
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# Says wrong number of arguemnents
# 4. Where is the error in the code?
# It says from line 110.
# 5. Why did the interpreter give you this error?
# I received this error because on line 110, the method is only provided one argument.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# Line 125
# 2. What is the type of error message?
# Type error
# 3. What additional information does the interpreter provide about this type of error?
# 'String can't be coerced into Fixnum'
# 4. Where is the error in the code?
#  5 cannot be multiplied by "Respect my authoritay".
# 5. Why did the interpreter give you this error?
# Becuase it doesn't make sense, however switching them around does.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# Line 140
# 2. What is the type of error message?
# Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# divided by zero.
# 4. Where is the error in the code?
# 20/0
# 5. Why did the interpreter give you this error?
# b/c a number cannot be divided by zero. Ask Siri what 0/0 is.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 156
# 2. What is the type of error message?
# Load Error
# 3. What additional information does the interpreter provide about this type of error?
# require relative: cannot load such file
# 4. Where is the error in the code?
# where the file is incorrectly linked
# 5. Why did the interpreter give you this error?
# B/c ruby can't find the file to load it.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

Which error was the most difficult to read?
The first one we had to do ourselves was the most difficult to read/figure out because of the missing END.
How did you figure out what the issue with the error was?
 By reading and understanding what the interpreter outputs.
Were you able to determine why each error message happened based on the code?
Yes I was.
When you encounter errors in your future code, what process will you follow to help you debug?
I will follow the same process that I did here.

=end