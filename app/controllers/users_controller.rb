
# -*- encoding : utf-8 -*-

class UsersController < ApplicationController
  before_action :authenticate_user!

  load_and_authorize_resource
  check_authorization

  before_action :set_user , only:[:show, :edit, :destroy, :update]

  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def show
    if params[:id]
      @users = User.find(params[:id])
    else
      @users = current_user
    end
  end

  def create
    @users = User.new(user_params)
    respond_to do |format|
      if @users.save
        format.html { redirect_to users_path, notice: 'Usuário Cadastrado com sucesso' }
      else
        format.html { render :new }
      end
    end
  end


  def destroy
    @users.destroy
    respond_to do |format|
      format.html { redirect_to users_path, notice: 'Deletado com sucesso' }
    end
  end

  def update
    respond_to do |format|
      if @users.update(user_params)
        format.html { redirect_to users_path, notice: 'Alteração realizada com sucesso' }
      else
        format.html { render :new }
      end
    end
  end

  private
  def set_user
    @users = User.find(params[:id])
  end

  def user_params
    params.fetch(:user, {}).permit(:nome,:username, :password)
    #Ao invés de utilizar params.require, utilize params.fetch
    #Esse problema é intrínseco ao Rails e é solucionado com o fetch
  end
end
