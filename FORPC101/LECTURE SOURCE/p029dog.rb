# p029dog.rb
# define class Dog
class Dog
  def initialize(breed, name)
    # Instance variables
    @breed = breed
    @name = name
  end
  
  def bark
    puts 'Ruff! Ruff!'
  end

  def display
    puts "I am of #{@breed} breed and my name is #{@name}"
  end
end

=begin
  Classes in Ruby are first-class objects - each is an instance of class Class. 
  When a new class is defined (typically using class Name ... end), an object of 
  type Class is created and assigned to a constant (Name. in this case). 
  When Name.new is called to create a new object, the new instance method in Class 
  is run by default, which in turn invokes allocate to allocate memory for the object, 
  before finally calling the new object's initialize method. The constructing and 
  initializing phases of an object are separate and both can be over-ridden. 
  The initialization is done via the initialize instance method while the construction 
  is done via the new class method. initialize is not a constructor!
  Class Hierarchy - http://www.cs.mun.ca/%7Edonald/slug/2003-10-16/presentation/img5.html
=end

# make an object
# Objects are created on the heap
d = Dog.new('Labrador', 'Benzy')

=begin
  Every object is "born" with certain innate abilities. 
  To see a list of innate methods, you can call the methods 
  method (and throw in a sort operation, to make it 
  easier to browse visually)
=end
puts d.methods.sort

# Amongst these many methods, the methods object_id and respond_to? are important.
# Every object in Ruby has a unique id number associated with it
puts "The id of obj is #{d.object_id}."

# To know whether the object knows how to handle the message you want 
# to send it, by using the respond_to? method.
if d.respond_to?("talk")
  d.talk
else
  puts "Sorry, the object doesn't understand the 'talk' message."
end

d.bark
d.display

# making d and d1 point to the same object
d1 = d
d1.display

# making d a nil reference, meaning it does not refer to anything
d = nil
d.display

# If I now say
d1 = nil
# then the Dog object is abandoned and eligible for Garbage Collection (GC)
=begin
  The Ruby object heap allocates a minimum of 8 megabytes. 
  Ruby's GC is called mark-and-sweep. The "mark" stage checks objects 
  to see if they are still in use. If an object is in a variable that 
  can still be used in the current scope, the object (and any object 
  inside that object) is marked for keeping. If the variable is long gone, 
  off in another method, the object isn't marked. The "sweep" stage then 
  frees objects which haven't been marked.
  If you stuff something in an array and you happen to keep that array around, 
  it's all marked. If you stuff something in a constant or global variable, 
  it's forever marked.
=end
