
#ruby supports dictionaries simply we call them as hashes in ruby.
my_hash = {'name'=>"srikanth",'position'=>"trainee"}
puts my_hash

puts my_hash['name']  #to access elements the syntax is this

my_hash['age'] = 20  # adding new pair in dictionary
puts my_hash

my_hash.delete('name')  #removing name key pair from dictionary
puts my_hash

#creating dictionary with symbols.Generally symbols are used as identifiers

my_hash1 = {a:1,b:2}
puts my_hash1   # output will be {:a=>1, :b=>1}

#another way of creating

my_hash1 = {:a=>1,:b=>2}

puts my_hash1[:a]  #accessing values using symbols


#methods of hashes
puts my_hash.keys   #prints all keys
puts my_hash.values  #prints all values


#   Iterating over hashes

my_hash.each do |key,val|
    puts "The key is #{key} and the value is #{val}"   #prints keys and values
end

my_hash.each {|key,val| puts " #{key} and #{val}"}     #prints keys and values

new_hash = my_hash.each do |key,val|
    puts key+" "+val
end
puts new_hash   

puts "hi 'iam srikanth'"


