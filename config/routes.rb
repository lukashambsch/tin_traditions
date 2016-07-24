Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => 'callbacks' }
  resources :tins
  resources :gift_entries
  root 'tins#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end