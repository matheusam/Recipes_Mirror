class RecipesController < ApplicationController
  require 'net/http'

  def index
    uri = URI('http://localhost:3000/api/v1/recipes')
    res = Net::HTTP.get(uri)
    @recipes = JSON.parse(res)
    @recipes.each do |recipe|
      recipe_type = recipe['recipe_type_id']
      uri = URI("http://localhost:3000/api/v1/recipe_types/#{recipe_type}")
      recipe_type = Net::HTTP.get(uri)
      cuisine = recipe['cuisine_id']
      uri = URI("http://localhost:3000/api/v1/cuisines/#{cuisine}")
      cuisine = Net::HTTP.get(uri)
      recipe['recipe_type'] = recipe_type
      recipe['cuisine'] = cuisine
    end
  end
end
