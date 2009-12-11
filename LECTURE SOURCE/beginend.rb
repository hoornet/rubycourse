BEGIN {
  puts 'BEGIN block'
}
begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
  exit
ensure
  puts 'Will always execute'
end
END {
  puts 'END block'
}
# http://docs.huihoo.com/ruby/ruby-man-1.4/syntax.html#BEGIN_proc
# http://weblog.jamisbuck.org/2007/2/8/begin-else
# http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/102708
=begin
  Every Ruby source file can declare blocks of code to be run 
  as the file is being loaded (the BEGIN blocks) and after the 
  program has finished executing (the END blocks). 
  A program may include multiple BEGIN and END blocks. BEGIN 
  blocks are executed in the order they are encountered. END 
  blocks are executed in reverse order.
=end