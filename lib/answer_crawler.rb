require 'nokogiri'
require 'httparty'
require_relative 'answer_crawler/helpers'
require_relative 'answer_crawler/web_layer'
require_relative 'answer_crawler/parser'
require_relative 'answer_crawler/crawler'

begin
    crawler = Crawler.new
    answer = crawler.get_answer
    puts "Resposta: #{answer}"
rescue => exception
    puts exception.full_message
end
