# Pad an Array

# I worked on this challenge with Mary France Han.

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#input: array and a integer, optional argument

# What is the output? (i.e. What should the code return?)
#output: array

# What are the steps needed to solve the problem?
#
# IF length of array is less than integer value 
# find the integer difference between th array length and the integer value  
# add padding integer difference of times to the array. 
#
#ELSE return the original array itself.
#
#

# 1. Initial Solution #destructive
#destructive 
def pad!(array, min_size, arg = nil)
  if array.length < min_size
    (min_size - array.length).times do |i|
      array << arg
    end
end
   return array
  
end

 #non-destructive
def pad(array, min_size, arg = nil)
  new_array = array.clone

  if array.length < min_size
    (min_size - array.length).times do |i|
      new_array << arg
      end
    end
     return array	
  
end


# 3. Refactored Solution
#rescue Exception => e

#destructive	

def pad!(array, integer, arg = nil)
  if array.length < integer
    (integer - array.length).times { |i| array << arg}
  else array
 end
end

 #non-destructive
def pad(array, integer, arg = nil)
  new_array = array.clone
  if array.length < integer
   (integer - array.length).times { |i| new_array << arg}
else new_array
 end
end


# 4. Reflection
=begin 

Were you successful in breaking the problem down into small steps?
I was mostly successfull in breaking down the problem into small steps. 
I could only break down the problem into five psuedo steps. I bet I could have gotten even 
more detailed. 

Once you had written your pseudocode, were you able to easily translate it into code? 
I could transalte the if and times methods easily, I still had a hard time solving
how to add the agrument and array. 

What difficulties and successes did you have?
My successes were being able to map out the methods and iterators needed to solve the problem.
My failures were still needing help with other methods needed like pushing and cloning to make it
all come together. 

Was your initial solution successful at passing the tests?
No, it took countless iterations and experiments to solve the problem. 

If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
I still haven't mastered any of the methods. I uses a "+" instead of "<<" in order to try to combine the 
array and argument. Also, I couldn't figure out the syntax to the .times method still. 

When you refactored, did you find any existing methods in Ruby to clean up your code?
Not this time, we had to figure them out the first time. 

How readable is your solution? Did you and your pair choose descriptive variable names?
Our code was fairly reasonable to read. We chose standard variables names. 

What is the difference between destructive and non-destructive methods in your own words? 
A destructive method changes permanentley the object the variable is pointing to. A non-destructive
variable creates a second different object for the variable to point to.   


=end
