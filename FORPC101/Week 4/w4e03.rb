#!/usr/bin/env ruby
=begin
Exercise3.
Thanks to Marcos Souza for this exercise.
A plain text file has the following contents:

test test test test test
test test test test test
test test test test test
test test test test test
test test test test test
test test word test test
test test test test test
test test test test test
test test test test test
test test test test test
test test test test test

Observe that in this file, there exists a word 'word'.
Write a clever but readable Ruby program that updates
this file and the final contents become like this:

test test test test test
test test test test test
test test test test test
test test test test test
test test test test test
test test inserted word test test
test test test test test
test test test test test
test test test test test
test test test test test
test test test test test

Do not hard-code the file name
=end

puts "Please enter the name of the file to be transformed: "
file_name = gets

# read the wgole file in a string
#str = File.read("w4e03.txt")
str = File.read(file_name.chomp)
 
# replace part of the string
str.sub!(/word/, "inserted word")

#print the whole thing
puts str

open(file_name.chomp, "w") { |f| f << str }