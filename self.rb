
#self is related to current class or object in which it is defined

# puts self.class     #gives output as object.It is "main" object

# def print
#   puts self  #Gives "main" object in methods
# end 
# print

#self in classes and modules
# class Student
  
#   def printing
#    puts self
#   end
# end
# obj = Student.new 
# puts obj.printing
# module Student
#   name = "srikanth"
#   def self.printing
#     puts "Hi i am printing method"
    
#   end
#   puts self  #It refers to the current module 
# end
# class Parent
#   include Student
# end
# obj = Parent.new
# # puts obj.printing   #it gives error
