require 'rails_helper'

RSpec.describe "Mypages", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/mypages/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/mypages/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
