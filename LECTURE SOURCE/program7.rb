# program7.rb
class Array
  def even
    i = 0
    while i < self.size
      yield(self[i]) if i % 2 == 0
      i += 1
    end
  end
end

[1,2,3,4,5,6].even { |i| puts i }
# => 1
# => 3
# => 5