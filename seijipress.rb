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



#　↓明日、調整します。


# 文字コードをUTF8に設定
connection = Mysql::connect("hostname", "username", "password", "dbname")

# # 文字コードをUTF8に設定
connection.query("set character set utf8")

# DBに問い合わせ
rs = connection.query("SELECT * FROM users")

# 取得データを保存
connection.query("INSERT INTO テーブル名 VALUES(値1, 値2, ...)")

#取得データを更新
connection.query("UPDATE テーブル名 SET カラム名1 = 値1, カラム名2 = 値2, ... WHERE 条件式")

# コネクションを閉じる
connection.close