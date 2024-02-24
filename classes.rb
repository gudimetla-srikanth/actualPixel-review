
#classes in ruby
#getters and setters using in class

# class Student     #declaration of the class
#   @student_name
#   @student_branch

#   #setting name
#   def student_name=(name)
#     @student_name = name
#   end

#   #getting name
#   def student_name
#     @student_name
#   end

#   def to_s        #Intially it will be called when object is created
#     return "I will be called when object created"
#   end
# end

# student_obj = Student.new    #creating object for Student class
# student_obj.student_name="srikanth"
# puts student_obj.student_name


#setting setters and getters for every variable becomes very hard.so,ruby provides "attr_accessor" to set and access the variables very easily

# class StudentTwo
#   attr_accessor :student_name,:student_branch  

#   #attr_reader only allows user to read and we can not set the value for it.
#   attr_reader :student_age
# end

# student_obj_two = StudentTwo.new
# student_obj_two.student_name = "srikanth"
# puts student_obj_two.student_name
# student_obj_two.student_branch = "CSE"
# puts student_obj_two.student_branch
# # student_obj_two.student_age = "21"    #gives us error when we try to assign value to it.


#setting values to variables

# class StudentThree
#   attr_accessor :student_name,:student_branch

#   #setting initial values
#   def initialize(name,branch)
#     @student_name = name
#     @student_branch = branch
#   end

#   #default function or constructor of class
#   def to_s
#    return "My name is #{@student_name} and my branch is #{@student_branch}"
#   end
# end

# student_obj_three = StudentThree.new("srikanth","cse")
# puts student_obj_three

#nested classes in ruby

# class Parent
#   # class ChildNested
#   # end
#   # def print
#   #   @@name = "srikanth"
#   # end
#   # attr_accessor :name,:data
#   # def print
#   #   @@name = "srikanth"
#   # end

#   #this below code works properly
#   # Name = "srikanth"
#   # def print
#   #   Name
#   # end
  
# end
# obj = Parent.new
# puts obj.print

# class Parent
#   Name = "I am aactul pixel"
#   # puts Name.class
#   class Child
#     def print
#       puts "I am nsested class"
#       Name
      
#     end
#   end
# end
# parent_obj = Parent.new
#this is one way of creating objects for nested classes
# nested_obj = Parent::Child.new
#or
# nested_obj = parent_obj.class::Child.new
# puts nested_obj.print
# puts parent_obj.class