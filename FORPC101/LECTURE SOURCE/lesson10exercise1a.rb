require 'lesson10exercise1'
o = Klass.new("hello") 
data = Marshal.dump(o) 
obj = Marshal.load(data) 
puts obj.sayHello