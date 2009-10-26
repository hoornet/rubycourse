#!/usr/bin/env ruby
begin
  require 'rubygems'
rescue LoadError
end

require 'win32console'
require 'term/ansicolor'

include Win32::Console::ANSI

class String
  include Term::ANSIColor
end

Win32Console::background_color :red
