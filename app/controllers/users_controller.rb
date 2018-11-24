class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def new
    @user = User.new(user_params)
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: {errors: @user.errors.full_messages}
    end
  end

  def sign_in
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      render json: {name: @user.name, email: @user.email, apartment_no: @user.apartment_no, building_id: @user.building_id}
    else
      render json: {error: 'Invalid username or password'}, status: 400
    end
  end

  def validate
    user = User.find_by(name: request.headers['Authorization'])
    if user
      render json: {name: @user.name, email: @user.email, apartment_no: @user.apartment_no, building_id: @user.building_id}
    else
      render json: {error: 'User not found.'}, status: 400
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :apartment_no, :building_id)
  end
end
