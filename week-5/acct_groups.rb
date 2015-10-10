



# PseudoCode
# Accept an array
# Go through every element in the array 
# Split up the array into smaller arrays after every fourth index into smaller arrays
# Return a new set of individual arrays with four names in each index 

copperheads = ["Joshua_Abrams", "Syema_Ailia", "Kris_Bies", "Alexander_Blair", "Andrew_Blum",
 "Jacob_Boer", "Stevenz_Broderick", "Ovi_Calvo", "Danielle_Cameron", "Eran_Chazan", "Jonathan_Chen", 
 "Un_Choi", "Kevin_Corso", "Eric_Dell'Aringa", "Eunice_Do", "Ronny_Ewanek", "John_Paul", "Chaufan_Field",
 "Eric_Freeburg", "Jefferey_George", "Jamar_Gibbs", "Paul_Gaston_Gouron", "Gabrielle_Gustilo", 
 "Marie-France_Han", "Noah_Heinrich", "Jack_Huang", "Max_Iniguez", "Mark_Janzer", "Michael_Jasinski",
 "Lars_Johnson", "Joshua_Kim", "James_Kirkpatrick", "Christopher_Lee", "Isaac_Lee", "Joseph_Marion", "Kevin_Mark", 
 "Bernadette_Masciocchi", "Bryan_Munroe", "Becca_Nelson", "Van_Phan", "John_Polhill", "Jeremy_Powell", 
 "Jessie_Richardson", "David_Roberts", "Armani_Saldana", "Chris_Savage", "Parminder_Singh", "Kyle_Smith", "Aaron_Tsai",
  "Douglas_Tsui", "Deanna_Warren", "Peter_Wiebe", "Daniel_Woznicki", "Jay_Yee", "Nicole_Yee", "Bruno_Zatta"]

def acct_group (array)
	copperheads.each_slice(3).to_a
end

p copperheads.each_slice(3).to_a

# What was the most interesting and most difficult part of this challenge?
# The most interesting part of this challenge was learning driver code and being able to test my code on-the-fly.
# The most difficult part was trying to find the right method to make the code work. I kept looking inside the RubyDocs for 
# array, but in the end found my method in the RubyDocs for Enumerables. 
#
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# I'm getting better but still need to improve on making my steps more specific and granular. 
#
# Was your approach for automating this task a good solution? What could have made it even better?
# My approach was a good solution, I was able to solve the problem in one line of code. I don't see how I could
# have made it better. 
#
# What data structure did you decide to store the accountability groups in and why?
# I stored it in an array, since there is no corressponding values with student names, in other words
# student names didn't have a secondary value that I needed to keep track of. 
#
#What did you learn in the process of refactoring your initial solution? 
# I learned that you can combine methods into a string of methods and make your code succinct. 
#Did you learn any new Ruby methods?
# I learned .each_slice