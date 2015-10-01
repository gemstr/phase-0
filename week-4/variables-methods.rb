puts "What is your first name?"
firstname = gets.chomp
puts "What is your middle name?"
middlename = gets.chomp
puts "What is your last name?"
lastname = gets.chomp
puts "Hello, nice to meet you #{firstname} #{middlename} #{lastname}!"

puts "What is your favorite number?"
favnum = gets.chomp
newfav = favnum.to_i + 1
puts "Actually #{newfav} is a bigger and better number"


=begin
How do you define a local variable?
  A local variable is a varible that is only related and used in the current method.
How do you define a method?
  You create a method starting with def method_name(arg1, arg2)
What is the difference between a local variable and a method?
  The difference is that the local variable exists inside a method as a block of code.
How do you run a ruby program from the command line?
  You can start interactive ruby by running irb in the command line. 'irb'
How do you run an RSpec file from the command line?
  You run a rspec file by typing: rspec rspec_file.rb
What was confusing about this material? What made sense?
  It was good to review some of the number strings into strings.
=end