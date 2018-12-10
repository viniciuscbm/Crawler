# frozen_string_literal: true

module Api::V1
  class QuotesController < ApiController
    def index
      tag = params[:tags].downcase

      if Tag.where(name: tag).exists?
        render json: Quote.where(:tags.in => [tag]), each_serializer: QuoteSerializer
      else 
        render json: CrawlerService.new(tag).perform, each_serializer: QuoteSerializer
      end
    end
  end
end
