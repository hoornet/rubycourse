#!/usr/bin/env ruby
=begin
Exercise5.
Difficulty level: MEDIUM Write a one-line Ruby script that displays on
the screen all the files in the current folder as well as everything in all its
sub folders, in sorted order. Make use of Dir.glob method as follows:

Dir.glob('**/*')

Name this program inventory.rb. Create an inventory file by typing the following
at the command prompt:

ruby inventory.rb > old-inventory.txt

After a few days, when some files would have been added / deleted from this
folder, run the program again like:

ruby inventory.rb > new-inventory.txt

Now, write another Ruby script that displays on the screen all the files that
have been added in this folder since the time the old-inventory.txt was created.
=end

###########################################################

USAGE = "ruby inventory.rb >  target.txt"

################################################################################


class DirFileParser
  def initialize
    @files_and_dirs = Dir.glob('**/*')
  end
  
  def get_file_to_params
    @target = ARGV[0]

  end
  
  def print_data
    print @target
    print @source
    print @files_and_dirs
  end
end


a = DirFileParser.new
a.get_file_to_params


#
#require 'optparse'
#
#class CountdownOptions < OptionParser
#  attr_reader :quiet, :show_all, :mode, :method, :source, :target
#  
#  def initialize
#    super
#    # Defaults
#    @mode = :Fraction
#    @method = :Recursive
#
#    # Switches
#    on("--all", "-a")       do @show_all = true end
#    on("--integral", "-i")  do @mode = :Integral end
#    on("--recursive", "-r") do @method = :Recursive end
#    on("--memoized", "-m")  do @method = :Memoized end
#    on("--quiet", "-q")     do @quiet = true end
#    
#    @target, *@source = *parse(ARGV).map{|i|i.to_i}
#    if @mode != :Integral
#      @target = @target.to_f
#      @source = @source.map { | e | e.to_f }
#    end
#    raise OptionParser::MissingArgument, "Not enough arguments" unless @source and source.length > 0
#  end
#end
#
#if $0 == __FILE__
#  begin
#    opts = CountdownOptions.new
#    
#    require 'countdown-recursive' rescue $stderr.puts "Recursive brute force library not found, recursive solution not available."
#    require 'countdown-memoized' rescue $stderr.puts "Memoization library not found, memoization not available."
#    
#    solutions = []
#    best = solve_countdown(opts.target, opts.source, Object.const_get(opts.method).const_get(opts.mode)) do | best |
#      $stderr.puts "Best so far: #{best} = #{best.value}" unless opts.quiet
#      if best.value == opts.target
#        solutions << best
#        break best unless opts.show_all
#      end
#    end
#    if solutions.empty? or !opts.show_all
#      puts "Best approximation for combinations of #{opts.source.inspect} to yield #{opts.target}:", "#{best} = #{best.value}"
#    else
#      puts "Solutions for combinations of #{opts.source.inspect} to yield #{opts.target}:", solutions.uniq
#    end
#  rescue OptionParser::ParseError
#    puts "Usage", USAGE
#  end
#end