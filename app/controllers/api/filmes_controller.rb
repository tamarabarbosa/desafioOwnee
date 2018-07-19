class Api::FilmesController < ApplicationController

  def index
    @filmes = Filme.all

    respond_to do |format|
      format.json { render :json => @filmes.to_json, :status => :ok }
    end
  end

end
