require 'rails_helper'
describe 'Get all recipes' do
    it "Only permited keys" do
      pending
      get 'http://localhost:3000/api/v1/recipes'

      expect(response).to have_http_status_code(:ok)
    end
  end
