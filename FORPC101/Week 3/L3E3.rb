#!/usr/bin/env ruby

=begin
Exercise3.
Write a Ruby program (p016leapyear.rb) that asks for a year and then
tells the user whether the year entered by him/her is a leap year or not.
=end

puts "Ok (wo)man! Push in me a year number, if you have the guts and if you're lucky you'll get my opinion."
year = gets.to_i # user number converted to integer

leap = case
  when year % 400 == 0 then true  
  when year % 100 == 0 then false
  else year % 4 == 0
end

if leap == true
  leap_talk = "Don't worry you won't be hurt! You've got a leap year"  
else
  leap_talk = "Gun!!! Stay down! Stay down or I'll taser you, you ****** criminal. \nYou're trying to **** me araound with this non-year-leapish gear?"
end
  
puts leap_talk  
# output is: true  