# frozen_string_literal: true

module Api::V1
	class QuotesController < ApiController
		before_action :set_quotes

		def index
			render json: @quotes
		end
		
		private

		def set_quotes
			@quotes = Quote.where(:tags.in => [params[:tags]])
		end

		def quote_params
			params.permit(:tags)
		end

  end
end