
#Simple calculator project 

puts "Enter first_value :"
first_value = gets.chomp
puts "Enter second_value :"
second_value = gets.chomp
puts "Enter your action name :"
action = gets.chomp

def addition_f(first,second)
    return first.to_f+second.to_f   #by default input is string that is why i am converting to float
end

def subtraction_f(first,second)
    return first.to_f-second.to_f
end

def multiply_f(first,second)
    return first.to_f*second.to_f
end

def division_f(first,second)
    return first.to_f/second.to_f
end

if action == "addition"
    value = addition_f(first_value,second_value)
    puts "addition value is : #{value}"

elsif action == "subtraction"
    value = subtraction_f(first_value,second_value)
    puts "subtraction value is : #{value}"

elsif action == "multiply"
    value = multiply_f(first_value,second_value)
    puts "multiply value is : #{value}"

elsif action == 'division'
    value = division_f(first_value,second_value)
    puts "division value is : #{value}"

else
    puts "You have enetered wrong action name"

end
