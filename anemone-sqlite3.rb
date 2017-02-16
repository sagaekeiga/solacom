# -*- coding: utf-8 -*-
require 'anemone'

urls = []
urls.push("http://www.city.maebashi.gunma.jp/sisei/534/002/p010487.html")

opts = {
	:obey_robots_txt => true,
	:depth_limit => 0,
	:delay => 5
}

Anemone.crawl(urls, opts) do |anemone|
	anemone.on_every_page do |page|
		puts page.url
		puts page.doc.css('tbody').to_s
	end
end