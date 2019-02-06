Rails.application.routes.draw do
  root to: 'recipes#index'
  resources :recipes, only: %i[index show destroy]
  # get '/recipes/search/:id', to: 'recipes#show', as: 'recipes_search'

  # get 'recipes', to: 'recipes#index'
  # get 'show_recipe/:id', to: 'recipes#show'
  # put 'recipes/(.:format)', to: 'recipes#update'
  # post 'recipes/new(.:format)', to: 'recipes#create'
  # delete 'recipes/(.:format)', to: 'recipes#destroy'
end
