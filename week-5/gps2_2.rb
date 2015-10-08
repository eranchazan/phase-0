=begin
TO CREATE A NEW LIST

Input: a list of grocery items and corresponding values
Output: A Hash

A hash containing grocery items key and quantity values
Create a hash containing grocery items key and quantity values
=end

=begin
input: a string and an integer
output: a hash

TO ADD A QUANTITY TO THE LIST
Add a new invidual value pair with a grocery name and quantity
Use a method that takes a string and integer and adds it to the preexisting hash
=end

=begin
REMOVE AN ITEM FROM THE LIST

input: hash, string
output:	the same hash without the string

Use a method that takes a string and removes it from the hash	
end

=begin
UPDATE QUANTITIES FOR ITEMS IN YOUR LIST
input: hash and key:value pair
output: hash

Use a method takes a key:value pair and updates the value of grocery item and quantity item
return a new hash with the updated grocery quantity

=end

=begin
PRINT THE LIST
input: Hash
output:	string version of Hash

	Use a method that takes the Hash and Puts it to the screen
=end

def new_grocery_list
	list = Hash.new 
end

def add_item(list, grocery_item, quantity)
	list[new_item] = new_quantity
	return list
end

def remove_item(list, grocery_item, quantity)
	list.delete(grocery_item) 
	return list
end

def update_quantities(list, grocery_item, quantity)
	list[grocery_item] = quantity
	return list 
end

def print_list (list)
	puts list 
end

#Initial Solution

p test_list = new_grocery_list 
p add_item(test_list, test, quantity_1)
p remove_item(test_list, test)
p update_quantities(test_list, test, quantity_1)
P puts test_list 

#Test
p eran_grocery_list = Hash.new 
p add_item(eran_grocery_list, "Lemonade", 2)
p add_item(eran_grocery_list, "Tomatoes", 3)
p add_item(eran_grocery_list, "Onions", 1)
p add_item(eran_grocery_list, "Ice Cream", 4)
p remove_item(eran_grocery_list, "Lemonade")
p puts eran_grocery_list

#Refactor

def new_grocery_list
	list = {}
end

def add_item(list, new_item, new_quantity)
	list[new_item] = new_quantity
	 list
end

def remove_item(list, new_item, new_quantity)
	list.delete(grocery_item) 
	 list
end

def update_quantities(list, new_item, new_quantity)
	list[grocery_item] = quantity
	 list 
end

def print_list (list)
	 puts list 
end

=begin
Reflection
What did you learn about pseudocode from working on this challenge?
I learned that pseudocode can make the process of writing code much more pleasent 
whe you create a blue print for your ideas before delving into writing the code itself. 
Pseudocode forces you to think simply and to break your ideas into managable steps.  

What are the tradeoffs of using Arrays and Hashes for this challenge?
Arrays would be beneficial if you don't need quantities, but just the grocery items themselves.
Hashes are beneficial if you have two corresponding parameters you are looking after.   

What does a method return?
A method returns a new value of the input.  

What kind of things can you pass into methods as arguments?
You can pass integers, strings, or even other arrays. 

How can you pass information between methods?
You set a variable equal to the result of a method call in one variable, and then call that same
variable in another method. 

What concepts were solidified in this challenge, and what concepts are still confusing?
	I have a much better grasp of best pratices for writing pseudocode. 
	I'm still need to work on best prctices in my logic behind my pseduocode steps.  
=end

