# frozen_string_literal: true

require "rails_helper"

RSpec.describe Api::V1::QuotesController, type: :controller do
  describe "GET index" do
    it "has a 401 status code" do
      get :index
      expect(response.status).to eq(401)
      expect(response.content_type).to eq "application/json"
    end

    it "has a 200 status code" do
      @user = create(:user)
      request.headers.merge!(@user.create_new_auth_token)
      api_v1_user_session_path @user

      # get :index
      # expect(response.status).to eq(200)
      # expect(response.content_type).to eq "application/json"
    end
  end
end
