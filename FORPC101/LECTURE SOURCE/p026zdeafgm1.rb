# p026zdeafgm1.rb
=begin
  Write a Deaf Grandma program. Whatever you say to grandma 
  (whatever you type in), she should respond with HUH?!  SPEAK UP, SONNY!, 
  unless you shout it (type in all capitals). If you shout, she can hear you (
  or at least she thinks so) and yells back, NO, NOT SINCE 1938! 
  To make your program really believable, have grandma shout a different year 
  each time; maybe any year at random between 1930 and 1950. 
  You can't stop talking to grandma until you shout BYE
=end
a = ( 1930...1951).to_a
puts 'Enter your response: '
STDOUT.flush
until (response = gets.chomp).eql?('BYE')
  if (response.eql?(response.upcase ))
    puts 'NO, NOT SINCE   ' + a[rand(a.size)].to_s  + ' !'
  else
    puts 'HUH?!   SPEAK UP, SONNY!'
  end
  puts 'Enter your response: '
  STDOUT.flush
end