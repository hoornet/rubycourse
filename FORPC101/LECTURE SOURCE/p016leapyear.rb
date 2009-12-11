# p016leapyear.rb
=begin
Program to determine if a year is a leap year.
 
To determine if a year is a leap year, follow these steps:
1.   If the year is evenly divisible by 4, go to step 2. Otherwise, go to step 5.
2.   If the year is evenly divisible by 100, go to step 3. Otherwise, go to step 4.
3.   If the year is evenly divisible by 400, go to step 4. Otherwise, go to step 5.
4.   The year is a leap year (it has 366 days).
5.   The year is not a leap year (it has 365 days).

The above logic is combined into a single if check below
=end

# Get the input and determine if it is a leap year
puts "Enter the year: "
STDOUT.flush
input_year = gets.chomp.to_i
if ((input_year % 4 == 0) && (input_year % 100 > 0)) || (input_year % 400 == 0)
  puts "Year #{input_year} is a leap year"
else
  puts "Year #{input_year} is not a leap year"
end
