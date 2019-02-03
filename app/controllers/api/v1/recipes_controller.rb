class Api::V1::RecipesController < ApplicationController
  def index
    @recipes = GET 'localhost:3000/api/v1/recipes'
    render status: 200
  end
end
