# program15.rb
def greetings_factory(prefix)
  Proc.new { |name| "#{prefix}, #{name} !"}
end

birthday = greetings_factory("Happy Birthday")
xmas = greetings_factory("Merry XMas")

puts birthday.call("David") # => "Happy Birthday, David !"
puts xmas.call("Matz")      # => "Merry XMas, Matz !"