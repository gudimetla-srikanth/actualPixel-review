
#symbols are like strings but not strings
=begin
strings work with data but symbols are identifiers and are unique.
symbols are used to represent identifiers
symbols are used in methods,classes mainly
=end

# str = "srikanth"
# sym = :str
# puts "This is string val : #{str}"  #It gives output "srikanth"
# puts "This is symbol val : #{sym}"   #it gives output str
# puts sym.class    #it gives ouput as "Symbol"

#strings create different object memory locations when they are assigned to different variables
#symbols does not create they are uniques.same symbol assigned to different variables will point to same memory location.
# str = "srikanth"
# str1 = "srikanth"
# sym = :srikanth
# sym1 = :srikanth

# #gives different object id's
# puts str.object_id
# puts str1.object_id
# #gives same object id's
# puts sym.object_id
# puts sym1.object_id

#symbols in classes are used to define instance variables
#symbols are very fast compared to strings

# str = "print"
# def print
#   puts "hi hello"
# end
# send(str)
# puts str
# str = :srikanth
# str1=:gudimetla
# str2 = "srikanth"
# str3 = "gudimetla"
# str3=str+str2  #gives error


