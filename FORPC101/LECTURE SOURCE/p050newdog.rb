# p050newdog.rb
class NewDog
  def initialize(breed)
    @breed = breed
  end
  attr_reader :breed, :name # create reader only

  # setter method
  def name=(nm)
    @name = nm
  end
end

nd = NewDog.new('Doberman')
#nd.name=('Benzy')
nd.name = 'Benzy'
puts nd.name
