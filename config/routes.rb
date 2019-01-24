Rails.application.routes.draw do

#   resources :orders#, only: [:index, :show]
  resources :items, only: [:index, :show, :add]
  resources :users, only: [:new, :create, :edit, :update, :show]
  resources :orders, only: [:new, :create]
  #resources :sessions

#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#post "/orders/:id", to: "orders#show", as: "order-placed"

  get "/items" => "items#index", :as => "root"

  get '/login', to: 'sessions#new', as: "login"
  post '/sessions', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy', as: 'logout'
  patch '/items/:id/add', to: "items#add"

  get "/cart", to: "orders#cart", as: "cart"
  delete "/cart/item/:id/delete", to: "orders#destroy_item"

  get "/orders/placed", to: "orders#placed"


  get "/users/:id/profile", to: 'users#show', as: 'profile'
end
