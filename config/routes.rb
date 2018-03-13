Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/welcome", to: "pages#welcome"
  get "/finish_game", to: "pages#finish_game"
  resources :competences, only: [ :index, :show ]
  resources :questions, only: [ :show ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
