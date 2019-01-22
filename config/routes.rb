Rails.application.routes.draw do

#   resources :orders#, only: [:index, :show]
  resources :items, only: [:index, :show, :add]
  resources :users, only: [:new, :create]
  resources :orders, only: [:create, :show]
  #resources :sessions

#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/items" => "items#index", :as => "root"

  get '/login', to: 'sessions#new', as: "login"
  post '/sessions', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy', as: 'logout'
  patch '/items/:id/add', to: "items#add"

  get "/cart", to: "orders#cart", as: "cart"
end
