# #ruby arrays are similar to remaining programming languages arrays
# #ruby arrays are rich in library

# #arrays are indexed and the indexes will start from '0'
# array = [1,2,3,54,56]
# puts array[0]  #output will be 1

# array_ranges = (1..100).to_a  # default range is created and when convert happens it assigns all values individually
# print array_ranges
# p array

# #common methods of arrays

# puts array.length  #gives length of the array

# array.push("200")  #pushes element at end
# puts array

# array.pop #pops an element from last
# puts array

# array.append(300)  #appends value at end
# puts array

# array.unshift(30)  #inserts element in the front side
# puts array

# joined_array = array.join(",")  #joins array elements
# puts joined_array    

# puts array.empty?  #checks if it is empty or not.If it is emprty it will give us "true" val

# puts array.include?(1)   #gives true if it includes the value in the elements

# array << 31   #inserts value at the end
# puts array

# array.shuffle!  #this method shuffles all elements in the array."!" mark is used to mutate the array
# puts array    

# obj1={name:"srikanth",age:20}
# obj2={name:"vamshi",age:16}
# arr = [obj1,obj2]
# val= arr.include?(obj1)
# puts val


# puts "srikanth"
# a=rand(1000..9999)
# puts a
def time_difference_in_seconds(time1, time2)
  # Calculate the absolute difference in seconds
  seconds_diff = (time2 - time1).to_i.abs
  puts seconds_diff
  puts formatted_time
  # Check if the difference is less than or equal to 1 minute (60 seconds)
  if seconds_diff <= 60
    return seconds_diff
  else
    raise ArgumentError, "Time difference exceeds 1 minute"
  end
end

# Example usage
time1 = Time.new(2021, 5, 15, 8, 45, 30)
puts time1
# sleep(30) # Wait for 30 seconds
time2 = Time.now
puts time2

begin
  seconds_diff = time_difference_in_seconds(time1, time2)
  puts "The time difference is #{seconds_diff} seconds."
rescue ArgumentError => e
  puts e.message
end




