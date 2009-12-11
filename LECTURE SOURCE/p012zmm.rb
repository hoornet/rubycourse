# p012zmm.rb
class Dummy  
  def method_missing(m, *args)  
    puts "There's no method called #{m} here -- please try again."  
  end  
end  
Dummy.new.anything
