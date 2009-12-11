# p066testradius.rb
require 'test/unit' 
require 'p067radius' 
class TestRadius < Test::Unit::TestCase
=begin
  def test_key
    robj = Radius.new('78')
    assert_equal('78', robj.key)
    robj = Radius.new(78)
    assert_equal('78', robj.key)
      robj = Radius.new([78])
    assert_nil(robj.key)
  end
end
=end

  def setup
    @robj = Radius.new('78')
  end
  def test_key
    assert_equal('78', @robj.key)
    @robj = Radius.new(78)
    assert_equal('78', @robj.key)
    @robj = Radius.new([78])
    assert_nil(@robj.key)
  end
end

