# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array of numbers
# Output: an integer or float
# Steps to solve the problem.

# x = 0 
# sum = 0
# while x <= array.length-1
# sum += array[x]
# x += 1 

# 1. total initial solution
def total (array)
  x = 0    
  sum = 0
  while x <= array.length-1
    sum += array[x]
    x += 1
  end
    return sum 
end

# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: an array 
# Output: string
# Steps to solve the problem.
# Take an array and add the values together until the index    
# equals the arrat length minue one. At the end we capitalize the first
# letter in the first word and add a period after the last word.  

# 5. sentence_maker initial solution
def sentence_maker(array)
	x = 0
	sum = ""
	while x <= array.length-1
		if x == array.length-1
			sum += array[x].to_s
			x += 1
		else 
			sum += array[x].to_s + " "
			x += 1
		end	
	end
	sum += "."
	sum.capitalize!
	return sum
end


# 6. sentence_maker refactored solution
def sentence_maker(array)
  x = 0
  sum = ""
  while x <= array.length-1
    sum += array[x].to_s + " "
    x += 1
  end
  sum.rstrip!
  sum += "."
  sum.capitalize!
  return sum
end
