#!/usr/bin/env ruby

# L2E2 - convert
 
=begin
  Week 2, Exercise 2:  
  Write a method called convert that takes one argument which is a temperature in
  degrees Fahrenheit. This method should return the temperature in degrees Celsius.
  
  Regarding conversion I got this from Wikipedia:
  Fahrenheit FROM Celsius:
  [°F] = [°C] × 9/5 + 32

  Fahrenheit TO Celsius:  
  [°C] = ([°F] - 32) × 5/9
=end

def convert(tempFahrenheit)
  (tempFahrenheit - 32) * 5/9
end
