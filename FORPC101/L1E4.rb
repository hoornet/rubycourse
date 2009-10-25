#!/usr/bin/env ruby

=begin
L1E4 - Exercise4.
Write a Ruby program that displays how old I am, if I am 979000000 seconds old.Display the result as a floating point (decimal) number to two decimal places (for example, 17.23).
Note: To format the output to say 2 decimal places, we can use the Kernel's format method. For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57
=end


age = 979000000
age_in_yrs = age/3600/24/365.0
puts format("%.2f", age_in_yrs)