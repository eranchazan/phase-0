# Your Names
# 1) Eran Chazan
# 2) 

# We spent [3] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
    bakery_stock = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  bakery_stock.each do |pastery|
    if !bakery_stock.has_key?("item_to_make")
      raise ArgumentError.new("#{item_to_make} is not a valid input")
    end
  end

  serving_size = bakery_stock[item_to_make]
  serving_size_mod = order_quantity % serving_size

  if serving_size_mod == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 3)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
#What did you learn about making code readable by working on this challenge?
# Making code readable is crucial to making your code eligable to other people. It 
#can also make our code execute faster with fewere lines of code.  
#Did you learn any new methods? What did you learn about them?
# I learned about the .has_key method and more about the  raise ArgumentErro object. 
#What did you learn about accessing data in hashes? 
# You can access values with hash name followed by the key in brackets.  
#What concepts were solidified when working through this challenge?
# hash iteration, modules v. division, and transfering values from element to 
# element. 
#