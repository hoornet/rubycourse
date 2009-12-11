#!/usr/bin/env ruby
# L2E4 Discussion - display centigrade value
 
=begin
  Week 2,
  Exercise4.
  
  Write a Ruby program (p006ftoc.rb) that asks for a temperature in degrees Fahrenheit.
  The program should display the temperature in degrees Celsius to 2 decimal places.
  To format the output to say 2 decimal places, we can use the Kernel's format method.
  For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57.
  Another way is to use the round function as follows:
  puts (x*100).round/100.0

=end
def convert(tempFahrenheit)
  (tempFahrenheit.to_f - 32) * 5/9
end

puts "Enter temp in Fahrenheit, please: "
tempFahr = gets
puts format("%.2f", convert(tempFahr))
