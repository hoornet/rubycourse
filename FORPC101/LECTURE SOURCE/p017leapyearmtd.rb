# p017leapyearmtd.rb
def leap_year(input_year)
  ((input_year % 4 == 0)  && (input_year % 100 > 0)) || (input_year % 400 == 0)
end

# Get the input and determine if it is a leap year
puts "Enter the year: "
STDOUT.flush
input_year = gets.chomp.to_i
if leap_year(input_year)
  puts "Year #{input_year} is a leap year and has #{366*60*24} minutes in the year"
else
  puts "Year #{input_year} is not a leap year and has #{365*60*24} minutes in the year"
end