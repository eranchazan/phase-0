# Analyze the Errors

# I worked on this challenge by myself.
# I spent [2] hours on this challenge.

# --- error -------------------------------------------------------
=begin
cartmans_phrase = "Screw you guys " + "I'm going home." 
=end
# This error was analyzed in the README file.
# --- error -------------------------------------------------------
=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?" end   
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb 
# 2. What is the line number where the error occurs?
# => line 15
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# =>  The interpreter says it did not expect an end to the input, rather it expected the keyword_end.
# 5. Where is the error in the code?
# => At the end of the while loop after the puts statement. 
# 6. Why did the interpreter give you this error?
# => There is no end to the while loop. You need two ends, one for the function cartman_hates, and another for the while loop. 
=end
# --- error -------------------------------------------------------
=begin	

def south_park 
end

=end

# 1. What is the line number where the error occurs?
#=> Line 35
# 2. What is the type of error message?
#=> Undefined local variable or method. 
# 3. What additional information does the interpreter provide about this type of error?
#=> It informs me it's a Name error for the object. 
# 4. Where is the error in the code?
#=> It is the block itself. 
# 5. Why did the interpreter give you this error?
#=> The interpreter doesn't know what to do with the variable given. Need to type 'def' and 'end' to create the framework of a method. 

# --- error -------------------------------------------------------
=begin
def cartman()
end
=end
# 1. What is the line number where the error occurs?
#=> Line 54
# 2. What is the type of error message?
#=> Undefined method, NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
#=> for main:Object (NoMethodError)
# 4. Where is the error in the code?
#=>  the block itself
# 5. Why did the interpreter give you this error?
#=> The interpreter can't execute the method given. Need to type 'def' and 'end' to create the framework of a method.

# --- error -------------------------------------------------------
=begin
def cartmans_phrase (arg_1)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')
=end
# 1. What is the line number where the error occurs?
#=>  Line 69
# 2. What is the type of error message?
#=>  in error, ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#=>  Wrong number of arguments (1 for 0) (ArgumentError)
# 4. Where is the error in the code?
#=>  On line 70 after cartmans_phrase, there should be a set of parentheses with one declered argument. 
# 5. Why did the interpreter give you this error?
#=>  No arguments are declared in the parameters of this function, thus preventing any user input to be outputed.  
# --- error -------------------------------------------------------
=begin
	
rescue Exception => e
	
end
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says('I hate Kyle')
=end
# 1. What is the line number where the error occurs?
#=>  Line 89
# 2. What is the type of error message?
#=>  in error, ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#=>  Wrong number of arguments (0 for 1) (ArgumentError)
# 4. Where is the error in the code?
#=>	 On line 92, 
# 5. Why did the interpreter give you this error?
# => You need to provide parentheses after 'cartman_says' to provide a place for user input.  



# --- error -------------------------------------------------------
=begin
	
rescue Exception => e
	
end
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 2)
=end
# 1. What is the line number where the error occurs?
#=> Line 113
# 2. What is the type of error message?
#=>  in error, ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#=>  `cartmans_lie': wrong number of arguments (1 for 2) (ArgumentError)
# 4. Where is the error in the code?
#=>	 On line 117, only one argument provided by the user. 
# 5. Why did the interpreter give you this error?
#=>  The computer can't run the method since both arugments haven't been answered by the user.  

# --- error -------------------------------------------------------
=begin
 "Respect my authoritay!" * 5
=end
# 1. What is the line number where the error occurs?
#=>	 Line 136
# 2. What is the type of error message?
#=>	  in `*' error, TypeError	
# 3. What additional information does the interpreter provide about this type of error?
#=>  String can't be coerced into Fixnum (TypeError)
# 4. Where is the error in the code?
#=>	 The error is with the order of 5 * "Respect my authoritay!", the order of the two need to be switched. 
# 5. Why did the interpreter give you this error?
#=>  You can't multiply the integer 5 by "Respect my authoritay!" times.  

# --- error -------------------------------------------------------
=begin
amount_of_kfc_left = 20/1
=end

# 1. What is the line number where the error occurs?
#=>	Line 151
# 2. What is the type of error message?
#=>	in error, ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#=>  `/': divided by 0 (ZeroDivisionError)
# 4. Where is the error in the code?
#=>  In the fraction 20/0.
# 5. Why did the interpreter give you this error?
#=>  In the Ruby math module, you can't divide by 0. 

# --- error -------------------------------------------------------
=begin
require_relative "cartmans_essay.md"
=end
# 1. What is the line number where the error occurs?
#=>  Line 167
# 2. What is the type of error message?
#=>  in error, load error 
# 3. What additional information does the interpreter provide about this type of error?
#=>  `require_relative': cannot load such file -- /Users/eranchazan/github/phase-0/cartmans_essay.md (LoadError)
# 4. Where is the error in the code?
#=>  Can't figure it out. 
# 5. Why did the interpreter give you this error?
#=>  The interpreter can't find the path to this file. 


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
The def cartman_hates(thing) function was hardest to read. I didn't realize at first that you need two 'end' statements in this function. 

How did you figure out what the issue with the error was?
Based on syntax error, I studied the code and checked all ruby rules that applied to the problem. Eventually I figured it out by finding what was missing on a check list of all the needed syntax. 

Were you able to determine why each error message happened based on the code? 
I was able to figure out all but the last one. Whoever is grading this assignment please tell me the answer!
When you encounter errors in your future code, what process will you follow to help you debug?
In the future I will systematically go through each section of the error code (i.e. the colored boxes) and focus on what each section says. 
=end



