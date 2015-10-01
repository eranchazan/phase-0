# I worked on this challenge [with Daniel Woznicki].


# Your Solution Below
def valid_triangle?(a, b, c)
	if (a + b > c)&&(a + c > b)&&(c + b > a) == true 
		return true
	else return false
	end
end
