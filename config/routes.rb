Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :products, only: [:index, :show]
  # resources :profiles, only: [:new]
  get 'diagnostic', to: 'profiles#diagnostic'
  get 'results', to: 'profiles#results'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
