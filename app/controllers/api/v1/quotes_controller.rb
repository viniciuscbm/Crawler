# frozen_string_literal: true

module Api::V1
  class QuotesController < ApiController
    def index
      tag = params[:tags].downcase
      render json: Tag.where(name: tag).exists? ? Quote.where(:tags.in => [tag]) : CrawlerService.new(tag).perform
    end
  end
end
