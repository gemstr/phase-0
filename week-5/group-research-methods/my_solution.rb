# Research Methods
# I CHOSE PERSON 4 & 5. I also did Person 1 for challenge. Reflection under Person 4/5's solution.

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution

def my_array_finding_method(source, thing_to_find)
  newarray = []
  source.each do|value|
    if value.to_s.downcase.include?(thing_to_find)
      newarray << value
    end
  end
  newarray
end


def my_hash_finding_method(source, thing_to_find) # will return new array that matches thing_to_find
  newarray =[]
  source.each do |key, value|
    if value == thing_to_find#key/value is name/age
      newarray << key
    end
  end
  newarray
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4 - MY SOLUTION
def my_array_deletion_method!(source, thing_to_delete)
  source.each do |thing|
    if thing.to_s.downcase.include?(thing_to_delete)
      source.delete(thing)
    end
  end
  source
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.each do |key, value|
    if key == thing_to_delete
      source.delete(key)
    end
  end
  source
end

=begin
REFLECTION
Identify and describe the Ruby method(s) you implemented.
.each - iterates thru hash/array
.to_s - converts object to string
.downcase - converts string to all lowercase
.include? - checks to see if string includes specified string
.delete - removes object from specified array/hash


Release 2: Teach Others
Identify and describe the Ruby method you implemented

FOR my_array_deletion_method:
Because it's a destructive method, I modify the source array directly. Next, I iterate thru the each 'thing' and check to see if 'thing' as a string include?(s) thing_to_delete. If it does, I modify the array source using .delete and specifying the key to delete. Then return the value.

FOR my_hash_deletion_method:
Again, b/c it's a destructive method, I modify the source Hash directly.
Next I iterate thru each key value of the hash named source. During iteration if the key equals thing_to_delete then .delete(key) on source.
Teach your accountability group how to use the methods
Share any tricks you used to find and decipher the Ruby Docs
=end

# Person 5
i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

def my_array_splitting_method(source)
  int_array = []
  misc_array = []
  total_array = []
  source.each do |obj|
    if obj.is_a? Integer
      int_array << obj
    else
      misc_array << obj
    end
  end
  total_array.push(int_array).push(misc_array)
  total_array
end


def my_hash_splitting_method(source, age)
  criterion_array = []
  noncriterion_array = []
  full_array = []
  source.each do |key, value|
    if value <= age
      criterion_array << [key, value]
    else
      noncriterion_array << [key, value]
    end
  end
  full_array.push(criterion_array).push(noncriterion_array)
end

=begin

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
.each -Used to iterate thru the Array and Hash's key-value(s)
.is_a? Integer  - Used to identify if object in array is an Integer
.push Used to concat arrays to one another.

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I learned how to identify objects types and use them in conditional statements.
#
#
#
=end