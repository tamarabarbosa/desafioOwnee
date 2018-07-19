Rails.application.routes.draw do
  resources :filmes
  resources :generos
  namespace :api do
      resources :filmes, only: [:index], :path => 'lista_de_filmes'
  end
end
