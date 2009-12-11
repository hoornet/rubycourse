# p067radius.rb
class Radius
  attr_reader :key
  def initialize(key)
    @key = key 
    if @key.class == Fixnum then
      @key = @key.to_s
    end
    if @key.class != String then
      @key = nil
    end
  end
end
