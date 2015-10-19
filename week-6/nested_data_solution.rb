#Partnered with: Douglas Tsai on 10-18-15
##### RELEASE 1: PLAY ######
=begin
nested_array = [1, ["inner", "array"], 2, 3]
p nested_array[0]
p nested_array[1]
p nested_array[2]
p nested_array[3]

p nested_array[1][0]

nested_hash = {:outer_key => {:inner_key => "Winner!"}}

# outer key: inner key: Winner!

p nested_hash[:outer_key][:inner_key]

nested_array = [1, ["inner", "array"], 2, 3]
nested_array.each { |element| puts element}

nested_array.each { |element| p element}
=end



###### RELEASE 2: NESTED STRUCTURE GOLF ######
# Hole 1
# Target element: "FORE"


array = [[1,2], ["inner",      ["eagle", "par",     ["FORE", "hook"]   ]]]


# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}


# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

###### RELEASE 3: ITERATE OVER NESTED STRUCTURES #######

number_array = [5, [10, 15], [20,25,30], 35]
# for each element in number_array check to see if it equal array,
# if it an array, .each on that array add each number by 5

# else     if its a intger, add 5.

number_array = [5, [10, 15], [20,25,30], 35]


number_array.map! do |item|
  unless item.kind_of?(Array)
    item += 5
  else
    item.map!{|num| num +=5}
  end
end

p number_array



##### RELEASE 4: Bonus ######

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |item|
  unless item.kind_of?(Array)
    item << "ly"
  else
    item.map! do |inner|
      unless inner.kind_of?(Array)
        inner << "ly"
      else
        inner.map! {|superinner| superinner << "ly"}
      end
    end
  end
end

p startup_names

###### RELEASE 5: REFLECT #######
=begin
What are some general rules you can apply to nested arrays?
  - Nested arrays can be accessed by succeeding indexes. Nested arrays can be flattened with the flatten method, or each object in the nested array will be puts'ed to it each line as if it was flattened before puts-ed
What are some ways you can iterate over nested arrays?
  -You can iterate over nested arrays, by settings conditional statements to access those arrays in a iteration.
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  - For release 3 code, we first used #each to iterate, but found that it didn't modify our array. When we used .map! it modified our array in place(destructive).

=end
