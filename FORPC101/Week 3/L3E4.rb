#!/usr/bin/env ruby

=begin
Exercise4.
  Write a method leap_year?.
  It should accept a year value from the user, check whether it's a leap year,
  and then return true or false.
  With the help of this leap_year?() method calculate and display the number
  of minutes in a leap year (2000 and 2004) and the number of minutes in a
  non-leap year (1900 and 2005). Note: Every year whose number is divisible
  by four without a remainder is a leap year, excepting the full centuries,
  which, to be leap years, must be divisible by 400 without a remainder.
  If not so divisible they are common years. 1900, therefore,
  is not a leap year
  
  program p017leapyearmtd.rb.
=end

def leap_yaer? (year)	
  case
    when year % 400 == 0 then true  
    when year % 100 == 0 then false
    else year % 4 == 0
  end
end

puts "year? "
year = gets.to_i # user number converted to integer

minutes = year * 365 *24 *60

if leap_yaer?(year) == true
  leap_talk = "You've got a leap year! #{year} years is #{minutes} minutes."  
else
  leap_talk = "non-leap-year! #{year} years is #{minutes} minutes."
end
  
puts leap_talk  
# output is: true  