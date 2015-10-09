# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
#PseudoCode for an Array
# Accepts an array 
# iterates through the array
# for each element, seatch for letter
# if element contains letter, delete element 

def my_array_deletion_method!(source, thing_to_delete)
 source.delete_if{|word| word.to_s.include?(thing_to_delete)}
end
# PsueudoCode for a Hash
# Accept hash and keyword
# iterate through hash
# if key matches key in the 'if' statement then delete key and value
#
def my_hash_deletion_method!(source, thing_to_delete)
source.delete_if{|pet, age| pet==thing_to_delete}
end

# Identify and describe the Ruby method(s) you implemented.
#.delete_if => deletes every element of self which block evaluates to true. 
#.to_s => this converts an object to a string
#.include? => this checks each object and returns true if the parameters given 
# is present in the object being checked
#
# Teach your accountability group how to use the methods
# You want to use the delete_if methods when you are checking for
# selective entries in an if statement. delete_if is like an if statement
# in that you need to declare a function block within {} where you give it 
# an iterator and an conditional statement.    
#
#Share any tricks you used to find and decipher the Ruby Docs
# When looking through rubydocs I looked up that most resemble my pseudocode statement.
# If non exist then I look for candidates that could be a susbstitute. If I still can't find
# any, then I google what I want and see if what other people use in their solutions which I 
# then look up in the RubyDocs. 
#
# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#