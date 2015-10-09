# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Isaac Lee]

# I spent [4] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# The input is an array containing integers or strings
# What is the output? (i.e. What should the code return?)
# An array with each entery of the input that shows up the most amount of timne. 
# What are the steps needed to solve the problem?
# input an Array containing strings or integers
# createa a empty hash
# set input equal to hash key
# add values from the keys in the hash to a final array
#


# 1. Initial Solution
def mode (input) #input an Array containing strings or integers
 hash = Hash.new #createa a empty hash
 answer = Array.new #create an empty array
 #number = input.count(1)
 input.count {|k| hash[k] = input.count(k) }  #set input equal to hash key
 hash.each {|k,v| answer.push(k) if v == hash.values.max} #for each hash add key to array if its value equals (.values.max)
 return answer #return an array of the keys whose values were being compared in the hash.values.max method
end

#mode ([1,1,2,3,4,4,5,5,6])

# 3. Refactored Solution


def mode (input) 
	hash = Hash.new 
	answer = Array.new 
	input.count {|k| hash[k] = input.count(k) } 
	hash.each {|k,v| answer.push(k) if v == hash.values.max}   
	return answer 
end

# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# We decided to take the string array and .count through it to convert the string values in the 
# array to key values in a hash. Then we called the .each method on the hash; inside the .each method 
# we applied an IF statement in conjunction with the .values_max method on the v in the key:value pair in the hash.    
# And finally pushed the corresponding key to the value being compared to the array answer for our answer. 
#
#
#Were you more successful breaking this problem down into implementable pseudocode 
# We were able to break down the first steps in the problem, but couldn't figure out how to 
# find query the max value of keys and push push it to an array. 
#
#
#What issues/successes did you run into when translating your pseudocode to code?
# We weren't sure how to go from array to hash back an array and collect the max value
# we were going after. Psuedocode let us know what to do, but didn't tell us the multiple-method  
# need to get the job done. 
# 
#What methods did you use to iterate through the content? Did you find any good ones 
#when you were refactoring? Were they difficult to implement?
# Our fist steps were to declare an empty hash and array needed in order to have the vehicles 
# needed to transport the data throughout the method.   
# We used the string .count method to iterate throught the initial string array where we moved each
# array element to a hash key.  
# We next evaluated the value of each has key with an IF =value.max method inside and pushed its 
# corresponding key to the final array which we returned.   
#
#
#
#







