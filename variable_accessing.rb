
#This code works as expected

# @name = "srikanth"
# puts @name

# module Actual
#   @name = "srikanth"
#   @@data = "srikanth gudimetla"
#   def self.printing
#     puts @name
#     puts @@data
#   end
#   # self.printing          #to access method within the module you need to write module before the method name and access it using "." operator
# end
# Actual.printing   
# Actual::@name     #error while accessing instance variable
# Actual::@@data   #error while accessing class variable

#class variables
# class Student
#   puts "class started"   #this code is executed
# end

class Student

  #This code works
  # @@name = "srikanth"
  # puts @@name   
  # @name = "actual"
  # puts @name
  # Name="srikanth"
  # puts Name
end
# obj = Student.new


#to access module classes,methods and general variables and constants syntax is defined bellow

# constants
#module name::constant variable name

#general variables
#module name:: variable name

#classes
#module name::class name

#methods
#module name.method name  (method should has module name prefixed with it is original name in the module also)


module DataOne
  def DataOne.print
    puts "hi"
   return @@name = "srikanth"   #does not give value
  end
end
DataOne.print
