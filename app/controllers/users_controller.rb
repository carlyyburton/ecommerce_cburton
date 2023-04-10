class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def create
    @users = User.new(params[:user])
  end

  def show
    @users = User.find(params[:id])
  end

  def edit; end
end
