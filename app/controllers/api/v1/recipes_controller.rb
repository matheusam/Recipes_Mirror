class Api::V1::RecipesController < ApplicationController
require 'net/http'

  def index
    byebug
    http = Net::HTTP.get('localhost', '3000', '/api/v1/recipes')
    http.use_ssl = true

    request = Net::HTTP::Post.new(uri.path, {'Content-Type' => 'application/json'})

    request.body = {} # SOME JSON DATA

    response = http.request(request)
    @recipes = GET 'localhost:3000/api/v1/recipes'
    render status: 200
  end
end
