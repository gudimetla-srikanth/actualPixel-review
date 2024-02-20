
#Ruby programming language is dynamic means no need to assign types before using.
# puts "welcome to ruby world"

first_name = "srikanth"
last_name = "gudimetla"

#string concatination
puts first_name + last_name
puts first_name + " " + last_name

# The difference between "puts" and "print" is "print" prints evrything in one line and "puts" prints one statement in only one line.

print first_name
print last_name
p first_name

#string interpolation 
sentence = "My first name is #{first_name} and my last name is #{last_name}"
puts sentence

#string sample methods

#lenth of the string
puts first_name.length

#type of variable
puts first_name.class

#all methods of strings
puts first_name.methods

#converting to integer and we get value is "0"
puts first_name.to_i

#reverses the string
puts first_name.reverse

#converting to integer and we get value is "0.0"
puts first_name.to_f

#capitalizes the first letter of the string
puts first_name.capitalize

#capitalizes all the letters of strings
puts first_name.upcase