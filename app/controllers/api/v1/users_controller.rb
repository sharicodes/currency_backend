class Api::V1::UsersController < ApplicationController
  # before_action :find_user, only: [:update]
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)
    render json: @user, status: :ok

  end

  def show
    # byebug
    # if params[:id] == id
      @user = User.find_by(email: params[:email])
      # byebug

      render json: @user
    # end
  end


  def destroy
    user = User.find(params[:id])
    user.destroy
    head :no_content, status: :ok
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :email, :password)
  end
end
