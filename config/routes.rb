Rails.application.routes.draw do
  resources :products
  get 'top/index'

  get 'password_resets/new'

  get 'password_resets/edit'

  resources :materials
  resources :orders
  get 'users/new'
  resources :users

  root 'top#index'

  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :account_activations, only: [:edit]

#  get 'static_pages/help'
#  get 'static_pages/about'
#  get 'static_pages/contact'

  #root 'application#hello'

  get 'login/index'
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
