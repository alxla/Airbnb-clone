Rails.application.routes.draw do
  devise_for :users

  resources :universes, only: [:index, :show]
  resources :messages

  # get    "universes",          to: "universes#index"
  # get    "universes/:id",      to: "universes#show"

  root to: 'universes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
