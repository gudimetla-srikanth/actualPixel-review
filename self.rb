
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

#self method in classes

# class Student
#   @@name = "srikanth"   #It is a class variable
#   def method1
#     puts "print all methods"
#     puts self.__id__
#   end
#   def self.method2
#     puts "this is as class method"
#     puts self.__id__
#   end
# end
# obj = Student.new
# puts obj.__id__      #It gives object id
# puts Student.__id__   #It gives class id
# puts "class id val",Student.__id__
# puts "object id val",obj.__id__
# puts Student.method1    #can not access nethod using class variable
# puts Student.method2      #class method can be called with class name outside of the class
# puts obj.method2          #object can not access method prefixed with self
# puts obj.method1


