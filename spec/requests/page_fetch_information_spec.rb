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
      pending
      uri = URI('http://localhost:3000/api/v1/recipes')
      recipes = Net::HTTP.get(uri)

       expect(response.body).to have_content(recipes[0]['title'])
    end
  end
end
