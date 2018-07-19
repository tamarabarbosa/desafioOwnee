Rails.application.routes.draw do
  resources :filmes
  resources :generos

  namespace :api do
    ## lista_de_filmes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
