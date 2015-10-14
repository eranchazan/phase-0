# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array of strings 
# Output: string
# Steps: 
# take in an array of string 
# IF labels is an emprt array then raise the ArgumentError message
# ELSE store array in a variable
# apply the random method on the variable representing the array to return one srting element 
# return the randomly selected string element

# Initial Solution

class Die
  def initialize(labels)
  	if labels == []
  		raise ArgumentError,"Please input an array with at least one element."
  	else
  	@labels = labels
  end
end
  def sides
  	@labels.count
  end

  def roll
  	return @labels[rand(@labels.count)]
  end
end



# Refactored Solution
class Die
  def initialize(labels)
  	if labels == []
  		raise ArgumentError,"Please input an array with at least one element."
  	else
  	@labels = labels
  end
end
  def sides
  	@labels.count
  end

  def roll
  	return @labels[rand(@labels.count)]
  end
end

sports = ["football", "basketball", "baseball", "hockey", "soccer"]
 
sports_die = Die.new (sports)

p sports_die.sides
p sports_die.roll

# Reflection
#What were the main differences between this die class and the last one you created in terms #of implementation? 
# This time around we are working with an array of values as opposed to a an integer. When  # we use the the rand method, it needs to be declared inside brackets with the array.length # argument inside its input. Since .length and rand() both ouput integers, which we can then # use to find the string value at the index returned. 
#Did you need to change much logic to get this to work?
# Not much logic was changed except for the roll method where we had to put the rand method inside the @labels[  ] bracket notation, and use @labels.count inside rand(  ). 
#
#What does this exercise teach you about making code that is easily changeable or modifiable? 
# This exercies taught me the different syntactical nuances of data types inside methods.   # I learned how to look at code as modules in which you can replace pieces of when in the    # process of modifying. 
#
#What new methods did you learn when working on this challenge, if any?
#  I learned how to use the randmom() method when inside an array.
#
#What concepts about classes were you able to solidify in this challenge?
# I solified my knowledge of instance variables, driver code with object and classes, and how to use the rand() method in a different situation. 
#
#Release 6: Submit



