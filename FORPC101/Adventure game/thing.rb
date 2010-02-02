=begin
@todo: Milestone1: The first task is to decide on the main classes which will define the objects in the game.
Most game objects – whether they are Rooms, Treasures, Weapons or Monsters – must have at least two properties:
a name and a description. Start by creating a base class, called Thing, from which more specialized classes will
 descend. Write the relevant methods so that the two attributes are accessible outside of the class.

Example usage of the Thing class:

# t = Thing.new('Satish', 'Ruby Evangelist')
=end

class Thing
  attr_accessor :name, :description

  def initialize( name , description)
    @name = name
    @description = description
  end

end


=begin
@todo Milestone 2: Let’s move on to create some more specific descendant classes.

   1. The Room class is just a Thing but it adds on some ‘exit’ attributes. These attributes will be used to indicate
   which room, if any, is located at the North, South, West and East exits of the current room.

Example usage of the Room class:

# N S W E

@r0 = Room.new("Treasure Room", "a fabulous golden chamber", -1, 2, -1, 1)

@r1 = Room.new("Dragon's Lair", "a huge and glittering lair", -1, -1, 0, -1)

@r2 = Room.new("Troll Cave", "a dank and gloomy cave", 0, -1, -1, 3)

@r3 = Room.new("Crystal Dome", "a vast dome of glass", -1, -1, 2, -1)

# 0, 1, 2, 3 above indicate where Rooms @r0…@r3 are located

The rooms are located in these positions -

Room 0 Room 1

Room 2 Room 3

Now the code statement:
# the numbers indicate positions N S W E
@r0 = Room.new("Treasure Room", "a fabulous golden chamber", -1, 2, -1, 1)

indicates that to the North of Room 0, there is no Room i.e. -1 in the code. To the South of Room 0, there is
Room 2 i.e. 2 in the code. To the East of Room 0 is Room 1 i.e. 1 in the code and to the West of Room 0 is
 no room i.e. -1 in the code.
=end



































#########################################################
# TESTS:

def test_thing
  t = Thing.new('Satish', 'Ruby Evangelist')
  puts "#{t.name} , #{t.description}"
  return t
end


##########################################################
# MAIN STUFF

# tests:
t = test_thing()


