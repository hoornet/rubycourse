#!/usr/bin/env ruby

=begin
Exercise5.
Write a Ruby program that tells you how many minutes there are in a year
(do not bother right now about leap years etc.).
=end

Minutes_in_hr = 60
Hrs_in_day = 24
Days_in_yr = 356
minutes_in_yr = Minutes_in_hr * Hrs_in_day * Days_in_yr
puts "There are #{minutes_in_yr} minutes in a year"
