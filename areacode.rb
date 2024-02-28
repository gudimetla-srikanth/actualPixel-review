
# areacode project

areacodes = [
  {'areaname'=>'hyderabad','code'=>500001},
  {'areaname'=>'medchal','code'=>501401},
  {'areaname'=>'asifabadh','code'=>504293},
  {'areaname'=>'rangareddy','code'=>500037},
  {'areaname'=>'mancherial','code'=>504208},
]

puts "Area Code Finder Application"
28.times {print "-"}
puts ""
def show_all_areas(areacodes)
  areacodes.each do |record|
    puts record['areaname']
  end
end

def code_finder(area_name,areacodes)
  areacodes.each do |records|
    if records['areaname'] == area_name
      puts "Your area code is : #{records['code']}"
      break
    end
  end
  puts "Your area is not listed in the data"
end

loop do
  puts "Do you want to see all area names?(Y/N)"
  input = gets.chomp.downcase
  break if input != 'y'
  show_all_areas(areacodes)
  print "Enter your area name to find the code : "
  area_name = gets.chomp
  code_finder(area_name,areacodes)
  puts "Enter n to stop or press any key to continue"
  continue = gets.chomp.downcase
  break if continue == 'n'
end

