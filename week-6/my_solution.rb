#---------------------------------------------
# Class Warfare, Validate a Credit Card Number
#---------------------------------------------
# Eran Chazan Paul Gaston Gouron worked on this challenge.
# We spent 3 hours on this challenge.

#------------
# Pseudocode:
#------------
# Input: An integer passed to initialize's argument
# Output: A boolean (true or false) when check_card is called

# Steps:
# I. Define a class (CreditCard)

# II. Define an initialize method, taking an integer (credit card number) as argument.
# In this method we declare all the instance variables we will want to use in the program: (note, checked_number and sum can also be used locally (see refactored)).
    # @credit_card_as_integer is used to store the user input (credit card) as integer
    # @checked_number is an empty array we will fill with the splitted digits of the card number
    # @sum is declared empty, so we can sum digits inside it
# In this initialize method, we want to create a statement that evaluates if the credit card have 16 digits. If it's not the case we want to return an argument error. So, unless condition, return an error.
# End the initialize class

# III. Define a check_card method, taking no argument but using instance variables declared in initialize
# Create a single_numbers local variable in order to store 16 strings of one digit using @credit_card_as_integer split method
# Use the empty @checked_numbers instance variable array to create slices of two digits which store the numbers and processes them regarding to the luhn algorythm (multiply by two the digit every two digits starting by the first one)
# Push those freshs numberss (of each pairs) into @checked_number.
# Iterate through @checked_number in order to populate a new variable called splitted_number with the sum of each digits part of two digit numbers in the case the number is more than one digits before adding each of these digits to the sum. Add the number to the sum as it comes if it is not a two digit number
# Create a new variable @multiple_test equal to the modulo of @sum by 10. (cd Luhn algorythm rules)
# Create an if/else statement in order to compare @multiple_test to 0 in order to know if the card passes the test, return true if card passes the test, false if it doesnt.
# End check_card method
# End class

#------------------------------------
#Rspec activation to test in coderpad
#------------------------------------
require 'rspec/autorun'

#-----------------
# Initial Solution
#-----------------

class CreditCard

  def initialize(credit_card_as_integer)
    @credit_card_as_integer = credit_card_as_integer
    @checked_number = []
    @sum = 0
    unless @credit_card_as_integer.to_s.size.to_i == 16
      raise ArgumentError.new
    end
  end

  def check_card
    single_numbers = @credit_card_as_integer.to_s.split("")
    single_numbers.each_slice(2) do |n|
      @checked_number << (n.first.to_i*2)
      @checked_number << (n.last.to_i)
    end

    @checked_number.each do |number|
      if number > 9
        splitted_number = number.to_s.split("").map(&:to_i)
        @sum += splitted_number.inject{|x,y| x + y }
      else
        @sum += number
      end
    end

    multiple_test = @sum % 10
    if multiple_test == 0
      true
    else
      false
    end
  end
end
=end

#--------------------
# Refactored Solution
#--------------------
class CreditCard

  def initialize(credit_card_as_integer)
    @credit_card_as_integer = credit_card_as_integer
    unless @credit_card_as_integer.to_s.size.to_i == 16
      raise ArgumentError.new
    end
  end

  def check_card
    sum = 0
    checked_number = []
    single_numbers = @credit_card_as_integer.to_s.split("")
    single_numbers.each_slice(2) do |n|
      checked_number << (n.first.to_i*2)
      checked_number << (n.last.to_i)
    end
        
    checked_number.each do |number|
      if number > 9
        splitted_number = number.to_s.split("").map(&:to_i)
        sum += splitted_number.inject{|x,y| x + y }
      else
        sum += number
      end
    end
    
    if (sum % 10).zero?
      return true
    else
      return false
    end
  end

end

#-----------------
#Personal testcode
#-----------------
card1 = CreditCard.new(4563960122001999)
card1.check_card #=> true
CreditCard.new(9999999999999999).check_card #=> false
CreditCard.new("lolitsafailure").check_card #=> false
CreditCard.new("4408041234567906").check_card #=> false

#-----------
# Reflection
#-----------
# What was the most difficult part of this challenge for you and your pair?
# I think we figured out a working logic very fast for this challenge but we struggled a #little bit on making a solution that passes the spec. In fact, our error was that we first #we wanted to use more than two methods and that was not apropriate so we had to re-think #about a two-methods solution: one to initialize and validate the user input, and one to #process it once validated. Also, the most difficult part was to find apropriate methods to #do the work for us but I think we did good about that.

# What new methods did you find to help you when you refactored?
# Most methods of the refactored solution were part of the initial one. A few "new" methods we used for this challenge:
# .each_slice(n) (separating an array into n arrays) used to make pairs of two numbers before we apply Luhn algorythm calculations.
# .first and .last (to locate the first and last objects in an array) used here to work with the output of each_slice
# .zero? (same as using == 0) used to compare the modulo of sum divided by ten.
# .inject used to add the two values of two digits numbers
# Even if its not a method we used the proc to_i:
# (&:to_i) is a proc: this invokes .map on array, and for each element in the array, returns the result of calling to_i on that element.

# What concepts or learnings were you able to solidify in this challenge?
# Concepts related to working with instance methods and instance variables were solidified. Also, the usage of methods used to manipulate data were solidified.




