# program5.rb
c = lambda { |i| puts i }

class Test
  def say(block)
    block.call(self.class)
  end
end

c.call(self.class) # => Object
Test.new.say(c)    # => Test