=begin
 Milestone1: The first task is to decide on the main classes which will define the objects in the game.
Most game objects – whether they are Rooms, Treasures, Weapons or Monsters – must have at least two properties:
a name and a description. Start by creating a base class, called Thing, from which more specialized classes will
 descend. Write the relevant methods so that the two attributes are accessible outside of the class.

Example usage of the Thing class:

# t

=end

class Thing
  attr_accessor :name
  attr_accessor :description

  def initialize( name , description)



  end
 



  #Code here
end



# tests:

t = Thing.new('Satish', 'Ruby Evangelist')
p = t.name
puts p