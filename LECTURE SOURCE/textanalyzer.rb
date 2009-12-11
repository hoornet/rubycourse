=begin
  a. Ruby automatically places any parameters that are appended to the command line 
     when you launch your Ruby program into a special array called ARGV
  b. The method File.file? returns true if the named file exists and is a regular file
     not negates it.
  c. The Kernel.exit method terminates your program
=end
# textanalyzer.rb
if ARGV.length == 0
  puts 'Usage: ruby textanalyzer.rb filename'
  exit
elsif not File.file?(ARGV[0])
    puts "#{ARGV[0]} file does not exist !"
    exit
end 

=begin
  File implements a readlines method that reads an entire file into an array, line by line. 
=end
lines = File.readlines(ARGV[0])
line_count = lines.size
text = lines.join
puts "#{line_count} lines"

# Count the characters
total_characters = text.length
puts "#{total_characters} characters"

# Use gsub method that performs a global substitution (like a search and replace) upon the string
# \s means Whitespace (spaces, tabs, newlines, and so on)
# the + that follows \s makes \s match as many Whitespaces in a row as possible.
total_characters_nospaces = text.gsub(/\s+/, '').length
puts "#{total_characters_nospaces} characters excluding spaces"



=begin
stop_words = %w{the a by on for of are with just but and to the my I has some in}
lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join
# Count the characters
character_count = text.length
character_count_nospaces = text.gsub(/\s+/, '').length
# Count the words, sentences, and paragraphs
word_count = text.split.length
sentence_count = text.split(/\.|\?|!/).length
paragraph_count = text.split(/\n\n/).length
# Make a list of words in the text that aren't stop words,
# count them, and work out the percentage of non-stop words
# against all words
all_words = text.scan(/\w+/)
good_words = all_words.select{ |word| !stop_words.include?(word) }
good_percentage = ((good_words.length.to_f / all_words.length.to_f) * 100).to_i
# Summarize the text by cherry picking some choice sentences
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|\!/)
sentences_sorted = sentences.sort_by { |sentence| sentence.length }
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/ }
# Give the analysis back to the user
puts "#{line_count} lines"
puts "#{character_count} characters"
puts "#{character_count_nospaces} characters (excluding spaces)"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts "#{good_percentage}% of words are non-fluff words"
puts "Summary:\n\n" + ideal_sentences.join(". ")
puts "-- End of analysis"
=end