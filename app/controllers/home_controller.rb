class HomeController < ApplicationController

  def index
    respond_to do |format|
      if !current_user
        format.html { redirect_to root_path, alert: 'Você precisa logar para acessar essa página' }
      else
        format.html
      end
      @generos = Genero.all
      @filmes = Filme.all
    end
  end

end
