require 'rubygems'
require 'twitter'
require 'ruby-growl'

last_tweet_id = 0

loop do
  result = Twitter::Search.new('hoornet').since(last_tweet_id).fetch().results.first
  if result
    from_user = result[:from_user]
    text = result[:text]
    last_tweet_id = result[:id]
    g = Growl.new "localhost", "ruby-g#!/usr/bin/env ruby -wKU    rowl", ["ruby-growl Notification"]
    g.notify "ruby-growl Notification", from_user, text
  else
    puts "No results.."
  end
  sleep 30
end
