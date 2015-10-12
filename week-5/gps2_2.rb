#Pseudocode
=begin
Create a new list
list = empty hash

Add an item with a quantity to the list
INPUT: list, ITEM to ADD and quantity
OUTPUT: updated list

Remove an item from the list
INPUT: list, ITEM to REMOVE
OUTPUT: updated list


Update quantities for items in your list
INPUT: LIST, ITEM and Quantity of item
OUTPUT: updated list

Print the list (Consider how to make it look nice!)

INPUT: LIST,
OUTPUT: list


=end

#Create a list
list = {}
#Add an item with quantity
def add(list, item, quantity) #What if the item is already on the list?
  unless list[item]
    list[item] = quantity
  else
    update(list, item, quantity)
  end
  list
end


p add(list, "milk", 1)
p add(list, "cheese", 2)

#Remove item from the list
def remove(list, item)
  list.delete(item)
  list
end

p remove(list, "milk")


#Update quantities
# def update(list, item, quantity) #what if we wanted to add or subtract a specific number of things
#   list[item] = quantity
#   list
# end

def update(list, item, quantity)
  list.include?(item) ? list[item] += quantity : add(list, item, quantity)

  remove(list, item) if list[item] < 1
end



p update(list, "cheese", -4)

#Print list
def printlist(list)
  p "----LIST----"
  list.each do |item, quantity|
    p "#{item} -> #{quantity} :oP"
  end
end

printlist(list)


=begin
Reflect:
What did you learn about pseudocode from working on this challenge?
- I learned how cruicial it is in coming up with a workable solution BEFORE coding and knowing what the input and ouput always.
What are the tradeoffs of using Arrays and Hashes for this challenge?
- The tradeoffs are in the way we access the index of i in an Array or index of key in a Hash.
What does a method return?
-The last line it returns.
What kind of things can you pass into methods as arguments?
-Any object. strings, arrray, hashes, etc.
How can you pass information between methods?
- No, unless you are working with classes.
What concepts were solidified in this challenge, and what concepts are still confusing?

=end








=begin  SIDE WORK I DID TO PRACTICE THE CONCEPTS I LEARNED AND APPLIED IN MY GPS SESSION.

pets = { "donkey" => 4,
                    "dog" => 7,
                    "cat" => 1,
                "dolphin" => 9,
                  "eagle" => 7,
                   "fish" => 6    }


#create method that adds to array

def add_pets( list, animal, how_many )
  #if animal already exsits, then tally
  if list[animal]
    list[animal] += how_many
    list
  else
    list[animal] = how_many
    list
  end
end



puts "add HORSE"
p add_pets(pets, "horse", 11)

puts "add RABBIT"
p add_pets(pets, "rabbit", 99)

puts "add TURTLE"
p add_pets(pets, "turtle", 5)

puts"ADD MORE TURTLES!!!!"
p add_pets(pets, "turtle", 10000)

puts "THE MAXXXXXXXX VALUE IN THIS HASH IS:"
p pets.values.max

=end