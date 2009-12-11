# program10.rb
class Array
  def even(block)
    i = 0
    while i < self.size
      block.call( self[i] ) if i % 2 == 0
      i += 1
    end
  end
end
c = lambda { |i| puts i }
[1,2,3,4,5,6].even( c )