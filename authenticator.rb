
# simple authenticator application

users =[
  {'username'=>'actual','password'=>'pixel'},
  {'username'=>'srikanth','password'=>'gudimetla'},
  {'username'=>'jack','password'=>'password'},
  {'username'=>'jane','password'=>'password1'}
]
def user_authentication(user,password,users)
  users.each do |record|
    if record['username'] == user && record['password'] == password
      return 'Your are a authorized user'
    end
  end
  return 'Your are not authorized'
end
attempts = 1
puts 'Number of attempts are limited remember it'
while attempts < 3
  print "Enter username : "
  user = gets.chomp
  print "Enter password : "
  password = gets.chomp
  puts user_authentication(user,password,users)
  puts 'Enter n to exit or any key to continue to program'
  n_val = gets.chomp.downcase
  break if n_val == 'n'
  attempts+=attempts
end
if attempts >=3
  puts 'You have exceeded the limit of attempts'
else
  puts 'You have terminated the program' 
end
