#ruby conditional statements
# operators used with branches are generally <, >, <=, >=, ==
first_name = gets.chomp
second_name = gets.chomp

if first_name == 'actual'
    puts "I am actual pixel" 
else
   puts "I am not" 
end

if first_name=="actual" && second_name=="pixel"
    puts "Conditions satisfied"
else
    puts "conditions not satidfied"
end

operators using branches

if 2<=3
    puts 'I am true'
else
    puts "I am false"
end

if 2==3
    puts "i am at any case false"
else
    puts "i am good"
end

#if,elsif branches

if 2>3
    puts "I am not possible"
elsif 2<3
    puts "I am possible"
else
    puts "If above conditions fails i will be executed"
end
