
# importing "bcrypt" gem in file

require "bcrypt"

puts "Enter your password"
password = gets.chomp

my_hashed_password = BCrypt::Password.create(password)
puts my_hashed_password          #It gives new hashed data which is hashed using salt internally.

puts my_hashed_password == password  #gives true

puts my_hashed_password == "srikanth"  # gives false if password is not matched to "srikanth"

#Everytime we run this code it generates new hashed password.