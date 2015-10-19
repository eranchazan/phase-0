#Attr Methods

# I worked on this challenge by myself. 

# I spent [3] hours on this challenge.

class NameData
	attr_reader :name

	def initialize(person_name) 
		@name = person_name
	end
end

class Greetings 
	attr_reader :hello

	def initialize
		name_data = NameData.new("eran")   
		@hello = puts "Hello #{name_data.name}! How wonderful to see you today."
	end
end
greetings = Greetings.new
greetings.hello

# Reflection
# What is a reader method?
# A read method allows you to access an instance variable declared inside a init method. 
# What is a writer method?
# Allows you to access and change an instance variable declared inside a init method
# What do the attr methods do for you?
# They allowed me to not have any methods other than the init methods for both classes. 
# Should you always use an accessor to cover your bases? Why or Why not?
# You should only want accessors if you want all the inner workings of your data accessible to other classes. If you want your data protected, as is the case most of the time, you     # don't want to use accessors. Also, having all instance variables changeable when you       # really just want them read could lead to difficult debugging problems down the line  
# What is confusing to you about these methods.
# When using a instance variable via an accessor inside another class, it's confusing how   # to use it display it in a namespace.  
#
#Release_1
# What are these methods doing?
# def init => This declares three instance variables and their default values. 
# def print_info => This method accesses the default instance variables, and prints them to # the console inside a string.  
# def what_is_age => This prints the instance variable @age, with the the key age, and value # 28 to the console.
# def change_my_age =>  allow you to change the value of the instance variable @age.
# def what_is_name => allow you to access the @name instance variable in the class
# def change_my_name => allows you to change the value of the @name instance variable. 
# def what_is_occupation => allow you to acces the @occupation instance variable in the class
# def change_my_occupation=> allows youto change the value of the @my_occupation instance   # variable. 
# How are they modifying or returning the value of instance variables?
# All the ones that are modifying the instance variables allow for an argument and declare a # new variable name replacing the same name. All the ones returning the value just declares # the instance variable i.e implicitly returning it.  
#
# Release_2 
# What changed between the last release and this release?
# In this release we added attr_reader :age before the init method. This allow you to return # a value outside of the class, but does not change it. 
# What was replaced?
# The def what_is_age @age end method was replaced.
# Is this code simpler than the last?
# The code is simpilar, it replaces three lines of code with one. 
# Release_3
# What changed between the last release and this release?
# This release added the attr_writer :age
# What was replaced?
# The def change_my_age=(new_age) @age = new_age end method was replaced.
# Is this code simpler than the last?
# The code is simpilar since it replaces three lines of code with one. 
#
