Rails.application.routes.draw do

  devise_for :users
  resources :listings do
    resources :orders, only: [:new, :create]
  end

  get 'pages/about'
  get 'pages/contact'

  root 'listings#index'
  get 'seller' => 'listings#seller'
  get 'sales' => 'orders#sales'
  get 'purchases' => 'orders#purchases'

end
