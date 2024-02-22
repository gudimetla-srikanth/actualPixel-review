
# a = "srikanth"
# puts a.slice(1,4)   #output gives rika

# puts a.match?('sri')  # output is true

# puts a.include?('s')  #outputs true

#global variables
# name = "srikanth"
# def creating
#    puts name  #gives error
# end
# creating

# $name  = "srikanth"
# def creating
#   puts $name
# end
# creating

#class variables

# class Actual
#   @@name = "srikanth"
# end
# puts Actual.class_variable_get(:@@name)  #one way of accessing class variable

#iterators

# 20.times { |val| print val," "}
# (1..20).step(5) {|val| print val," "}    #it skips 5 steps

#runs infinity times
# while 2<3 do
#   print "hi"
# end
# puts "enter your code"
# obj={name:'srikanth'}
# puts obj[:name]

#nesting scope is not applicable in ruby
# def create
#   puts "I am none"
#   $name = "srikanth"
#   puts $name
#   def create_one
#     puts "I am one"
#     puts $name
#   end
#   create_one
# end
# create
# puts $name     #global variables declared in functions can be used in outside of the decalred scop

#exceptions
# puts "Exceptions started"
# begin
#   raise "new exception"
# rescue 
#   puts "exception rescued"
# ensure
#   puts "I am excuted regardless"
# end





