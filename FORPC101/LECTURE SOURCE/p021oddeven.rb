# p021oddeven.rb
# given an array as collection = [12, 23, 456, 123, 4579] it 
# displays for each number, whether it is odd or even
collection = [12, 23, 456, 123, 4579]
collection.each do |i|
  if i % 2 == 0
    puts "#{i} is even"
  else
    puts "#{i} is odd"
  end
end