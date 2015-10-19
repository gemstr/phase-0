=begin
PSUEDOCODE
-what do we want to generate from cardnumber?
-luhn_proccessed_array from cardnumber

then iterate thru the luhn_processed_array and check for numbers bigger than 9 to turn them into arrays of strings, and then iterate again for arrays of numbers.

flatten that multidension integer array,
sum up contents,
check if its divisible by 10
OUTPUT TRUE/FALSE


###### INITIAL CODE #######
class CreditCard
  attr_reader :cardnumber, :card_digits_as_strings, :card_digits_as_int, :luhned_array


  def initialize(cardnumber)
    if cardnumber.to_s.length == 16 && cardnumber.kind_of?(Fixnum)  # Initialize @cardnumber IF its 16 numbers and all numbers. THEN
      @cardnumber = cardnumber      # Set instance variable for cardnumber
      @card_digits_as_strings = cardnumber.to_s.split('')  #  Create @card_digits_as_string array ******NON IMPORTANT VARIABLE******
      @card_digits_as_int = @card_digits_as_strings.map{|digit_as_string|digit_as_string.to_i} #Re-maped array with integer digits nondestructively
      @luhned_array = @card_digits_as_int.map.with_index do |num, i|      #iterates  in the array for index divisible by 2 .
        if i % 2 == 0
          num = num * 2
        end
      end
    else
      raise ArgumentError.new('Not a valid card number format')
    end
  end

  def check_card
    @card_array.map! do |number|
      if number > 9
        number = number.to_s.split('') ##OUTPUT array: ["1" , "8"]
        number.map!{|num_string|num_string.to_i } # ex converts ["1" , "8"]  to [1, 8]
      end      ## Here @card_array should be a multidem array as ALL integers
    end
    flattened_array = @card_array.flatten
    total = flattened_array.reduce(:+)
    if total % 10 == 0
      puts "You have a real Credit Card!"
    else
      puts "Not a valid Credit Card"
    end
  end
end

=begin  ##SCRATCH CODE I WAS WORKING ON.
  def check_card
    @luhn_single_digit_array = @luhned_array.map do |digit|   #itereate thru the luhned array to find 2 two digit numbers and split them and then join.
      if digit > 9
        digit.to_s.split('').map!{|stringnum| stringnum.to_i}
      end
    end
  end
=end






#########  Refactored Solution  ##########
class CreditCard
  attr_reader :cardnumber, :card_digits_as_strings, :card_digits_as_int, :luhned_array


  def initialize(cardnumber)
    if cardnumber.to_s.length == 16 && cardnumber.kind_of?(Fixnum)  # Initialize @cardnumber IF its 16 numbers and all numbers. THEN
      @cardnumber = cardnumber      # Set instance variable for cardnumber
      @card_digits_as_strings = cardnumber.to_s.split('')  #  Create @card_digits_as_string array ******NON IMPORTANT VARIABLE******
      @card_digits_as_int = @card_digits_as_strings.map{|digit_as_string|digit_as_string.to_i} #Re-maped array with integer digits nondestructively
      @luhned_array = @card_digits_as_int.each_with_index.map do |num, index|
        if index % 2 == 0
          num = num * 2
        else
          num   #TOOK ME ^%&^*& forever to figure out!
        end
      end
    else
      raise ArgumentError.new('Not a valid card number format')
    end
  end

  def check_card
    @luhned_array.map! do |num|
      if num > 9
        num.to_s.split('').map!{|stringnum| stringnum.to_i}
      else
        num
      end
    end
    @luhned_array.flatten!
    sum = @luhned_array.inject(:+)
    if sum % 10 == 0
      puts "You've got a real CC"
      true
    else
      puts "Not a real CC"
      false
    end
  end

end  #Class ending

#card1 = CreditCard.new(4563960122001999)


###### Reflection ########
=begin
What was the most difficult part of this challenge for you and your pair?
  - I was the unfortunate last one on the pairing discussion board so I wasn't able to pair on this peer programming session. -_-
What new methods did you find to help you when you refactored?
  -I learned how to use the .inject(:+) to get the sum of an array if they are integers
What concepts or learnings were you able to solidify in this challenge?
  - The concepts of classes and the instance varaibles inbetween the methods are something that I still don't feel super confident b/c it still feels like pulling teeth. haha. the iteration of an array with .each_with_index.map. What I didn't know was that .map needs a else condition, or else it maps the array with nil objects!

end