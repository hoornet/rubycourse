#popen.rb
rb = IO.popen("E:/ruby/bin/ruby.exe","w+")
IO.readlines('test.rb').each {|line| rb.puts line}
rb.close_write
#puts rb.gets 
while line = rb.gets
  puts line
end
