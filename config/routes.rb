Rails.application.routes.draw do
  devise_for :users
  resources :generos
  resources :filmes
  namespace :api do
      resources :filmes, only: [:index], :path => 'lista_de_filmes'
  end
  get '/home' => 'home#index', as: :home_index
  root 'home#index'
end
