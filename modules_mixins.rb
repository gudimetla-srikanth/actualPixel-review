
#modules are created as below

module Methods
  name = "srikanth"
  def printing
    puts "I am print method"
  end
  def writing
    puts "I am writing method"
  end
end

#creating class
class ModuleUser
  include Methods
end

module_obj = ModuleUser.new  #creates object for ModuleUser class

# puts module_obj.printing   #we can access module methods by using objects.printing module print method
# puts module_obj::name       # we can access module variables with class object
# puts module_obj.writing    #printing module writing method


#mixins are nothing but including module in class are called mixins
#modules are similar like class but not class


