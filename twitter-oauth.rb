#!/usr/bin/env ruby
# coding: utf-8
require 'rubygems'
require 'oauth'

OAUTH_CONSUMER_KEY='AAAAAAAAAAAAAAAAAAAAAA'
OAUTH_CONSUMER_SECRET='BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB'

consumer = OAuth::Consumer.new( OAUTH_CONSUMER_KEY , OAUTH_CONSUMER_SECRET , {
  :site=>"http://twitter.com"
})
#optprm = { :oauth_callback=>"（コールバック先のURL）" }
request_token = consumer.get_request_token
puts "Access this URL and approve => #{request_token.authorize_url}"

print "Input OAuth Verifier: "
oauth_verifier = gets.chomp.strip

access_token = request_token.get_access_token(
    :oauth_verifier => oauth_verifier
)

puts "Access token: #{access_token.token}"
puts "Access token secret: #{access_token.secret}"
