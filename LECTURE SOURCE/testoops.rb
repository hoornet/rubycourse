# To work out the perimeter and area of various shapes
require 'square.rb'
require 'triangle.rb'

# Usage
my_square = Square.new(5)
my_triangle = Triangle.new(6, 6, 7.81, 7.81, 7.81)
puts my_square.area
puts my_square.perimeter
puts my_triangle.area
puts my_triangle.perimeter

# respond_to?
if my_square.respond_to?("volume")  
  my_square.volume  
else  
  puts "Sorry, the object doesn't understand the 'volume' message."  
end  

def method_missing(m, *args)  
  "There's no method called #{m} here -- please try again."  
end

# check method_missing
puts my_square.volume

# object_id
puts "The id of my_square obj is #{my_square.object_id}."

# add volume method - Open classes
class Square < Shape
  def volume
    "Don't be funny!"
  end
end

puts my_square.volume

# test inheritance
puts my_square.who
puts my_triangle.who

# override
class Square < Shape
  def who
    super + ", and specifically a Square"
  end
end

puts my_square.who

# list down all methods
puts my_square.methods.sort.join(' ')
