# p080dbconnect.rb
require 'rubygems'
require 'active_record'
ActiveRecord::Base.establish_connection(
:adapter=> "mysql",
:host => "localhost",
:database=> "students"
)

class Rubyist < ActiveRecord::Base
end

Rubyist.create(:name => 'Mitali Talim', :city => "Nashville, Tenessee")
Rubyist.create(:name => 'Sunil Kelkar', :city => "Pune, India")
Rubyist.create(:name => 'Adam Smith', :city => "San Fransisco, USA")

participant = Rubyist.find(:first)
puts %{#{participant.name} stays in #{participant.city}}

Rubyist.find(:first).destroy