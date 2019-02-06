class RecipesController < ApplicationController
  require 'net/http'

  def index
    uri = URI('http://localhost:3000/api/v1/recipes')
    res = Net::HTTP.get(uri)
    @recipes = JSON.parse(res)
  end

  def show
    uri = URI("http://localhost:3000/api/v1/recipes/#{params[:id]}")
    res = Net::HTTP.get(uri)
    @recipe = JSON.parse(res)
    @recipe_type = set_recipe_type(@recipe['recipe_type_id'])
    @cuisine = set_cuisine(@recipe['cuisine_id'])
  end

  def destroy
    url = 'http://localhost:3000'
    urn = "/api/v1/recipes/#{{ recipe: params[:id], user: 1 }}")
    Net::HTTP.new(url).delete(urn)
  end

  private

  def set_recipe_type(parameter)
    uri = URI("http://localhost:3000/api/v1/recipe_types/#{parameter}")
    recipe_type = Net::HTTP.get(uri)
  end

  def set_cuisine(parameter)
    uri = URI("http://localhost:3000/api/v1/cuisines/#{parameter}")
    cuisine = Net::HTTP.get(uri)
  end
end
