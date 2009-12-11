class DTRConvertor
  def convert(dollar_amount)
    return dollar_amount * 40.0 # Bug here
  end
end

m = DTRConvertor.new
puts m.convert(100.0)