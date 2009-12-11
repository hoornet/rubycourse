# lesson1exercise1.rb
=begin
y = false
z = true
x = y or z      # = is done BEFORE or!
puts x          # prints false
(x = y) or z    #  = is done BEFORE or!
puts x          # prints false
x = (y or z)    # or is done first
puts x          # prints true


y = false
z = true
puts x=y or z
puts (x=y or z)
After puts you have x=y or z. In this the = operator has a higher precedence 
than or and thus y is assigned to x ie. false value and thus puts prints false. 
In the statement puts (x=y or z), the bracket has a higher precedence and y is 
assigned to x first ie has a value false and then the or operator has the expression 
(false or true) ie it gets the value true which is then printed. 
Remember: The or operator evaluates to true if either operand is true. 
It evaluates its second operand only if the first is false.


Actually, my question is why the print out is false. The OR operator does not get evaluated.
Code:

puts false or true  #----> output is false.  OR does not get evaluated?

if false or true
  then puts 'then'   #----> output is 'then'.  OR get evaluated!
  else puts 'else'
end


An interesting question. Read thro' the answer carefully -
The line:

> puts false or true

is equivalent to:

(puts false) or true

puts returns nil, so that statement is equivalent to:

nil or true

In Ruby, everything is true except the reserved words false and nil and thus the above evaluates to:

false or true

and the result of that is true--but since you didn't save the result in
a variable, it is discarded.

Try this:

result = (puts false) or true
p result

--output:--
nil

That result may also be surprising. That's because the statement:

result = (puts false) or true

is equivalent to

(result = (puts false)) or true

puts returns nil, which gets assigned to result, and the statement
becomes:

result or true

which is equivalent to:

nil or true

which is equivalent to:

false or true

which evaluates to true--but since the result isn't stored anywhere, it
is discarded.


> if false or true

That statement is equivalent to:

if (false or true)

which evaluates to:

if true



parentheses is the best way to go.
=end
