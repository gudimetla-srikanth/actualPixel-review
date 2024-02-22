require './modules.rb'

# puts Start.create   #accessing module method
# val= Start::name    #accessing module variables
# puts val
# obj = Start::Student.new
# puts obj.create_one

class Mine
include Start
  def createing
    puts "creating"
  end
end
obj1= Mine.new

puts obj1.createing
puts obj1.create
