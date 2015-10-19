# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [8] hours on this challenge.


# Release 0: Pseudocode
# Outline:
# Generate a random string between the letters of "B" "I" "N" "G" "O"
#   create an array with the letters "B" "I" "N" "G" "O"
#   call the .shuffle method on the array
#   puts the array[0] into variable_1
# Generate a random number in the range of 1 to 100  
#    puts variable_2 = (rand(1..100))
# Combine the random number with the random string
#   guess =letter_variable + number_variable
#


# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # def call() 
  # letters = ["B","I","N","G","O"]
  # letters_shuffle = letters.shuffle
  # bingo_letter = letters_shuffle[0] 
  # bingo_int =(rand(1..100))
  # bingo_number = bingo_int.to_s
  # puts bingo_guess = bingo_letter << bingo_number
  # 
  #end

# Check the called column for the number called.
# def check()
#   If @bingo_guess contains "B", check the 0th index of each subarray, and replace the  
#     integer with an 'x' if @bingo_guess[int] == zeroth_index 
#   elsif @bingo_guess contains "I", check the 1st index of each subarray, and replace the  
#     integer with an 'x' if @bingo_guess[int] == zeroth_index
#   elsif @bingo_guess contains "N", check the 2nd index of each subarray, and replace the  
#     integer with an 'x' if @bingo_guess[int] == zeroth_index
#   elsif @bingo_guess contains "G", check the 3rd of each subarray, and replace the  
#     integer with an 'x' if @bingo_guess[int] == zeroth_index 
#   eslif @bingo_guess contains "O", check the 4th of each subarray, and replace the  
#     integer with an 'x' if @bingo_guess[int] == zeroth_index 
#   else return  @bingo_board
#   end
#
#   Display a column to the console
#    for each row, you need to check the elements is one integer long, if it is pad
#    it by one, if not just return the it. 
#    then print the row to the screen
# 
#  Display the board to the console (prettily)
#   
#
#
# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @bingo_guess = bingo_guess
    letters = ["B","I","N","G","O"]
    letters_sample = letters.sample
    bingo_int =(rand(1..100))
    bingo_number = bingo_int.to_s
    bingo_guess = bingo_letter << bingo_number.to_s
  end
  
  def check(bingo_guess)
       @bingo_guess = @bingo_board
       if @bingo_guess.include? "B"
          @bingo_board.each do |sub_array|  
            sub_array.each do if sub_array[0] == @bingo_guess[bingo_number] 
            sub_array[0].replace['x'] 
            end
       elsif @bingo_guess.include? "I"
              @bingo_board.each do |sub_array|  
            sub_array.each do if sub_array[1] == @bingo_guess[bingo_number] 
            sub_array[1].replace['x'] 
            end
       elsif @bingo_guess.include? "N"
              @bingo_board.each do |sub_array|  
            sub_array.each do if sub_array[2] == @bingo_guess[bingo_number] 
            sub_array[2].replace['x'] 
       elsif @bingo_guess.include? "G"
              @bingo_board.each do |sub_array|  
            sub_array.each do if sub_array[3] == @bingo_guess[bingo_number] 
            sub_array[3].replace['x'] 
       elsif @bingo_guess.include? "O"
            @bingo_board.each do |sub_array|  
            sub_array.each do if sub_array[4] == @bingo_guess[bingo_number] 
            sub_array[4].replace['x'] 
       else 
        return @bingo_board
  end
  def print_board
    @bingo_board.each do |row|
    @bingo_board[row].each_index do |i|
    @bingo_board[row][i].to_s
      if @bingo_board[row][i].length < 2
        @bingo_board[row][i] = " " + @bingo_board[row][i]
      end
      puts @bingo_board[row]
    end
   end
  end
     
     
  def display_table()
     
     end
end

# Refactored Solution
    
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @bingo_call =[ ["B","I","N","G","O"].sample,(rand(1..100))]
  end

  def check    
      col = 0 if @bingo_call[0] == "B"
      col = 1 if @bingo_call[0] == "I"
      col = 2 if @bingo_call[0] == "N"
      col = 3 if @bingo_call[0] == "G"
      col = 4 if @bingo_call[0] == "O"
      @bingo_call.each do |row|
      @bingo_board[row][col] = 'x' if @bingo_board[row][col] == @bingo_call[1]
  end
    
  def print_board
    @bingo_board.each do |row|
    @bingo_board[row].each_index do |i|
    @bingo_board[row][i].to_s
      if @bingo_board[row][i].length < 2
        @bingo_board[row][i] = " " + @bingo_board[row][i]
      end
      puts @bingo_board[row]
    end
   end
  end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
@board 
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection
#How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Psuedocoding was pretty challenging, I had to figure out conceputally how to do things I had never 
# tried before. 
#
#What are the benefits of using a class for this challenge?
#The benefits of using a class are that it allows me to create instance methods and variables, this 
# is crucial for transfering the rules ofthe instance variables from the call method to the check method.  
#
#How can you access coordinates in a nested array?
#You have two indexes. The first index refers to the position in the parent array, and the second element 
#referes to the position of the elements in the nested array. 
#
#What methods did you use to access and modify the array?
# I used the .to_s .to_i .sample .each_index  
#
#How did you determine what should be an instance variable versus a local variable?
# An instance variable is used when you want to use the variable amongst more than one method and 
# keep its value. A local variable is used when the value stays in the method.  
#
#What do you feel is most improved in your refactored solution?
# Writing more efficient code by being able to turn my methods from three lines into one. 
#