

=begin
In ruby variables have certain scopes to expose themselves to a program.
we have four types of scopes in ruby.They are
1.variable scope => This scope will be accessed where it is declared.It does not allow methods,classes and module to access even though they are in same root.
2.constants   => These are accessed where it is defined and available to all in declared scope.
3.class variables  => These are declared and can be accessed to all nested classes
4.instance variables =>This scope works as similar as variables and are available to all methods within the class.
5.global variables   => This is a scope it is available to overall program.

=end

# name = "actual pixel"             #variable
# $name = "srikanth gudimetla"      #global variable
# @name1 = "srinivas"               #instance variable
# NAME = "sattaiah"                 #constant (begins with Capital letter)
# # @@name2 = "ratan tata"          #class variable.class variable access from top level (runtime error)
# def method_one
#   # puts name         #gives an error
#   # puts $name        #gives output as "srikanth gudimetla"
#   # puts @name1       #gives output as "srinivas"
#   # puts @@name2      #gives run time error
#   puts NAME
# end
# method_one


#scope in classes
# class Student
  # @@name = "srikanth"
  # @@age = "23"

  #whenever a object is created with passing paramater.It will execute this method and then calls default "to_s" method.
  # def initialize(name)
  #   @@name =-name
  # end
  # def to_s
  #  @@name
  # end
  
# end
# puts Student   #prints name of the class

#object creation of class
# student_obj = Student.new    #It access only def to_s  method.
# puts student_obj   
# student_obj = Student.new("srikanth")     #It prints name
# puts student_obj  
# obj = Student.new
# puts obj

# class Basic
#   Name = "srikanth"

#   #constants can be accessed in declared scope environment in class
#   def to_s
#     Name      
#   end
#   # we can create modules in classes
#   # module New_One
#   #   data = "srikanth"
#   # end
# end
# obj = Basic.new
# puts obj


#scopes in modules

# module Student 
#   Name = "srikanth"
#   class Child
#     def prints
#       Name
#     end 
#   end
# end 
# obj = Student::Child.new
# puts obj.prints

# data = "srikanth"
# puts data 
# val = !!data
# puts val

# (||=) this operator is used to get the data if in case data is available it will return the data instead of making call to database


