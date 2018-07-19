Rails.application.routes.draw do
  resources :filmes
  resources :generos
  namespace :api do
      resources :filmes, only: [:index], :path => 'lista_de_filmes'
  end

  #match 'api/lista_de_filmes' => 'api#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
