#!/usr/bin/env ruby
=begin
Exercise2.
Write a Rectangle class. I shall use your class as follows:

r = Rectangle.new(23.45, 34.67)
puts 'Area is = ' + r.area().to_s
puts 'Perimeter is = ' + r.perimeter.to_s
=end

###########################################################

class Rectangle
  def initialize(x, y)
    @x = x
    @y = y
  end
  
  def area()
    @x * @y
  end
  
  def perimeter
    2 * @x + 2 * @y
  end
end

r = Rectangle.new(23.45, 34.67)
puts 'Area is = ' + r.area().to_s
puts 'Perimeter is = ' + r.perimeter.to_s