#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [2] hours on this challenge.

class NameData
  def initialize  #define a initialize method that doesn't accept any arguments
    @name = "Joshua Kim"
    #inside the initialization I create an instance variable and set it to my name; every instance of NameData will have this specific string assignment to it's instance variable @name.
  end
end

class Greetings
  def initialize
    @nameData = NameData.new
    # When we create a new instance of Greetings, we are creating a instance of NameData and storing it and its objects and variables in
  end

  def hello
    puts "Hello #{@name}"
  end
end

greet1 = Greetings.new
greet1.hello

# Reflection
=begin
Release_1
What are these methods doing?
  In reference to the methods that accept an arugment, they are setter methods, They change the instance variables of the object instance.
How are they modifying or returning the value of instance variables?
  They are modifying/returning the value of instance variables by receving an input and returning something else.

Release_2
What changed between the last release and this release?
  There's no more age method that calls the @age instance method.
What was replaced?
  The age method was replaced by attr_reader :age method.
Is this code simpler than the last?
  Simpler, and more concise

Release_3
What changed between the last release and this release?
  The removal of the age updating setter
What was replaced?
  The age updating setter method was replaced by the attr_writer method
Is this code simpler than the last?
  Simpler, more concise

Release_4
COMPLETED attr* code change.

###### REFLECTION #######
What is a reader method?
  - A reader method is a method with sole purpose of reading @instance_variables.
What is a writer method?
  - A writer method's purpose is to set / modify instance variables that are a part of the instance object.
What do the attr methods do for you?
  - :symbols that are listed under attr_reader allow those instances variables be called as instance method calls. The :symobls listed in attr_writer take place of SETTER METHODS. attr_writer gives the power of both reader and writer to the symbols.
Should you always use an accessor to cover your bases? Why or Why not?
  - You should use the correct accessor methods so instance variables cannot be overritten accidentally
What is confusing to you about these methods?
  -What still confuses me is the inheritance of instance variables when we instatiate them inside another class. Similar to the last excercise in Release 5. I'll have to do some more reading.



=end