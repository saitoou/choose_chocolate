require 'rails_helper'

RSpec.describe "PassWordResets", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/pass_word_resets/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/pass_word_resets/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/pass_word_resets/update"
      expect(response).to have_http_status(:success)
    end
  end

end
