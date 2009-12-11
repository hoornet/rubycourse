# instatntiate a GameBoard object
gb = GameBoard.new

# make an array for the location of the 3
# consecutive ints out of a possible 7
locations = [2,3,4]

# invoke the setter method of the GameBoard
gb.set_locations_cells(locations)

# make a fake user guess
user_guess = '2'

# invoke the check_yourself method on the GameBoard
# object, and pass it the fake guess
result = gb.check_yourself(user_guess)

test_result = 'failed'

if (result == 'hit')
  # if the fake guess (2) gives back
  # a 'hit', it's working
  test_result = 'passed'
end

# print out the test result 'passed' or 'failed'
puts test_result
