Rails.application.routes.draw do
  namespace :admin do
    resources :orders
    resources :materials
  end

  resources :products
  get '/my_products', to: 'products#my_index'
  get '/my_products/:id', to: 'products#my_show'
  get 'top/index'

  get 'password_resets/new'

  get 'password_resets/edit'

  resources :orders do
    collection do
      post :confirm
    end
  end
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
