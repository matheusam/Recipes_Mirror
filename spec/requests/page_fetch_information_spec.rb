require 'rails_helper'
RSpec.describe Api::V1::RecipesController do

  describe "GET index" do
    before do
      get root_path
    end

    it "http success" do
      expect(response).to have_http_status(:success)
    end

    it "html body contains expected recipe attributes" do
      expect(response.body).to have_content(%w[id difficulty cook_time])
    end
  end
end
