# program16.rb
list = []
[1,2,3,4].each do |i| 
  list << i * 2 
end
puts list.inspect # => [2, 4, 6, 8]