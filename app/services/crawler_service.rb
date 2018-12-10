# frozen_string_literal: true

require "nokogiri"
require "restclient"

class CrawlerService
	def initialize(tag_params)
		@tag = tag_params
    @url = "http://quotes.toscrape.com/tag/#{tag_params}"
  end

  def perform
		doc = Nokogiri::HTML(RestClient.get(@url))
		
		quotes = doc.css('.quote').map do |q|
			h = {
				quote: q.css('.text').first.content,
				author: q.css('span small.author').text,
				author_about: q.css('span a').first['href'],
				tags: q.css('.tags a').map { |tag| tag.text}
			}
		end
		
		Tag.create!(name: @tag)
		Quote.create!(quotes)
  end
end
