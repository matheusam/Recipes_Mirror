class RecipesController < ApplicationController
  require 'net/http'

  def index
    uri = URI('http://localhost:3000/api/v1/recipes')
    @recipes = Net::HTTP.get(uri)
  end
end
