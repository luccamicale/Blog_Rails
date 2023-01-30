Rails.application.routes.draw do
  root 'users#index'
  resource :users, only: %i[index show] do
    resource :posts, only: %i[index show] do
      # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

      # Defines the root path route ("/")
      # root "articles#index"
    end
  end
end
