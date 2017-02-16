# -*- coding: utf-8 -*-
require 'nokogiri'
require 'open-uri'

url = 'http://www.anitube.se/rss/new'
xml = open(url).read

doc = Nokogiri::XML(xml)

items = doc.xpath('//rss/channel/item')
items.each { |item|
	#タイトルの表示
	puts item.xpath('title').text
}