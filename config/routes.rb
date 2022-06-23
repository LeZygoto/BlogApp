Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to:'blogs#index'

  resources :blogs, except: [:delete, :edit, :update]

  # Defines the root path route ("/")
  # root "articles#index"
end
