
# methods in ruby language are similar to any other languages

# method without parameters
def my_print
    puts "This method is called"
end

my_print()

#method with parameters

def my_print(name)
    puts name
end
my_print("actual pixel")

#method with some math init

def multiply(val)
    return puts val*5
end
multiply(4)

#if nothing is returned to method then the end of the expression will be returned atomatically

def return_method(name)
    first_name = name +" "+"gudimetla"
end
returned_val = return_method("srikanth")
puts returned_val
