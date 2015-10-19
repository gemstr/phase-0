# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create an array of letters B I N G O.
  #Generate a random number 1-100.
  #Add the two together as string, return the string.
  #Store that string in a array, and compare if it already exists, if not, add it to the array.

# Check the called column for the number called.
  #For example, column B. In order, check: board[0][0] , board[1][0] , board[2][0], board[3][0], board[4][0].
  # Use if statements to compare each to the number called

# If the number is in the column, replace with an 'x'
  #If the value at board[2][0] equals called number, then change the value of board[2][0] to 'x'

# Display a column to the console
  #To display a column, you print out "B", board[0][0] , board[1][0] , board[2][0], board[3][0], board[4][0] each on a new line

# Display the board to the console (prettily)
  #Print each array to each line

# Initial Solution

class BingoBoard
  attr_accessor :drawn
  attr_reader :chosen
  def initialize(board)
    @bingo_board = board
    @drawn = []
  end

  def call
    bingo_letters = ["B","I","N","G","O"]
    @chosenletter = bingo_letters.shuffle[0]  # STORES A RANDON selection from bingo_letters
    @chosennum = rand(1..100)     #STORING A RANDOM NUMBER
    @chosen = @chosenletter + "-" + @chosennum.to_s
    #@chosen = @chosenletter.concat(@chosennum.to_s)
    @drawn << @chosen
    unless @drawn.include?(@chosen)
      call
    end
    unless @drawn.empty?
      puts "The drawn BINGO numbers are:"    #Outputting/Printing the numbers using iteration.
      @drawn.each {|drawings| puts drawings}
    end
    @chosen
  end

  def check
    @bingo_board.each do |nested_array|  # Iterate over the array objects to see if they include chosennum inside
      if nested_array.include?(@chosennum)
        nested_array.each do |number|     #If the number inside the nested_array equals the chosennum, replace number as 'X'
          if number == @chosennum
            number = 'X'
          else
            puts "Your bingo board does not have the number called."
            @bingo_board
          end
        end
      end
    end
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.check
new_game.call
p new_game.drawn
4.times {puts "."}
p new_game.drawn
p new_game.drawn
4.times {puts "new call"}
new_game.call
4.times {puts "CALLED NEW!"}
new_game.check


# Refactored Solution
=begin
    column_b = [ @bingo_board[0][0] , @bingo_board[1][0] , @bingo_board[2][0], @bingo_board[3][0], @bingo_board[4][0] ]
    column_i = [ @bingo_board[0][1] , @bingo_board[1][1] , @bingo_board[2][1], @bingo_board[3][1], @bingo_board[4][1] ]
    column_n = [ @bingo_board[0][2] , @bingo_board[1][2] , @bingo_board[2][2], @bingo_board[3][2], @bingo_board[4][2] ]
    column_g = [ @bingo_board[0][3] , @bingo_board[1][3] , @bingo_board[2][3], @bingo_board[3][3], @bingo_board[4][3] ]
    column_o = [ @bingo_board[0][4] , @bingo_board[1][4] , @bingo_board[2][4], @bingo_board[3][4], @bingo_board[4][4] ]

  def call
    @bingo_array = [ "B", "I", "N", "G", "O"]
    randomletter = bingo_array.shuffle[0]
    randomnum = rand{1..100}.to_s
    letter_num = randomletter << randomnum
    unless @drawn.include?(letter_num) #unless the object is already in the array, push the drawing to the drawn storage array.
      @drawn.push(letter_num)
      p letter_num  #puts and return the value of the drawing
    else
      draw #again
    end

=end





#Reflection

