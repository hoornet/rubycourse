# program9.rb
class Array
  def even(block)
    i = 0
    while i < self.size
      block.call( self[i] ) if i % 2 == 0
      i += 1
    end
  end
end