# program11.rb
def foo(name, block1, block2)
  block1.call
  puts name
  block2.call
end

foo "Fabio", lambda { puts "Hello" }, lambda { puts "World" }