# Release 4:

# refactor this code to move method assignments to attr_ attributes. Like we did with age. Let's pare down the superfluous code.

# Your Code Here:
=begin

class Profile
# first let's finish refactoring this code
# note that there is a way to add all of the variables like :age on one line, how would we do that?
  attr_accessor :age, :name, :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end

  #def what_is_name
  #  @name
  #end

  def change_my_name=(new_name)
    @name = new_name
  end

  #def what_is_occupation
  #  @occupation
  #end

  def change_my_occupation=(new_occupation)
    @occupation = new_occupation
  end


end

=end



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