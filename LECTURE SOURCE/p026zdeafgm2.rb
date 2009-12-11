# p026zdeafgm2.rb
=begin
  Extend your Deaf Grandma program: What if grandma doesn't want you to leave? 
  When you shout BYE, she could pretend not to hear you. Change your previous 
  program so that you have to shout BYE three times in a row. Make sure to test 
  your program: if you shout BYE three times, but not in a row, you should still 
  be talking to grandma
=end
a = ( 1930...1951).to_a
puts 'Enter your response: '
STDOUT.flush
until (response = gets.chomp).eql?('BYE BYE BYE')
  if response.eql?('BYE')
    # do nothing
  elsif response.eql?(response.upcase)
    puts 'NO, NOT SINCE   ' + a[rand(a.size)].to_s  + ' !'
  else
    puts 'HUH?!   SPEAK UP, SONNY!'
  end
  puts 'Enter your response: '
  STDOUT.flush
end