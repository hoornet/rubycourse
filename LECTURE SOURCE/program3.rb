# program3.rb
class Test
  def initialize
    @hello = "Hello!"
  end
  def say
    @hello
  end
end

m = Test.new.method(:say)
puts m.call # => "Hello!"
puts m.class # => "Method"