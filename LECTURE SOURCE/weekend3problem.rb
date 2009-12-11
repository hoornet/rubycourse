a = [0,0,0,1,0,0,1,1,0,1]
size = a.size
b = a.find_all { |item| item < 1}
puts "The number of partiipants who did not attempt Quiz 1 are #{b.size} out of #{size} participants."