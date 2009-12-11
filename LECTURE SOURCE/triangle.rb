require 'shape.rb'
class Triangle < Shape
  def initialize(base_width, height, side1, side2, side3)
    @base_width = base_width
    @height = height
    @side1 = side1
    @side2 = side2
    @side3 = side3 
  end
  def area
    @base_width * @height / 2
  end
  def perimeter
    @side1 + @side2 + @side3
  end
end
