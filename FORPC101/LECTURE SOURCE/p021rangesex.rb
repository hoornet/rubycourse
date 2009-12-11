# p021rangesex.rb
s = 'key=value'
i = s.index('=')
# If range supplied to a string, as below, a new String is created
puts s[0...i]
puts s[i+1,s.length]
