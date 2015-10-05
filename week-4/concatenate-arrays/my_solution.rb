# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
   new_array = []
   array_1.each {|n| new_array.push(n)}
   array_2.each {|n| new_array.push(n)}
   return new_array
end
