# config/routes.rb
Rails.application.routes.draw do
  resources :boards do
    resources :todos
  end

  resources :todos do
    resources :items
  end

  resources :todos, only: [:show, :index]
end