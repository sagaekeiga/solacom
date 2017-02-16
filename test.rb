require 'open-uri'
require 'nokogiri'
require 'anemone'


#doc = Nokogiri.HTML(open("http://nokogiri.org/"))
doc = Nokogiri.HTML(open("http://www.city.maebashi.gunma.jp/sisei/534/002/p010487.html"))

# ページに含まれるリンクを出力する
# miomio名探偵コナン
doc.css('tbody').each do |element|
  puts element
end


