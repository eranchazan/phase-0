# Die Class 1: Numeric

# I worked on this challenge by myself, 

# I spent [3] hours on this challenge.

# 0. Pseudocode

# Input: Number of sides
# Output: Random number
# Steps: Initialize the number of sides for your die 
# If sides is less than one, let the person know to change it to at least one.
# Store the argument in a variable
# apply the random.Math class method on the variable and return it. 

# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
    	raise ArgumentError, "Invalid sided die, please select a die with at least one side."
    end	
  @sides = sides
  end

  def sides
    return @sides 
  end

  def roll
    return rand(@sides) + 1
  end
end


# 3. Refactored Solution

class Die
  def initialize(sides)
    if sides < 1
    	raise ArgumentError,  "Invalid sided die, please select a die with at least one side."
  @sides = sides
  end

  def sides
     @sides 
  end

  def roll
    return rand(@sides) + 1
  end
end





# 4. Reflection

#What is an ArgumentError and why would you use one?
# An ArgumentError is when there's a discrepency between the number of arguments or argument type
# and user input when declaring an object's arguments. 
#What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# I implemented the rand method that is inheritely provided in Ruby, an instance variable, and a raise argumenterror
# call. All were hard to find, but easy to implement. 
#What is a Ruby class?
# A Ruby class is a template for creating instance objects with initial values for memeber variables and methods. 
# In other words, a class is like a blue print for what the variables and methods will be in all the objects born from it. 
#Why would you use a Ruby class?
# You would use a Ruby class becuase you want to automize the process of making objects. You don't want to be constantly
# declaring the definitions of variables and methods every time you want to use them. You can also use classes to give
# shared powers to totally different objects because they are spawned form the same parent entity. 
#What is the difference between a local variable and an instance variable?
# A local variable id defined and scoped to a method.  A instance variable is scoped to the class and declared in a object 
# and dies when the object dies. It exists between method calls. 
#Where can an instance variable be used?
# Instance variables can be used anywhere the object is used. 




