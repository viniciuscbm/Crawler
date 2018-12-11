# frozen_string_literal: true

require "rails_helper"

RSpec.describe Api::V1::QuotesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "api/v1/quotes").to route_to("api/v1/quotes#index")
    end
  end
end
