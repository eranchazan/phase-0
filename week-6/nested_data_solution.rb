# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:

p array[1][1][2][0]

p array.at(1).at(1).at(2).at(0)

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:

p hash.fetch(:outer).fetch(:inner).fetch("almost").fetch(3)

p hash[:outer][:inner]["almost"][3]

# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:

p nested_data[:array][1][:hash]

p nested_data.fetch(:array).at(1).fetch(:hash)


# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# attempts:

number_array.each { |element| p element}
number_array.each { |element| puts element}

puts number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
# attempts:

puts startup_names

p startup_names

#puts has lots of Ruby magic added to it, one of the things it does is iterate over inner arrays 
# while outputting to the console. p shows exactly what is being compiled with less added magic 
# than puts.


#Reflection
#What are some general rules you can apply to nested arrays?
# You can access index values of nested arrays by having multiple brackets and their corresponding 
# values next to each other. You can also use the .at method between nested array to navigate through 
# you nested arrays.
#What are some ways you can iterate over nested arrays?
# If you use puts when iterating, it printe evey nested array element on a new line, 
# if you use p, then it prints evey nested array still within their brackets.  
#Did you find any good new methods to implement or did you re-use one you were already familiar with? 
# I learned at .at method with array and the .fetch method with hashes. I already knew about the .hash
# methods earlier, but not in the context of this iterating through hashes. 
#What was it and why did you decide that was a good option?
# I used .at and .each in conjunction with each other to find nested hashes in sides arrays. I used these
# methods becuase it made my code very readable. 





