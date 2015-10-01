puts "Hello there, What\'s your fist name?"
first = gets.chomp
puts "What\'s your middle name?"
middle = gets.chomp
puts "What\'s your last name?"
last = gets.chomp
puts 'Please to meet you ' + first + " " + middle +" " + last

puts 'Hello there, what\'s your favorite number?'
number = gets.chomp
numbers = number.to_i
add_one = numbers + 1
character = add_one.to_s
puts "Here's an even better number" + character 

=begin

How do you define a local variable?
To define a local variable you type the variable name you want to us followed by the equal sign followed by the value or object the variable represents. 

How do you define a method?
To define a method you type def followed by the method name followed by the number of arguments in parentheses. 

What is the difference between a local variable and a method?
A local variable is a variable only recognized by the file it is written in. It's just a placeholder that represents a copy of the block of code that can be reused and calculated on in other parts of the file. 
A method is a function that accepts input and spits out an output based on the code you apply on the input in the body. It can be recognized globally.  

How do you run an RSpec file from the command line?
rspec filename

What was confusing about this material? What made sense?
What was confusing at first was how to add spaces when printing lines of strings to the console. 
What made sense was how it is very important to apply .to_s to integers in puts statements. 
=end