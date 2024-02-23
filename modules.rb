
#modules in ruby

# module Start
#   puts "module is activated"
#   name = "srikanth"
#   def Start.create
#     puts "I am created"
#   end
#   class Student
#     def create_one
#       puts "It is created one"
#     end
#   end
# end

# module Sorry           # class or module name must be a constant
#   name = "srikanth"
# end

module Student
  @@data1 = "srikanthm g"
  @data = "srikanth gudimetla"
  name = "srikanth"
  def Student.method_f
    puts "I am called using module"
    @data                    #we can work with instance variable declared in modules
    @@data1                  #we can work with class variables in modules
  end
  $name = "srnivas"
  class Child
    puts "class started"
  end
end

# puts $name   #It can be accessed and no error when accessing
# puts Student.method_f   #The method should have module name when declaring in module.so that we can access it properly.
# puts Student::name   #accessing module variable
# puts Student::Child.new  #we can access classes declared in module using this typo.
# puts Student::$name   #gives us error

# puts Student:@data  #we can not access instance variables
# puts Student::@@data1        #we can not access class variables

# puts Student.method_f



