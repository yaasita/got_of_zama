#!/usr/bin/env ruby
# coding: utf-8
require 'twitter'
class Randomzama
  def zamaha
    word1 = [
      'すごい' ,
      '激しい' ,
      '早い' ,
      '加速した' ,
      '高速な' ,
      '硬い' ,
      '臨機応変な' ,
      '物理的な' ,
      '優雅な' ,
      '運の良い' ,
      '滑らな' ,
      '美しい' ,
      '綺麗な' ,
      'ナイスな' ,
      '完璧な' ,
      'レッツゴー的な' ,
    ]

    word2 = [
      '言葉',
      '砦だ' ,
      '神奈川の星' ,
      '三国無双' ,
      '言葉では言い表せないなにか' ,
      '思想' ,
      'beautiful city!' ,
      '感動' ,
      '震え' ,
      '最終手段' ,
      '命' ,
      '生命' ,
      'そこにある全て' ,
      '全ての答え' ,
      '教え' ,
      '人類の希望' ,
      '宇宙' ,
      'one piece' ,
      '4次元空間' ,
      '希望' ,
      '夢' ,
      '地球' ,
      '約束の地' ,
    ]
    return'座間は' + word1[rand word1.size] + word2[rand word2.size]
  end
end

# 1/2の確率で終わる
if 1 == rand(2)
  exit
end


# ログイン
Twitter.configure do |config|
  config.consumer_key       = 'AAAAAAAAAAAAAAAAAAAAAA'
  config.consumer_secret    = 'BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB'
  config.oauth_token        = 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC'
  config.oauth_token_secret = 'DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD'
end

z = Randomzama.new

#発言する
#puts Twitter.home_timeline.first.text
Twitter.update(z.zamaha)

