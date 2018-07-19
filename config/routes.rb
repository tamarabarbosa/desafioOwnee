Rails.application.routes.draw do
  devise_for :users
  resources :filmes
  resources :generos
  namespace :api do
      resources :filmes, only: [:index], :path => 'lista_de_filmes'
  end
end
