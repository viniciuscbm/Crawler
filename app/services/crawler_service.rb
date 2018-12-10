# frozen_string_literal: true

require "nokogiri"
require "restclient"

class CrawlerService
  def initialize(tag_params)
    @url = "http://quotes.toscrape.com/tag/#{tag_params}"
  end

  def perform
    doc = Nokogiri::HTML(RestClient.get(@url))

    # Rails.logger.info(div.at('span').text)
    # Rails.logger.info(div.at('span small').text)
    # Rails.logger.info(div.at('span a')['href'])
    # Rails.logger.info(div.at('div.tags > a').text)
    # Rails.logger.info('')

    # 'div.col-md-8 > div.quote > span.text', 'div.col-md-8 > div.quote > span > small',
    # 'div.col-md-8 > div.quote > span > a', 'div.col-md-8 > div.quote > div.tags > a'

    doc.search("div.col-md-8 > div.quote").each do |body|
      Rails.logger.info(body)
      # Rails.logger.info(div.at('span').text)
      # Rails.logger.info(div.at('span small').text)
      # Rails.logger.info(div.at('span a')['href'])
      # Rails.logger.info(div.at('div.tags > a').text)
			Rails.logger.info("")
			# Tag.create(name: tag)
    end

    Quote.new(quote: @url)
  end
end
