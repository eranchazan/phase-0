# Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode
# Createa an init method for the Car class that takes a color instance variable, a model instance variable, a orientation instance variable defaulted to north, and a total distance instance variabel set to an empty array.   
# Create a drive class that defines distance and speed.
# Create a directions method that contains an intial array containing all for directions.   
# create a direction method with a conditional statement to be able to turn left or right turns
# create a speed method to state and change speed to be able to accelerate and decelerate the car to a defined speed
# create a total distance method to add up all the times the method is called to keep track of the total distance I have travelled
# create a stop method to delcared where i want to stop to be able to stop the car so I can follow traffic signs and signals
# like to see output reflecting the latest action of my car
#
# 3. Initial Solution
=begin
class Car
  attr_reader :speed, :distance, :orientation
  
  def initialize(args)
    @color = args[:color]
    @model = args[:model]
    @orientation = :north
    @total_distance = []
  end
  
  def drive(distance, speed)
    @distance = distance
    @speed = speed
    @total_distance << distance
  end  
  
  def directions(direction)
    cardinality = [:north, :east, :south, :west]
    
    if direction == :right
      index = cardinality.find_index(@orientation)
      @orientation = cardinality[index + 1]
    else
      index = @cardinality.find_index(@orientation)
      @orientation = cardinality[index - 1]      
    end
  end
  
  def mph(speed)
    @speed = speed  
  end
  
  def stop
    @speed = 0
  end
  
  def total_distance_travelled
    p @total_distance.reduce(:+) 
  end
end
 
car = Car.new({color: "red", model: "BMW"})
car.directions(:right)
p car.orientation
car.drive(12,15)
car.drive(12,15)
car.drive(12,15)
car.total_distance_travelled
=end


# 4. Refactored Solution

class Car
  attr_reader :speed, :distance, :orientation
  
  def initialize(args)
    @color = args[:color]
    @model = args[:model]
    @orientation = :north
    @total_distance = []
  end
  
  def drive(distance, speed)
    @distance = distance
    @speed = speed
    @total_distance << distance
  end  

  def pizza(type)
  @type_of_pizza = type

  def directions(direction)
    cardinality = [:north, :east, :south, :west]
    
    if direction == :right
      index = cardinality.find_index(@orientation)
      @orientation = cardinality[index + 1]
    else
      index = @cardinality.find_index(@orientation)
      @orientation = cardinality[index - 1]      
    end
  end
  
  def mph(speed)
    @speed = speed  
  end
  
  def stop
    @speed = 0
  end
  
  def total_distance_travelled
    p @total_distance.reduce(:+) 
  end
end
 
 class Pizza
access_reader :size  
 def initiatilize(size)
   @size = size
   end

def gluten(type_of_pizza)
	@type = type_of_pizza
 end
def crust
 if @size = ("large")   
 crust = "chesse"
 else
 	"dough"
 end
end


car = Car.new({color: "red", model: "BMW"})
car.directions(:right)
p car.orientation
car.drive(12,15)
car.drive(12,15)
car.drive(12,15)
car.total_distance_travelled


# 1. DRIVER TESTS GO BELOW THIS LINE
erans_car = Car.new("blue", "BMW", 25)
car.drive(25, 25)
car.stop
car.direction(:right)
car.drive(1.5, 35)
car.mph
car.mph(15)
car.drive(0.25)
car.direction(:left)
car.drive(1,4, 35)
car.stop
car.total_distance_travelled



# 5. Reflection
#What concepts did you review in this challenge?
#I learned how to put args as a argument placeholder in a initiatilize method which allow you, when you create an object, to write directly in the parenthesis a hash with the key:value pairs in the order  you want them.  
#What is still confusing to you about Ruby?
# I'm still need to gain  confidence on knowing what to do in certant circumstances. I need to continue to gain experience by learning how to solve different problems. I guess conceptually knowing how to solve a problem is confusing when tryin problems out at first. 
#What are you going to study to get more prepared for Phase 1?
# I'm going to study the Ruby Docs, and more about how to use instance variables in other methods and classes. 
#