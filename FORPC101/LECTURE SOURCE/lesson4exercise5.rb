#Given the following Ruby code snippet:
a = (1930...1951).to_a 
puts a[rand(a.size)]
=begin
When you run this program, which of the following values will not be displayed?
a.	1929
b.	1930
c.	1945
d.	1950
e.	1951
f.	1952

Discuss in the forum, the output and how this program works.

Answer -
The three-dot range operator creates a range that excludes the specified 
high value (1951 in this problem). (1930...1951).to_a converts the range 
to a list using the to_a method. We pass in the size of the array to 
rand method, and it returns an integer between 0 and size-1, which is then 
used as an index to the array.
=end
