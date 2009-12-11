#animal.rb
class Animal
  def display 
    'Class Animal: display method from Animal.'
  end 
  def run
    'Class Animal: run method from Animal.'
  end
end

# dog.rb
require 'animal'
class Dog  < Animal
  def initialize(breed, name) 
    @breed = breed 
    @name = name 
  end 
  def bark 
    "Class Dog's bark method: Ruff! Ruff!"
  end 
  # override display
  def display 
    "Class Dog's display method: I am of #{@breed} breed and my name is #{@name}." 
  end 
end

# cat.rb
require 'animal'
class Cat  < Animal
  def initialize(breed, name) 
    @breed = breed 
    @name = name 
  end 
  def meow 
    "Class Cat's meow method: Meow! Meow!"
  end 
  # override display
  def display 
    "Class Cat's display method: I am of #{@breed} breed and my name is #{@name}." 
  end 
end

# testanimals.rb
require 'dog'
require 'cat'

# create object and call methods
d = Dog.new('Labrador', 'Benzy')
c = Cat.new('Persian', 'Leo')
puts d.bark
puts d.display
puts "d object is of class: " + d.class.to_s
puts c.meow
puts c.display
puts "c object is of class: " + c.class.to_s

# mark for garbage collection
c = nil

# respond_to?
if d.respond_to?("eat") 
  d.eat 
else 
  puts "Sorry, the object doesn't understand the 'eat' message." 
end

# add method_missing
class Dog < Animal
  def method_missing(m, *args) 
    "Class Dog: There's no method called #{m} here -- please try again." 
  end
end

# check method_missing
puts d.eat

# object_id
puts "The id of d obj is #{d.object_id}."

# add eat method - Open classes
class Dog < Animal
  def eat
    'Class Dog method eat: I love bones!'
  end
end

puts d.eat

# test inheritance
puts d.run

# override run method
class Dog < Animal
  def run
    'This method definition is over-riden by the next'
  end
  def run
    super + ", but all Dogs run very fast"
  end
end

puts d.run

# list down all methods
puts d.methods.sort