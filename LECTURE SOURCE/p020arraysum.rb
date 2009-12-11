# p020arraysum.rb
# Write a Ruby program that, when given an array 
# as collection = [1, 2, 3, 4, 5] it calculates the sum of its elements
collection = [1, 2, 3, 4, 5]
sum = 0
collection.each {|i| sum += i}
puts sum