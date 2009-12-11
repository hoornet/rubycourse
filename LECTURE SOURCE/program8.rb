# program8.rb
class Array
  def even(&code)
    i = 0
    while i < self.size
      code.call( self[i] ) if i % 2 == 0
      i += 1
    end
  end
end