#!/usr/bin/env ruby
# coding: utf-8

require 'oauth'
require 'json'

CONSUMER_KEY = 'AAAAAAAAAAAAAAAAAAAAAA'
CONSUMER_SECRET = 'BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB'
ACCESS_TOKEN = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC'
ACCESS_TOKEN_SECRET = 'DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD'

# 下準備
consumer = OAuth::Consumer.new(
  CONSUMER_KEY,
  CONSUMER_SECRET,
  :site => 'http://twitter.com'
)
access_token = OAuth::AccessToken.new(
  consumer,
  ACCESS_TOKEN,
  ACCESS_TOKEN_SECRET
)

# タイムラインを取得して時系列順に表示
response = access_token.get('http://twitter.com/statuses/friends_timeline.json')
JSON.parse(response.body).reverse_each do |status|
  user = status['user']
  puts "#{user['name']}(#{user['screen_name']}): #{status['text']}"
end

# Tweetの投稿
#response = access_token.post(
#  'http://twitter.com/statuses/update.json',
#  'status'=> 'oauth test post2'
#)
