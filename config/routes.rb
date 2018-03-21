Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/welcome", to: "pages#welcome"
  get "/finish_game", to: "pages#finish_game"
  get "/admin", to: "pages#admin"
  resources :competences, only: [ :index, :show ]
  resources :questions, only: [ :show ]
  resources :user_answers, only: [ :create, :update]
  resources :games, only: [ :new, :create, :show ] do
    resources :questions, only: [ :new, :create ]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
