# Numbers to Commas Solo Challenge

# I spent [6] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# => integer
# What is the output? (i.e. What should the code return?)
# =>  string
# What are the steps needed to solve the problem?
# Convert integer to a string 
# IF string length is less then three return as is. 
# ELSE break up the string into individual elements and insert a comma in multilpes of forth to last elements.

# 1. Initial Solution

def separate_comma (integer)
  string = integer.to_s
  if string.length == 1
    return string
  elsif string.length == 2
    return string 
  elsif  string.length == 3
    return string 
  elsif 
    string.length == 4 
    string.insert(-4,",")
    return string
  elsif 
    string.length == 5 
    string.insert(-4,",")  
  elsif 
    string.length == 6 
    string.insert(-4,",")
  elsif 
    string.length == 7
    string.insert(-4,",")
    string.insert(-8,",")
    return string
  elsif
    string.length == 8
    string.insert(-4,",")
    string.insert(-8,",")
    return string 
  else
    string.length == 9
    string.insert(-4,",")
    string.insert(-8,",")
    return string 
  end
end



# 2. Refactored Solution
def separate_comma (integer)
  string = integer.to_s
   if string.length < 3
    return string
   elsif string.length >= 3 && string.length <= 6
     string.insert(-4,",")
     return string
   else string.length >= 7 && string.length <= 9
      string.insert(-4,",")
      string.insert(-8,",")
     return string
   end
end



# 3. Reflection
#What was your process for breaking the problem down? What different approaches did you consider?
#My initial process was to convert the integer into a string and then apply .to_s method. Following
#this I thought about applying the .split(3) method and the .slide() method, but then I realized these 
#methods don't work with srtings. So I went back to the RubyDocs and used the string methods .insert and 
#.length for each situation up to 9 index values.  
# 
#Was your pseudocode effective in helping you build a successful initial solution?
#It was helpful to get me going, but didn't help me when I was in "the weeds" when trying to get my code to work.
#
#What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? 
#I used the same methods but used the && conditional to makes ranges for the index values.   
#
#Did it/they significantly change the way your code works? If so, how?
#They made my code a fraction of the length needed to solve the same problem.
#How did you initially iterate through the data structure?
#No, they didn't and in the end I ran out of time and they still didn't work perfectly. 
#I'm going to keep working on it after I turn this in. 
#
#Do you feel your refactored solution is more readable than your initial solution? Why?
#My refactored solution reads much better than my initial solution, it can show the results
#of five line in my initial solution in one line, the onle line much more rich then the five simple lines. 



