# Introduction to Inheritance

# Refactored Solution




# We want these attributes to belong to one of the two classes Global or Local:
#   Attribute                   Global    Local    Detail 
# -> City                    |     0   |   1    |  Local City detail
# -> Students                |     1   |   1    |  Local students name detail
# -> Cohort_name             |     1   |   1    |  Same for all
# -> P0_start_date           |     1   |   1    |  Same for all
# -> immersive_start_date    |     1   |   1    |  Same for all
# -> gradutaion_date         |     1   |   1    |  Same for all 
# -> email_list              |     1   |   1    |  Local student email detail
# -> Num of Students         |     1   |   1    |  Local number of students

# We want methods to interact with the following responsabilities:
# add_student          -> Add a student to both global and a specific local city
# remove_student       -> Remove a student from both global and a specific local
# currently_in_phase   -> Get information for a student
# graduated?           -> Return a bolean if Local cohort graduated = true?

# How do we model the student? 
# -> The student is a class, inheriting methods from both local and global.
# So we want to create one object per student.
# he inherits everuthing from Global
# he inherits everything from a certain local (Chicaco / SF /NYC)
# he gets all his personal/unique atributs in the student class.
# it results an objects modeling the student containing every information he inherited.
# 1 object = 1 student, because objects have unique id into computer memory and that's a good way to deal with the differnt students in the future.

class Global

  def initialize(cohort_name,  graduated = false)
    @cohort_name = cohort_name
 #   @phase = phase
    @graduated = graduated
  end

  def num_of_students(new_num_of_students) #<- Integer
    @num_of_students = new_num_of_students
  end
  
  def students(array_of_names_as_strings)
    @student = array_of_names_as_strings
  end
  
  def add_student(name)
    @student.push(name)
  end
    
  def currently_in_phase #<- time of today 

    phase_zero   = {year: 2015, month: 9}
    phase_one    = {year: 2015, month: 11}
    phase_two    = {year: 2016, month: 1}
    phase_three  = {year: 2016, month: 2}

    time = Time.new
    today_year = time.year
    today_month = time.month

    case
    when today_year == phase_zero[:year] && today_month == phase_zero[:month] || today_month == (phase_zero[:month]+1)
      @phase = 0
    when today_year == phase_one[:year] && today_month == phase_one[:month] || today_month == (phase_one[:month]+1)
      @phase = 1
    when today_year == phase_two[:year] && today_month == phase_two[:month]
      @phase = 2
    when today_year == phase_three[:year] && today_month == phase_three[:month]
      @phase = 3
    end
      
  end
  
  def remove_student(name)
    @student.delete(name)
  end
  
  def p0_start_date(year_mo_da = "2015_09_09") #<- String
    @p0_start_date = year_mo_da
  end
  
  def immersive_start_date(year_mo_da = "11_09_15") #<- String
    @immersive_start_date = year_mo_da
  end
  
end

#Local class
class Local < Global  
  
  def location(location)
    @location = location
  end

  def graduated?(graduated = false)
    @graduated = graduated
    if @graduated == false
      puts "not yet"
    else
      puts "Graduated!"
    end
  end
  
end

# Student class
class Student < Local 
  
  def informations(first_name, last_name, email)
    @first_name = first_name
    @last_name = last_name
    @email = email
  end
  
  def graduation_date(year_mo_da = nil) #<- String, default nil?
    @graduation_date = year_mo_da
  end
  
end

  
#Copperheads = Global.new("Copperheads")

# Create a global Copperhead cohort
Copperheads = Global.new("Copperheads")
Copperheads.num_of_students(54)
Copperheads.p0_start_date
Copperheads.students(["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jefferey George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"])
Copperheads.remove_student("Bruno Zatta")
Copperheads.add_student("Bruno Zatta")
Copperheads.currently_in_phase()
#p Copperheads
p Copperheads

# Create a new Local SF cohort for Copperheads
SF = Local.new("Copperheads")
SF.p0_start_date
SF.location("San-Francisco")
SF.num_of_students(20)
SF.graduated?()
#SF.phase(0)
#SF.phase(1)
#SF.phase(2)
#SF.phase(3)
SF.students(["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Steven Broderick"])
#p SF

# Create a new Local Chicago cohort for Copperheads
# Chicago = Local.new("Copperheads")
# SF.p0_start_date
# Chicago.location("Chicago")
# Chicago.num_of_students(24)
#p Chicago

# Create a new student
Paul = Student.new("Copperheads")
Paul.informations("Gouron", "Paul Gaston", "gastongouron@gmail.com" )
Paul.p0_start_date
Paul.location("San-Francisco")
Paul.immersive_start_date()
Paul.graduation_date()  
#p Paul
