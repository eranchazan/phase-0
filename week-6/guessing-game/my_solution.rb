# Build a simple guessing game

# I worked on this challenge [by myself].
# I spent [3] hours on this challenge.

# Pseudocode

# Input: Integer
# Output: Symbol
# Steps: Give an answer
# save the value of the answer in a variable
# give a guess
# IF guess == answer return :correct
# ELSIF guess > answer return :high
# ELSE guess < answer return :low

# Initial Solution

class GuessingGame 
  def initialize(answer) 
    @answer = answer
    @guess = nil
  end
  
  def guess(guess) 
    @guess = guess
    
    if @guess > @answer
      return :high 
    elsif @guess == @answer
      return :correct
    else 
      return :low
    end
  end

  def solved?
    if @guess == @answer
      return true 
    else
      return false
    end
  end

end

# Refactored Solution
class GuessingGame 
  def initialize(answer) 
    @answer = answer
    
  end
  
  def guess(guess) 
    @guess = guess
    
    if @guess > @answer
      return :high 
    elsif @guess == @answer
       :correct
    else 
       :low
    end
  end

  def solved?
    if @guess == @answer
       true 
    else
       false
    end
  end

end


# Reflection
#How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#  The instance variable answer holds the answer, and the instance variable guess holds the #  guess. Both instance variables are stored and compared in a separate methods and holds  #  their values between methods calls. They act like real-world objects when you use driver  #  code and insert values into the paramters of any declared instance object; any of the    #  instance object will output the conditional results.  
#
#When should you use instance variables? What do they do for you?
# You use instance variables when you want to declare more than one method call in a class. # Instance variables are scoped to the class, maintains its existance between methods calls, 
# and is born when the object is born. We needed to pass the @guess data to other methods for
# them to run.
#
#Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control allows you to ouput different values based on different outcomes when you
# aren't sure what it will be before hand. I had trouble with the else part of controle     # flow. I didn't know else can't take a conditional at all.  
#
#Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# Symbols are immutable, i.e. their values cannot be changed. Symbols also take up less memory than strings. 
#
#




