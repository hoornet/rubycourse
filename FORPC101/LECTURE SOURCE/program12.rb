# program12.rb
def foo( param1, param2 )
  # do something
  some_param = 1
  yield( some_param ) if block_given?
end

foo(1, 2) do |some_param|
  # do something
end