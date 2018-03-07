Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :ingredients, only: [:index, :show] do
    resources :farms, only: :show
  end

  resources :restaurants, only: [] do
  end

  resources :orders, only: [:new, :show, :create]

  resources :shopping_baskets, only: [] do
    resources :payments, only: [:create]
  end

  get '/checkout', to: "shopping_baskets#show", as: :checkout

end
