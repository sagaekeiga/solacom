# -*- coding: utf-8 -*-
require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.current_driver = :selenium
Capybara.app_host = "https://affiliate.amazon.co.jp/"
Capybara.default_max_wait_time = 5

module Crawler
    class Amazon
        include Capybara::DSL
        
        def login
            visit('')
            fill_in "username",
             :with => 'sagae5.28rujeae@gmail.com'
            fill_in "password",
             :with => 's19930528'
            click_button "サインイン"
        end
    end
end

crawler = Crawler::Amazon.new
crawler.login
