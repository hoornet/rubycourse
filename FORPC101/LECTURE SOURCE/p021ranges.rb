# p021ranges.rb
=begin
  Sequences have a start point, an end point, and a way to produce successive values in the sequence
  In Ruby, sequences are created using the ". ." and ". . ." range operators.
  The two dot form creates an inclusive range.
  The three-dot form creates a  range that excludes the specified high value
  The sequence 1..100000 is held as a Range object
=end
digits = -1..9
puts digits.include?(5)        # true
puts digits.min                  # -1
puts digits.max                  # 9
puts digits.reject {|i| i < 5 }  # [5, 6, 7, 8, 9]