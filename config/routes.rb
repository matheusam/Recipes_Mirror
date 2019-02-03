Rails.application.routes.draw do
  root to: 'recipes#index'
  namespace 'api', defaults: { format: :json } do
    namespace 'v1' do
      get 'recipes', to: 'recipes#index'
      # get 'recipes/:id', to: 'recipes#show'
      # put 'recipes/(.:format)', to: 'recipes#update'
      # post 'recipes/new(.:format)', to: 'recipes#create'
      # delete 'recipes/(.:format)', to: 'recipes#destroy'
    end
  end
end
