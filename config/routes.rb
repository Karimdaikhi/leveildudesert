Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :products, only: [:show, :update]
  post '/profile_photo', to: 'profiles#profile_photo'
  get '/diagnostic', to: 'profiles#diagnostic', as: :diagnostic
  patch '/profile_complete', to: 'profiles#update'
  get '/results', to: 'profiles#results'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
