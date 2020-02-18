Rails.application.routes.draw do
  devise_for :users
  get 'events/index', to: 'events#index'
  get 'events/secret'
  root to: "events#index"
  get 'events/new', to: 'events#new'
end
