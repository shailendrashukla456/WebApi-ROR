Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # get 'articles/index'
      # get 'articles/show/id'
      #get 'articles/:id', to: 'articles#show'
      # get 'articles/create'
      # get 'articles/update'
      # get 'articles/destroy'
     resources :articles
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
