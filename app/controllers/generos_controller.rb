class GenerosController < ApplicationController
  before_action :set_genero, only: [:show, :edit, :update, :destroy]

  # GET /generos
  # GET /generos.json
  def index
    @generos = Genero.all
  end

  # GET /generos/1
  # GET /generos/1.json
  def show
    @filmes = Filme.all
  end

  # GET /generos/new
  def new
    @genero = Genero.new
  end

  # GET /generos/1/edit
  def edit
  end

  # POST /generos
  # POST /generos.json
  def create
    def updatable_by?(user)
      resource.author == user || user.has_role?(:admin)
    end

    @genero = Genero.new(genero_params)

    respond_to do |format|
      if @genero.save
        format.html { redirect_to @genero, notice: 'Genero was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /generos/1
  # PATCH/PUT /generos/1.json
  def update
    def updatable_by?(user)
      resource.author == user || user.has_role?(:admin)
    end

    respond_to do |format|
      if @genero.update(genero_params)
        format.html { redirect_to @genero, notice: 'Genero was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /generos/1
  # DELETE /generos/1.json
  def destroy

    #def updatable_by?(user)
    #  resource.author == user || user.has_role?(:admin)
    #end

    @genero.destroy
    respond_to do |format|
      format.html { redirect_to home_index_path, notice: 'Genero was successfully destroyed.' }
    end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genero
      @genero = Genero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genero_params
      params.require(:genero).permit(:nome)
    end
end
